import 'dart:typed_data';
import 'package:dartz/dartz.dart';

abstract class IStorageFacade {
  Future<Either<String,String>> uploadImageToStorage({required String childName, required Uint8List file});
}