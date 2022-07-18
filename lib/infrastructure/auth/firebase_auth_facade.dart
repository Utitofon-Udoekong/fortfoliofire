import 'dart:async';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fortfolio/domain/auth/auth_failure.dart';
import 'package:fortfolio/domain/auth/auth_user_model.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:fortfolio/infrastructure/auth/firebase_user_mapper.dart';
import 'package:fortfolio/infrastructure/core/firestore_helpers.dart';
import 'package:injectable/injectable.dart';
import 'package:jiffy/jiffy.dart';
import 'package:uuid/uuid.dart';

import 'dto/auth_user_model_dto.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firestore;

  FirebaseAuthFacade({required this.firestore, required this.firebaseAuth});

  @override
  Stream<AuthUserModel> get authStateChanges {
    return firebaseAuth.authStateChanges().map(
      (User? user) {
        if (user == null) {
          // The user is signed out
          return AuthUserModel.empty();
        } else {
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

  @override
  Future<Either<String, String>> loginWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: emailAddressString, password: passwordString);
      return right("Login successful");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return left("Invalid email and password combination");
      } else {
        return left("Encountered a server error");
      }
    }
  }

  @override
  Stream<Either<String, String>> registerPhoneNumber(
      {required String phoneNumber, required int timeout}) async* {
    final StreamController<Either<String, String>> streamController =
        StreamController<Either<String, String>>();
    
    await firebaseAuth.verifyPhoneNumber(
        timeout: Duration(seconds: timeout),
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          // ANDROID ONLY!
          print("phone login complete");
          // link with the auto-generated credential.
        },
        codeSent: (String verificationId, int? resendToken) async {
          // Update the UI - wait for the user to enter the SMS code
          streamController.add(right(verificationId));
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          // Auto-resolution timed out...
          // streamController.add(left("SMS Code timeout"));
        },
        verificationFailed: (FirebaseAuthException e) {
          // late final Either<String, String> result;

          // if (e.code == 'invalid-phone-number') {
          //   result = left("Invalid phone number");
          // } else if (e.code == 'too-many-requests') {
          //   result = left("Too many requests at a time");
          // } else if (e.code == 'app-not-authorized') {
          //   result = left("Device not supported");
          // } else if (e.code == 'network-request-failed') {
          //   result = left("Device has a weak network");
          // } else {
          //   result = left("Server error encountered");
          // }
          streamController.add(left("${e.code}"));
        });

    yield* streamController.stream;
  }

  @override
  Future<Either<String, String>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress,
      required Password password,
      required UserName firstName,
      required UserName lastName}) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    final fName = firstName.getOrCrash().toUpperCase();
    final lName = lastName.getOrCrash().toUpperCase();
    var displayName = "${fName[0]}${lName[0]}";
    var uuid = const Uuid().v4().substring(0, 7);
    try {
      await firebaseAuth
          .createUserWithEmailAndPassword(
              email: emailAddressString, password: passwordString)
          .then((value) async {
        AuthUserModel authUserModel = AuthUserModel(
            email: emailAddressString,
            phoneNumber: "+123456",
            firstName: fName,
            lastName: lName,
            balance: 0,
            createdat: DateTime.now(),
            isVerified: false,
            isAccountActive: true,
            id: uuid,
            status: 'Enabled',
            displayName: displayName);
        log(authUserModel.toString());
        await firebaseAuth.currentUser!.updateDisplayName(displayName);
        await saveUserToDatabase(
            userModel: authUserModel, uid: value.user!.uid);
      });
      return right("Registration successful");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left("Email address already in use");
      } else if (e.code == 'operation-not-allowed') {
        return left("Operation is not permitted at the moment");
      } else {
        return left("Encountered a server error");
      }
    }
  }

  @override
  Future<Either<String, String>> resetPassword(
      {required EmailAddress emailAddress}) async {
    final email = emailAddress.getOrCrash();
    try {
      await firebaseAuth.sendPasswordResetEmail(email: email);
      return right("Successful. Check your mail for a link to reset");
    } on FirebaseAuthException catch (e) {
      if (e.code == "auth/invalid-email") {
        return left("Invalid email address");
      } else {
        return left("Encountered a server error.");
      }
    }
  }

  @override
  Future<Option<String>> saveUserToDatabase(
      {required AuthUserModel userModel, required String uid}) async {
    log(userModel.toString());
    try {
      await firestore.authUserCollection
          .doc(uid)
          .set(AuthUserModelDto.fromDomain(userModel).toJson());
      return some("Registration successful");
    } catch (e) {
      log("saveUserToDatabase error: $e");
      return none();
    }
  }

  @override
  Stream<Either<String, String>> signInWithPhoneNumber(
      {required String phoneNumber, required int timeout}) async* {
    final StreamController<Either<String, String>> streamController =
        StreamController<Either<String, String>>();

    await firebaseAuth.verifyPhoneNumber(
        timeout: Duration(seconds: timeout),
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          // firebaseAuth.signInWithCredential(credential);
        },
        codeSent: (String verificationId, int? resendToken) async {
          // Update the UI - wait for the user to enter the SMS code
          streamController.add(right(verificationId));
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          // Auto-resolution timed out...
          // streamController.add(left("SMS code timeout"));
        },
        verificationFailed: (FirebaseAuthException e) {
          late final Either<String, String> result;

          if (e.code == 'invalid-phone-number') {
            result = left("Invalid phone number");
          } else if (e.code == 'too-many-requests') {
            result = left("Too many requests at this time");
          } else if (e.code == 'app-not-authorized') {
            result = left("Device not supported ");
          } else {
            result = left("${e.code} Server error encountered");
          }
          streamController.add(result);
        });

    yield* streamController.stream;
  }

  @override
  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  @override
  Future<Either<String, String>> verifyRegistrationSmsCode(
      {required String smsCode, required String verificationId, required String phoneNumber}) async {
    try {
      final PhoneAuthCredential phoneAuthCredential =
          PhoneAuthProvider.credential(
              smsCode: smsCode, verificationId: verificationId);
      await firestore.authUserCollection
              .doc(firebaseAuth.currentUser!.uid)
              .update({"phoneNumber": phoneNumber});
      await firebaseAuth.currentUser!.linkWithCredential(phoneAuthCredential);
      return right("Verification successful");
    } on FirebaseAuthException catch (e) {
      if (e.code == "session-expired") {
        return left("Session expired");
      } else if (e.code == "invalid-verification-code" ||
          e.code == "invalid-verification-code") {
        return left("Invalid verification code");
      }
      return left("Server error encountered");
    }
  }
  @override
  Future<Either<String, String>> verifyLoginSmsCode(
      {required String smsCode, required String verificationId}) async {
    try {
      final PhoneAuthCredential phoneAuthCredential =
          PhoneAuthProvider.credential(
              smsCode: smsCode, verificationId: verificationId);
      await firebaseAuth.signInWithCredential(phoneAuthCredential);
      return right("Verification successful");
    } on FirebaseAuthException catch (e) {
      if (e.code == "session-expired") {
        return left("Session expired");
      } else if (e.code == "invalid-verification-code" ||
          e.code == "invalid-verification-code") {
        return left("Invalid verification code");
      }
      return left("Server error encountered");
    }
  }

  @override
  Future<Either<String,String>> verifyPhoneUpdate(
      {required String smsCode, required String verificationId, required String phoneNumber}) async {
    try {
      final PhoneAuthCredential phoneAuthCredential =
          PhoneAuthProvider.credential(
              smsCode: smsCode, verificationId: verificationId);
      await firestore.authUserCollection
              .doc(firebaseAuth.currentUser!.uid)
              .update({"phoneNumber": phoneNumber});
      await firebaseAuth.currentUser!.updatePhoneNumber(phoneAuthCredential);
      return right("Phone number updated");
    } on FirebaseAuthException catch (e) {
      if (e.code == "session-expired") {
        return left("Session expired");
      } else if (e.code == "invalid-verification-code" ||
          e.code == "invalid-verification-code") {
        return left("Invalid verification code");
      }
      return left("Server error encountered");
    }
  }

  @override
  Future<void> verifyUser() async =>
      await firebaseAuth.currentUser!.sendEmailVerification();

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
        log("authh getDatabaseUser EXISTS snapshot: ${snapshot.data()}");
        return some(AuthUserModelDto.fromFirestore(snapshot).toDomain());
      } else {
        log("authh getDatabaseUser DOES NOT EXIST");
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
        log("authh getDatabaseUserWithPhoneNumber DOES NOT EXIST");
        return none();
      }
    } on FirebaseException catch (e) {
      log("authh Error $e on getDatabaseUserWithPhoneNumber");
      return none();
    }
  }

  @override
  String getUserId() => firebaseAuth.currentUser!.uid;

  @override
  Future<Either<String, String>> updateEmail({required String newEmail}) async {
    try {

      await firebaseAuth.currentUser!.updateEmail(newEmail).then((_) async {
        await firestore.authUserCollection
            .doc(firebaseAuth.currentUser!.uid)
            .update({"email": newEmail});
      });
        return right("Email verification sent");
    } on FirebaseException catch (e) {
      switch (e.code) {
        case "invalid-email":
          return left("Invalid email address");
        case "email-already-in-use":
          return left("Email already in use");
        case "requires-recent-login":
          return left("Login again to continue");
        default:
          return left("Server Error encounteres");
      }
    }
  }


  @override
  Future<Either<String,String>> updateName(
      {required String firstName, required String lastName}) async {
    var displayName = "${firstName[0].toUpperCase()}${lastName[0].toUpperCase()}";
    try {
      await firestore.authUserCollection
        .doc(firebaseAuth.currentUser!.uid)
        .update({
      "firstName": firstName,
      "lastName": lastName,
      "displayName": displayName
    });
    return right("Details updated successfully");
    } on FirebaseException{
      return left("Server error encountered");
    }
  }

  @override
  Stream<Either<String, String>> updatePhone(
      {required String phoneNumber, required Duration timeout}) async* {
    final StreamController<Either<String, String>> streamController =
        StreamController<Either<String, String>>();

    await firebaseAuth.verifyPhoneNumber(
        timeout: timeout,
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          // ANDROID ONLY!
        },
        codeSent: (String verificationId, int? resendToken) async {
          // Update the UI - wait for the user to enter the SMS code
          streamController.add(right(verificationId));
          await firestore.authUserCollection
              .doc(firebaseAuth.currentUser!.uid)
              .update({"phoneNumber": phoneNumber});
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          // Auto-resolution timed out...
          streamController.add(left("SMS Timeout"));
        },
        verificationFailed: (FirebaseAuthException e) {
          late final Either<String, String> result;

          if (e.code == 'invalid-phone-number') {
            result = left("Invalid Phone Number");
          } else if (e.code == 'too-many-requests') {
            result = left("Too many Requests");
          } else if (e.code == 'app-not-authorized') {
            result = left("Device not suppported");
          } else {
            result = left("Server Error encountered");
          }
          streamController.add(result);
        });

    yield* streamController.stream;
  }

  @override
  Future<Either<String, String>> deleteUser() async {
    final query =
        firestore.authUserCollection.doc(firebaseAuth.currentUser!.uid);
    try {
      await query.update({
        "isAccountActive": false,
        "status": "Deleted",
        "startDate": DateTime.now(),
        "deleteDate": Jiffy(DateTime.now()).add(days: 30).dateTime
      });
      return right("Account submitted for deletion");
    } on FirebaseException catch (e) {
      return left('Server error encountered');
    }
  }

  @override
  Future<Either<String, String>> reactivateUser() async {
    final query = firestore.authUserCollection.doc(firebaseAuth.currentUser!.uid);
    try {
      await query.update({
        "isAccountActive": true,
        "startDate": FieldValue.delete(),
        "deleteDate": FieldValue.delete()
      });
      return right("Account reactivated successfully");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return left('Server error encountered');
    }
  }

  @override
  Future<void> refresh() async {
    await firebaseAuth.currentUser!.reload();
  }

}
