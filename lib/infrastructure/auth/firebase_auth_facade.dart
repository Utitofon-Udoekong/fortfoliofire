import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:fortfolio/domain/auth/auth_failure.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/user.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:fortfolio/infrastructure/auth/firebase_user_mapper.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth firebaseAuth;

  FirebaseAuthFacade({required this.firebaseAuth});

  @override
  Future<Either<AuthFailure, Unit>> loginWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: emailAddressString, password: passwordString);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return left(const AuthFailure.invalidEmailAndPassword());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password, required Phone phone, required String smsCode}) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();

    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddressString, password: passwordString).then((value) => {
            registerPhone(phone: phone, smsCode: smsCode)
          });
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> registerPhone(
      {required Phone phone, required String smsCode}) async {
    final phoneNumber = phone.getOrCrash();
    try {
      await firebaseAuth.verifyPhoneNumber(
          phoneNumber: phoneNumber,
          verificationCompleted: (e) {},
          verificationFailed: (e) {
            throw const AuthFailure.serverError();
          },
          codeSent: (String verificationId, [int? forceResendingToken]) async {
            var _credential = PhoneAuthProvider.credential(
                verificationId: verificationId, smsCode: smsCode);
            await firebaseAuth.currentUser!.linkWithCredential(_credential);
          },
          codeAutoRetrievalTimeout: (String verificationId) {
            verificationId = verificationId;
            print("Timeout");
          });
      return right(unit);
    } on PlatformException {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> loginWithPhoneNumber(
      {required Phone phone, required String smsCode}) async {
    final phoneNumber = phone.getOrCrash();
    try {
      await firebaseAuth.verifyPhoneNumber(
          phoneNumber: phoneNumber,
          verificationCompleted: (e) {},
          verificationFailed: (e) {
            throw const AuthFailure.serverError();
          },
          codeSent: (String verificationId, [int? forceResendingToken]) async {
            var _credential = PhoneAuthProvider.credential( verificationId: verificationId, smsCode: smsCode);
            // await firebaseAuth.signInWithCredential(_credential);
          },
          codeAutoRetrievalTimeout: (String verificationId) {
            verificationId = verificationId;
            print("Timeout");
          });
      return right(unit);
    } on PlatformException {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<AppUser>> getSignedInUser() async => optionOf(firebaseAuth.currentUser!.toDomain());

  @override
  Future<void> signOut() async => await firebaseAuth.signOut();

  @override
  Future<Either<AuthFailure, Unit>> resetPassword({required EmailAddress emailAddress}) async {
    final email = emailAddress.getOrCrash();
    try {
      await firebaseAuth.sendPasswordResetEmail(email: email);
      return right(unit);
    } on PlatformException catch (e) {
      if(e.code == "auth/invalid-email"){
        return left(const AuthFailure.invalidEmailAndPassword());
      }else {
        return left(const AuthFailure.serverError());
      }
    }
  }

}
