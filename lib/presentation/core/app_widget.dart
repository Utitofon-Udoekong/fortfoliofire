import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/auth_bloc.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:fortfolio/presentation/sign_in/sign_in_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()))
      ],
      child: MaterialApp.router(
        title: 'Fortfolio',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ), 
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
        // builder: ,
      ),
    );
  }
}