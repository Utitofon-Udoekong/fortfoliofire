import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fortfolio/injection.dart';
import 'package:injectable/injectable.dart';
import 'firebase_options.dart';
import 'presentation/core/app_widget.dart';

void main() async {
  configureInjection(Environment.dev);
  Connectivity().checkConnectivity();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());
}


