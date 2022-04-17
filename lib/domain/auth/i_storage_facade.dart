import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';

abstract class IStorageFacade {
  Future<Either<String,String>> uploadImageToStorage({required String childName, required Uint8List file});
  Future<Either<String,List<Reference>>> getNewsFromStorage();
}