

import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/auth/user/user.dart';
import 'package:fortfolio/domain/auth/user/user_failure.dart';

abstract class IUserRepository {
  Stream<Either<UserFailure, List<AppUser>>> watchAll();
  Future<Either<UserFailure, Unit>> create(AppUser user);
  Future<Either<UserFailure, Unit>> update(AppUser user);
  Future<Either<UserFailure, Unit>> delete(AppUser user);

}