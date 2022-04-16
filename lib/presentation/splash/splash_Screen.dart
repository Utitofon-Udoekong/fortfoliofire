import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      final bool isUserLoggedIn = context.read<AuthCubit>().state.isLoggedIn;
      final bool isUserCheckedFromAuthService =
          context.read<AuthCubit>().state.isUserCheckedFromAuthFacade;
      if (isUserLoggedIn) {
        context.router.replace(const HomePageRoute());
      } else if (!isUserLoggedIn && isUserCheckedFromAuthService) {
        context.router.replace(const OnboardingScreenRoute());
      }
      
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final svg = SvgPicture.asset('images/logo.svg',semanticsLabel: 'logo',);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.3,
                height: MediaQuery.of(context).size.height / 5,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/logo.png'),
                    fit: BoxFit.fitHeight
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
      );
  }
}
