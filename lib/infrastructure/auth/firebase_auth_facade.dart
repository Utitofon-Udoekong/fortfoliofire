import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fortfolio/domain/auth/auth_failure.dart';
import 'package:fortfolio/domain/auth/auth_user_model.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:fortfolio/domain/core/value_objects.dart';
import 'package:fortfolio/domain/user/i_user_repository.dart';
import 'package:fortfolio/domain/user/user.dart';
import 'package:fortfolio/domain/user/value_objects.dart';
import 'package:fortfolio/infrastructure/auth/firebase_user_mapper.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth firebaseAuth;
  final IUserRepository iUserRepository;

  FirebaseAuthFacade({required this.firebaseAuth, required this.iUserRepository});

  @override
  Future<Either<AuthFailure, Unit>> loginWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: emailAddressString, password: passwordString);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return left(const AuthFailure.invalidEmailAndPassword());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password, required Phone phone, required UserName firstName, required UserName lastName}) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    final phoneNumber = phone.getOrCrash();
    const timeout = Duration(seconds: 60);

    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddressString, password: passwordString).then((value) async {
            registerPhoneNumber(phoneNumber: Phone(phoneNumber), timeout: timeout);
            AppUser _appUser = AppUser(id: UniqueId.fromUniqueString(value.user!.uid), firstName: firstName, lastName: lastName, emailAddress: emailAddress, phone: phone, accountBalance: 0, isVerified: false, withdrawals: ItemList(emptyList()), deposits: ItemList(emptyList()), activeplans: ItemList(emptyList()),);
            return await iUserRepository.create(_appUser);
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
  Future<void> signOut() async => await firebaseAuth.signOut();

  @override
  Future<Either<AuthFailure, Unit>> resetPassword({required EmailAddress emailAddress}) async {
    final email = emailAddress.getOrCrash();
    try {
      await firebaseAuth.sendPasswordResetEmail(email: email);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if(e.code == "auth/invalid-email"){
        return left(const AuthFailure.invalidEmailAndPassword());
      }else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Stream<AppUser> get authStateChanges {
    return firebaseAuth.authStateChanges().map(
      (User? user) {
        if (user == null) {
          // The user is signed out
          return AppUser.empty();
        } else {
          // The user is logged in
          return user.toDomain();
        }
      },
    );
  }

  @override
  Stream<Either<AuthFailure, String>> signInWithPhoneNumber({
    required Phone phoneNumber,
    required Duration timeout,
  }) async* {
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
  Stream<Either<AuthFailure, String>> registerPhoneNumber({
    required Phone phoneNumber,
    required Duration timeout,
  }) async* {
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
  Future<Either<AuthFailure, Unit>> verifySmsCode({
    required String smsCode,
    required String verificationId,
  }) async {
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
  Future<Option<AppUser>> getSignedInUser() async => optionOf(firebaseAuth.currentUser!.toDomain());
  //   var actionCodeSettings = ActionCodeSettings(
  //     url: 'https://www.example.com/?email=${firebaseAuth.currentUser!.email}',
  //     dynamicLinkDomain: 'example.page.link',
  //     androidPackageName: 'com.example.android',
  //     androidInstallApp: true,
  //     androidMinimumVersion: '12',
  //     iOSBundleId: 'com.example.ios',
  //     handleCodeInApp: true,
  // );

}
