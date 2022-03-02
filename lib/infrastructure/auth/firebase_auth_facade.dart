import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fortfolio/domain/core/value_objects.dart';
import 'package:injectable/injectable.dart';

import 'package:fortfolio/domain/auth/auth_failure.dart';
import 'package:fortfolio/domain/auth/auth_user_model.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:fortfolio/infrastructure/auth/firebase_user_mapper.dart';
import 'package:fortfolio/infrastructure/core/firestore_helpers.dart';

import 'dto/auth_user_model_dto.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firestore;

  FirebaseAuthFacade(
      {required this.firestore,
      required this.firebaseAuth});

  @override
  // TODO: implement authStateChanges
  Stream<AuthUserModel> get authStateChanges {
    return firebaseAuth.authStateChanges().map(
      (User? user) {
        if (user == null) {
          // The user is signed out
          return AuthUserModel.empty();
        } else {
          // The user is logged in
          return user.toDomain();
        }
      },
    );
  }

  @override
  Stream<AuthUserModel> databaseUserChanges({required String userId}) {
    final Stream<DocumentSnapshot> snapshots =
        firestore.authUserCollection.doc(userId).snapshots();

    return snapshots.map((e) {
      //Sometimes the stream may emit a doc with a null data when a user signs
      //out. This causes an exception when paring the user's document's data.
      if (e.data() == null) {
        return AuthUserModel.empty();
      }

      final user = AuthUserModelDto.fromFirestore(e).toDomain();
      return user;
    });
  }

  // @override
  // Future<Option<AuthUserModel>> getSignedInUser() {
  //   // TODO: implement getSignedInUser
  //   throw UnimplementedError();
  // }

  @override
  Future<Either<AuthFailure, Unit>> loginWithEmailAndPassword({required EmailAddress emailAddress, required Password password}) async{
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: emailAddressString, password: passwordString).then((cred) => getDatabaseUser(id: cred.user!.uid));
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Stream<Either<AuthFailure, String>> registerPhoneNumber({required Phone phoneNumber, required Duration timeout}) async* {
    final StreamController<Either<AuthFailure, String>> streamController =
        StreamController<Either<AuthFailure, String>>();

    await firebaseAuth.verifyPhoneNumber(
        timeout: timeout,
        phoneNumber: phoneNumber.getOrCrash(),
        verificationCompleted: (PhoneAuthCredential credential) async {
          // ANDROID ONLY!
          firebaseAuth.currentUser!.linkWithCredential(credential);
          // link with the auto-generated credential.
        },
        codeSent: (String verificationId, int? resendToken) async {
          // Update the UI - wait for the user to enter the SMS code
          streamController.add(right(verificationId));
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          // Auto-resolution timed out...
          streamController.add(left(const AuthFailure.smsTimeout()));
        },
        verificationFailed: (FirebaseAuthException e) {
          late final Either<AuthFailure, String> result;

          if (e.code == 'invalid-phone-number') {
            result = left(const AuthFailure.invalidPhoneNumber());
          } else if (e.code == 'too-many-requests') {
            result = left(const AuthFailure.tooManyRequests());
          } else if (e.code == 'app-not-authorized') {
            result = left(const AuthFailure.deviceNotSupported());
          } else {
            result = left(const AuthFailure.serverError());
          }
          streamController.add(result);
        });

    yield* streamController.stream;
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({required EmailAddress emailAddress, required Password password, required Phone phone, required UserName firstName, required UserName lastName}) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    final phoneNumber = phone.getOrCrash();
    const timeout = Duration(seconds: 60);
    final fName = firstName.getOrCrash();
    final lName = lastName.getOrCrash();
    var displayName = "${fName[0]}${lName[0]}";
    try {
      await firebaseAuth
          .createUserWithEmailAndPassword(
              email: emailAddressString, password: passwordString)
          .then((value) async {
        await firestore.authUserCollection
            .doc(firebaseAuth.currentUser!.uid)
            .update({
          "email": emailAddressString,
          "phoneNumber": phoneNumber,
          "firstName": firstName.getOrCrash(),
          "lastName": lastName.getOrCrash(),
          "balance": 0,
          "createdat": DateTime.now(),
          "isVerified": false,
          "id": UniqueId.fromUniqueString(value.user!.uid),
          "displayName": displayName
        }).then((_) {
          registerPhoneNumber(phoneNumber: Phone(phoneNumber), timeout: timeout);
        });
      });
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> resetPassword({required EmailAddress emailAddress}) async {
    final email = emailAddress.getOrCrash();
    try {
      await firebaseAuth.sendPasswordResetEmail(email: email);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "auth/invalid-email") {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Option<Unit>> saveUserToDatabase({required AuthUserModel userModel}) async {
    print(userModel);
    try {
      firestore.authUserCollection
          .doc(firebaseAuth.currentUser!.uid)
          .set(AuthUserModelDto.fromDomain(userModel).toJson());
      return some(unit);
    } catch (e) {
      print("saveUserToDatabase error: $e");
      return none();
    }
  }

  @override
  Stream<Either<AuthFailure, String>> signInWithPhoneNumber({required Phone phoneNumber, required Duration timeout}) async* {
    final StreamController<Either<AuthFailure, String>> streamController =
        StreamController<Either<AuthFailure, String>>();

    await firebaseAuth.verifyPhoneNumber(
        timeout: timeout,
        phoneNumber: phoneNumber.getOrCrash(),
        verificationCompleted: (PhoneAuthCredential credential) async {
          firebaseAuth.signInWithCredential(credential);
        },
        codeSent: (String verificationId, int? resendToken) async {
          // Update the UI - wait for the user to enter the SMS code
          streamController.add(right(verificationId));
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          // Auto-resolution timed out...
          streamController.add(left(const AuthFailure.smsTimeout()));
        },
        verificationFailed: (FirebaseAuthException e) {
          late final Either<AuthFailure, String> result;

          if (e.code == 'invalid-phone-number') {
            result = left(const AuthFailure.invalidPhoneNumber());
          } else if (e.code == 'too-many-requests') {
            result = left(const AuthFailure.tooManyRequests());
          } else if (e.code == 'app-not-authorized') {
            result = left(const AuthFailure.deviceNotSupported());
          } else {
            result = left(const AuthFailure.serverError());
          }
          streamController.add(result);
        });

    yield* streamController.stream;
  }

  @override
  Future<void> signOut() async => await firebaseAuth.signOut();

  @override
  Future<Either<AuthFailure, Unit>> verifySmsCode({required String smsCode, required String verificationId}) async {
    try {
      final PhoneAuthCredential phoneAuthCredential =
          PhoneAuthProvider.credential(
              smsCode: smsCode, verificationId: verificationId);

      await firebaseAuth.signInWithCredential(phoneAuthCredential);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "session-expired") {
        return left(const AuthFailure.sessionExpired());
      } else if (e.code == "invalid-verification-code" ||
          e.code == "invalid-verification-code") {
        return left(const AuthFailure.invalidVerificationCode());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> verifyUser() async => await firebaseAuth.currentUser!.sendEmailVerification();

  @override
  Future<Either<AuthFailure, Unit>> signInAnonymously() async {
    try {
      ///Sign in anonymously with Firebase Auth
      await firebaseAuth.signInAnonymously();
      return right(unit);
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<AuthUserModel>> getDatabaseUser({required String id}) async {
    try {
      final DocumentSnapshot snapshot =
          await firestore.authUserCollection.doc(id).get();
      if (snapshot.exists) {
        print("authh getDatabaseUser EXISTS snapshot: ${snapshot.data()}");
        return some(AuthUserModelDto.fromFirestore(snapshot).toDomain());
      } else {
        print("authh getDatabaseUser DOES NOT EXIST");
        return none();
      }
    } catch (e) {
      log("authh Error $e on getDatabaseUser");
      return none();
    }
  }

  @override
  Future<Option<AuthUserModel>> getDatabaseUserWithPhoneNumber(
      {required String phoneNumber}) async {
    try {
      final query = await firestore.authUserCollection
          .where("phoneNumber", isEqualTo: phoneNumber)
          .get();
      if (query.docs.isNotEmpty && query.docs[0].exists) {
        final doc = query.docs[0];
        return some(AuthUserModelDto.fromFirestore(doc).toDomain());
      } else {
        print("authh getDatabaseUserWithPhoneNumber DOES NOT EXIST");
        return none();
      }
    } on FirebaseException catch (e) {
      log("authh Error $e on getDatabaseUserWithPhoneNumber");
      return none();
    }
  }

  @override
  String getUserId() => firebaseAuth.currentUser!.uid; 

}
