import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:typed_data';
import 'dart:io';

import 'package:fortfolio/domain/auth/i_storage_facade.dart';
import 'package:fortfolio/domain/constants/image_model.dart';
import 'package:fortfolio/utils/utils.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IStorageFacade)
class FirebaseStorageFacade implements IStorageFacade {
  final FirebaseAuth auth;
  final FirebaseStorage storage;

  FirebaseStorageFacade(this.auth, this.storage);
  @override
  Future<Option<String>> uploadImageToStorage({required String childName, required File file}) async {
    Reference ref =
        storage.ref("KYC_DOCUMENTS").child(auth.currentUser!.uid).child(childName);
    try {
      UploadTask uploadTask = ref.putFile(
        file
      );
      TaskSnapshot snapshot = await uploadTask;
      String downloadUrl = await snapshot.ref.getDownloadURL();
      return some(downloadUrl);
    } on FirebaseException catch (e) {
      return none();
    }
  }
  @override
  Future<Either<String,List<String>>> uploadImagesToStorage({required List<ImageModel> files}) async {
    List<String> urls = [];
    for(var image in files){
      Reference ref = storage.ref("KYC_DOCUMENTS").child(auth.currentUser!.uid).child(image.childName);
      try {
        UploadTask uploadTask = ref.putFile(
          image.file
        );
        TaskSnapshot snapshot = await uploadTask;
        String downloadUrl = await snapshot.ref.getDownloadURL();
        urls.add(downloadUrl);
      } on FirebaseException catch (e) {
        return left(e.message!);
      }
    }
    return right(urls);
  }

  @override
  Future<Either<String, List<Reference>>> getNewsFromStorage() async {
    Reference ref =
        storage.ref("news");
    try{
      final ListResult refList = await ref.listAll();
      final List<Reference> newsList = refList.items;
      return right(newsList);
    } on FirebaseException catch (e) {
      return left(getErrorFromCode(symbol: e.code));
    }
  }
  
}