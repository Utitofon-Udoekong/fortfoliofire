import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/user/user.dart';
import 'package:fortfolio/domain/user/user_failure.dart';
import 'package:kt_dart/collection.dart';

abstract class IUserRepository {
  // watch notes
  Stream<Either<UserFailure, KtList<AppUser>>> watchUser();
  // CUD
  Future<Either<UserFailure, Unit>> create(AppUser appUser);
  Future<Either<UserFailure, Unit>> update(AppUser appUser);
  Future<Either<UserFailure, Unit>> delete(AppUser appUser);
  // C Read UD
}