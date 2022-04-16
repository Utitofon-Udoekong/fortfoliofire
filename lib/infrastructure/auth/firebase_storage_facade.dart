import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';

import 'package:fortfolio/domain/auth/i_storage_facade.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IStorageFacade)
class FirebaseStorageFacade implements IStorageFacade {
  final FirebaseAuth auth;
  final FirebaseStorage storage;

  FirebaseStorageFacade(this.auth, this.storage);
  @override
  Future<Either<String, String>> uploadImageToStorage({required String childName, required File file}) async {
    String filename = basename(file.path);
    final destination = "KYC_DOCUMENTS/$childName";
    Reference ref =
        storage.ref(destination).child(childName).child("file");
    try {
      UploadTask uploadTask = ref.putFile(file);
      TaskSnapshot snapshot = await uploadTask;
      String downloadUrl = await snapshot.ref.getDownloadURL();
      return right(downloadUrl);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return left('User does not have permission to upload to the database.');
      }else if (e.code == 'canceled'){
        return left('Upload task has been cancelled');
      }else{
        return left('Server error encountered');
      }
      
    }
  }
  
}