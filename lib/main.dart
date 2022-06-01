import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/core/bloc_observer.dart';

import 'firebase_options.dart';
import 'presentation/core/app_widget.dart';

void main() async {
  configureInjection(Environment.dev);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseAppCheck.instance.activate(
    webRecaptchaSiteKey: 'recaptcha-v3-site-key',
  );
    // webRecaptchaSiteKey: '6Le-eCcgAAAAAC3IN0RKos4l2gLT60GvLLGoobbq',
  await FirebaseAppCheck.instance.setTokenAutoRefreshEnabled(true);

  BlocOverrides.runZoned(() => runApp(const App()),blocObserver: AppBlocObserver());

}


