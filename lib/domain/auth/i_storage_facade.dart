import 'dart:typed_data';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:fortfolio/domain/constants/image_model.dart';

abstract class IStorageFacade {
  Future<Option<String>> uploadImageToStorage({required String childName, required File file});
  Future<Either<String,List<String>>> uploadImagesToStorage({required List<ImageModel> files});
  Future<Either<String,List<Reference>>> getNewsFromStorage();
}