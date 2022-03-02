import 'dart:typed_data';
import 'package:dartz/dartz.dart';

abstract class IStorageFacade {
  Future<Option<String>> uploadImageToStorage({required String childName, required Uint8List file, required bool isDocument});
}