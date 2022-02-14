import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

import 'package:fortfolio/domain/user/i_user_repository.dart';
import 'package:fortfolio/domain/user/user.dart';
import 'package:fortfolio/domain/user/user_failure.dart';
import 'package:fortfolio/infrastructure/core/firestore_helpers.dart';

import 'user_dtos.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final FirebaseFirestore _firestore;
  final firebase_storage.FirebaseStorage _storage;

  UserRepository(this._firestore, this._storage);
  @override
  Future<Either<UserFailure, Unit>> create(AppUser appUser) async {
    try {
      final userDoc = await _firestore.userDocument();
      final userDto = UserDTO.fromDomain(appUser);
      await userDoc.set(userDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if(e.message!.contains('PERMISSION_DENIED')) {
        return left(const UserFailure.insufficientPermission());
      }else{
        return left(const UserFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UserFailure, Unit>> update(AppUser appUser) async {
    try {
      final userDoc = await _firestore.userDocument();
      final userDto = UserDTO.fromDomain(appUser);
      await userDoc.update(userDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if(e.message!.contains('PERMISSION_DENIED')) {
        return left(const UserFailure.insufficientPermission());
      }else if(e.message!.contains('NOT_FOUND')) {
        return left(const UserFailure.unableToUpdate());
      }else{
        return left(const UserFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UserFailure, Unit>> delete(AppUser appUser) async {
    try {
      final userDoc = await _firestore.userDocument();
      final userId = appUser.id.getOrCrash();
      await userDoc.userCollection.doc(userId).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      if(e.message!.contains('PERMISSION_DENIED')) {
        return left(const UserFailure.insufficientPermission());
      }else if(e.message!.contains('NOT_FOUND')) {
        return left(const UserFailure.unableToUpdate());
      }else{
        return left(const UserFailure.unexpected());
      }
    }
  }


  @override
  Stream<Either<UserFailure, KtList<AppUser>>> watchUser() async* {
    // users/{user ID}/notes/{note ID}
    final userDoc = await _firestore.userDocument();
    userDoc.userCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map((snapshot) => right(snapshot.docs.map((doc) => UserDTO.fromFirestore(doc).toDomain()).toImmutableList()))
        .onErrorReturnWith((error, _) {
          if (error is FirebaseException && error.message!.contains('PERMISSION_DENIED')){
            return left(const UserFailure.insufficientPermission());
          }else {
            log(error.toString());
            return left(const UserFailure.unexpected());
          }
        });
  }

  @override
  Stream<Either<UserFailure, firebase_storage.ListResult>> listNews() async* {
    try {
      final news = await _storage.ref('news').listAll();
      yield right(news);
    } on FirebaseException catch (e) {
      if(e.message!.contains('PERMISSION_DENIED')) {
        yield left(const UserFailure.insufficientPermission());
      }else if(e.message!.contains('NOT_FOUND')) {
        yield left(const UserFailure.unableToUpdate());
      }else{
        yield left(const UserFailure.unexpected());
      }
    }
  }

  
}
