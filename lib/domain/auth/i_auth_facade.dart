

import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/auth/auth_failure.dart';
import 'package:fortfolio/domain/user/user.dart';

import 'auth_user_model.dart';
import 'value_objects.dart';

abstract class IAuthFacade {
  Stream<AppUser> get authStateChanges;
  Stream<Either<AuthFailure, String>> signInWithPhoneNumber({
    required Phone phoneNumber,
    required Duration timeout,
  });
  Stream<Either<AuthFailure, String>> registerPhoneNumber({
    required Phone phoneNumber,
    required Duration timeout,
  });
  Future<Either<AuthFailure, Unit>> verifySmsCode({
    required String smsCode,
    required String verificationId,
  });
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
    required Phone phone,
    required UserName firstName,
    required UserName lastName
  });
  Future<Either<AuthFailure, Unit>> loginWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password
  });
  Future<void> signOut();
  Future<Option<AppUser>> getSignedInUser();
  Future<void> verifyUser();
  Future<Either<AuthFailure, Unit>> resetPassword({
    required EmailAddress emailAddress
  });
}