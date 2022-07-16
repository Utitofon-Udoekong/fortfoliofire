
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:fortfolio/domain/auth/shared_pref_provider.dart';
import 'package:injectable/injectable.dart';
import 'package:telephony/telephony.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class FirebaseInjectableModule {
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  @lazySingleton
  FirebaseStorage get storage => FirebaseStorage.instance;

  @lazySingleton
  FirebaseFunctions get functions => FirebaseFunctions.instance;
  
  @lazySingleton
  Telephony get telephony => Telephony.instance;
}