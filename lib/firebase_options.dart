// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA1n8hCYZK8WtosnxDmV6qBt8GXg9EAc6E',
    appId: '1:981811466568:web:a3a54a20e1306f5f6d237d',
    messagingSenderId: '981811466568',
    projectId: 'fortfolio-64207',
    authDomain: 'fortfolio-64207.firebaseapp.com',
    storageBucket: 'fortfolio-64207.appspot.com',
    measurementId: 'G-M255HY0E0F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBC1_-SsgDOVEIRhwOL2VFBdLlgvNw4hMU',
    appId: '1:981811466568:android:c7b16f9970dde4496d237d',
    messagingSenderId: '981811466568',
    projectId: 'fortfolio-64207',
    storageBucket: 'fortfolio-64207.appspot.com',
  );
}
