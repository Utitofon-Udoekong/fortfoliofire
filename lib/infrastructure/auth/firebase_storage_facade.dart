import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'dart:typed_data';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

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
    // if(isDocument) {
    //   String id = const Uuid().v4(options: UuidUtil.cryptoRNG());
    //   ref = ref.child(id);
    // }
    UploadTask uploadTask = ref.putData(
      file
    );
    TaskSnapshot snapshot = await uploadTask;
    String downloadUrl = await snapshot.ref.getDownloadURL();
    return some(downloadUrl);
  }
  
}