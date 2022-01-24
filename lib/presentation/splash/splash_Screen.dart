import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/auth_bloc.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

// import 'onboarding.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) {},
          unAuthenticated: (_) {
            Future.delayed(const Duration(seconds: 1)).then((_) {
              context.router.replaceAll([const SignInPageRoute()]);
            });
            
          },
        );
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width - 20,
                height: MediaQuery.of(context).size.height / 5,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/logo.png'),
                  ),
                ),
              ),
              const Text(
                "Fortfolio",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    color: Color(0XFF00ADEF)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
