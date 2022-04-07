import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:typed_data';

import 'package:fortfolio/domain/auth/i_storage_facade.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IStorageFacade)
class FirebaseStorageFacade implements IStorageFacade {
  final FirebaseAuth auth;
  final FirebaseStorage storage;

  FirebaseStorageFacade(this.auth, this.storage);
  @override
  Future<Either<String, String>> uploadImageToStorage({required String childName, required Uint8List file}) async {
    Reference ref =
        storage.ref("KYC_DOCUMENTS").child(childName);
        // storage.ref("KYC_DOCUMENTS").child(auth.currentUser!.uid).child(childName);
    try {
      UploadTask uploadTask = ref.putData(
        file
      );
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