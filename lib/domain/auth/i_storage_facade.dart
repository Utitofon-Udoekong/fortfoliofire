import 'dart:io';
import 'package:dartz/dartz.dart';

abstract class IStorageFacade {
  Future<Either<String,String>> uploadImageToStorage({required String childName, required File file});
}