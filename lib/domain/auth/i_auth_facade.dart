

import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/auth/auth_failure.dart';

import 'auth_user_model.dart';
import 'value_objects.dart';

abstract class IAuthFacade {
  // AuthState
  Stream<AuthUserModel> get authStateChanges;
  // signin phone
  Stream<Either<AuthFailure, String>> signInWithPhoneNumber({
    required Phone phoneNumber,
    required Duration timeout,
  });
  // signup phone
  Stream<Either<AuthFailure, String>> registerPhoneNumber({
    required Phone phoneNumber,
    required Duration timeout,
  });
  // verifysms
  Future<Either<AuthFailure, Unit>> verifySmsCode({
    required String smsCode,
    required String verificationId,
  });
  // registeruser
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
    required Phone phone,
    required UserName firstName,
    required UserName lastName
  });
  // login user
  Future<Either<AuthFailure, Unit>> loginWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password
  });
  // sign out
  Future<void> signOut();
  // get signedin user
  // Future<Option<AuthUserModel>> getSignedInUser();
  // verify user
  Future<void> verifyUser();
  // reset password
  Future<Either<String, String>> resetPassword({
    required EmailAddress emailAddress
  });
  // database changes
  Stream<AuthUserModel> databaseUserChanges({required String userId});
  // saveUserToDatabase
  Future<Option<Unit>> saveUserToDatabase({
    required AuthUserModel userModel,
  });
  // mr robot
  Future<Either<AuthFailure, Unit>> signInAnonymously();
  // get user id from db
  Future<Option<AuthUserModel>> getDatabaseUser({required String id});
  // get user with phone
  Future<Option<AuthUserModel>> getDatabaseUserWithPhoneNumber(
      {required String phoneNumber});
      
  String getUserId(); 
}