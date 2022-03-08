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
  Future<Option<String>> uploadImageToStorage({required String childName, required Uint8List file}) async {
    Reference ref =
        storage.ref().child(childName).child(auth.currentUser!.uid);
    try {
      UploadTask uploadTask = ref.putData(
        file
      );
      TaskSnapshot snapshot = await uploadTask;
      String downloadUrl = await snapshot.ref.getDownloadURL();
      return some(downloadUrl);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return some('User does not have permission to upload to this reference.');
      }else if (e.code == 'canceled'){
        return some('Upload task has been cancelled');
      }else{
        return some('Server error encountered');
      }
      
    }
  }
  
}