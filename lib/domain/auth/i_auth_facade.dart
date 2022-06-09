

import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/auth/auth_failure.dart';

import 'auth_user_model.dart';
import 'value_objects.dart';

abstract class IAuthFacade {
  // AuthState
  Stream<AuthUserModel> get authStateChanges;
  // signin phone
  Stream<Either<String, String>> signInWithPhoneNumber({
    required String phoneNumber,
    required int timeout,
  });
  // signup phone
  Stream<Either<String, String>> registerPhoneNumber({
    required String phoneNumber,
    required int timeout
  });
  // verifyRegistrationSmsCode
  Future<Either<String, String>> verifyRegistrationSmsCode({
    required String smsCode,
    required String verificationId,
    required String phoneNumber
  });
  // verifyLoginSmsCode
  Future<Either<String, String>> verifyLoginSmsCode({
    required String smsCode,
    required String verificationId,
  });
  // verifyphoneupdate
  Future<Either<String, String>> verifyPhoneUpdate({
    required String smsCode,
    required String verificationId,
    required String phoneNumber
  });
  // registeruser
  Future<Either<String, String>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
    required UserName firstName,
    required UserName lastName
  });
  // login user
  Future<Either<String,String>> loginWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password
  });
  // sign out
  Future<void> signOut();
  Future<void> refresh();
  // get signedin user
  // Future<Option<AuthUserModel>> getSignedInUser();
  // verify user
  Future<void> verifyUser();
  Future<Either<String,String>> updateEmail({required String newEmail});
  Stream<Either<String, String>> updatePhone({required String phoneNumber,
    required Duration timeout,});
  Future<Either<String,String>> updateName({required String firstName, required String lastName});
  // reset password
  Future<Either<String, String>> resetPassword({
    required EmailAddress emailAddress
  });
  // database changes
  Stream<AuthUserModel> databaseUserChanges({required String userId});
  // saveUserToDatabase
  Future<Option<String>> saveUserToDatabase({
    required AuthUserModel userModel,
    required String uid
  });
  // mr robot
  Future<Either<AuthFailure, Unit>> signInAnonymously();
  // get user id from db
  Future<Option<AuthUserModel>> getDatabaseUser({required String id});
  // get user with phone
  Future<Option<AuthUserModel>> getDatabaseUserWithPhoneNumber(
      {required String phoneNumber});

  Future<Either<String, String>> deleteUser();
  Future<Either<String, String>> reactivateUser();

  String getUserId(); 
}