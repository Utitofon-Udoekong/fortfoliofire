// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:fortfolio/infrastructure/auth/local_auth_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _resume();
    });
  }
  Future _resume() async {
    final sp = await SharedPreferences.getInstance();
    bool canCheckBiometrics = await LocalAuthApi.hasBiometrics();
    String bgTime = DateTime.now().toString();
    bool biometricsExist = false;
    if(sp.containsKey("bio_enabled")){
      biometricsExist = sp.getBool("bio_enabled")!;
    }
    if(sp.containsKey("backgroundedTimeKey")){
      bgTime = sp.getString("backgroundedTimeKey")!;
    }
    final difference = DateTime.now().difference(DateTime.parse(bgTime)).inSeconds;
    final shouldShowPIN = difference >= 10 && biometricsExist;
    final bool isChecked = context.read<AuthCubit>().state.isUserCheckedFromAuthFacade;
    if (isChecked) {
      if(shouldShowPIN == false){
        context.router.replace(const HomePageRoute());
        return;
      }
      if (canCheckBiometrics) {
        bool didauthenticate = await LocalAuthApi.authenticate(
            localizedReason: 'Scan Fingerprint to authenticate');
        if (didauthenticate != true) {
          CustomSnackbar.showSnackBar(context, "Authenticate to continue", true);
        } else {
          context.router.replace(const HomePageRoute());
        }
      }
    } else { 
      context.router.replace(const OnboardingScreenRoute());
    }
  }

  @override
  Widget build(BuildContext context) {
    // final svg = SvgPicture.asset(
    //   'images/logo.svg',
    //   semanticsLabel: 'logo',
    // );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Semantics(
        label: "Splash screen",
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Semantics(
                image: true,
                label: "Logo",
                child: Container(
                  width: MediaQuery.of(context).size.width / 1.3,
                  height: MediaQuery.of(context).size.height / 5,
                  // child: svg,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/logo.png'),
                        fit: BoxFit.fitHeight),
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
