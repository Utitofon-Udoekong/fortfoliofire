import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/core/bloc_observer.dart';
import 'package:injectable/injectable.dart';
import 'firebase_options.dart';
import 'presentation/core/app_widget.dart';

void main() async {
  configureInjection(Environment.dev);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  BlocOverrides.runZoned(() => runApp(const App()),blocObserver: AppBlocObserver());

}


