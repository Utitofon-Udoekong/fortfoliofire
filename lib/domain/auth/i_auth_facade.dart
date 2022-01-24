

import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/auth/auth_failure.dart';
import 'package:fortfolio/domain/auth/user.dart';

import 'value_objects.dart';

abstract class IAuthFacade {
  Future<Option<AppUser>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
    required Phone phone,
    required String smsCode
  });
  Future<Either<AuthFailure, Unit>> loginWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password
  });
  Future<Either<AuthFailure, Unit>> loginWithPhoneNumber({
    required Phone phone,
    required String smsCode
  });
  Future<void> signOut();
  Future<Either<AuthFailure, Unit>> resetPassword({
    required EmailAddress emailAddress
  });
}