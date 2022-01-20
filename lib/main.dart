import 'package:authentication_repository/authentication_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final authenticationRepository = AuthenticationRepository();
  await authenticationRepository.user.first;
  BlocOverrides.runZoned(
    () => runApp(App(authenticationRepository: authenticationRepository)),
    blocObserver: AppBlocObserver(),
  );
}
