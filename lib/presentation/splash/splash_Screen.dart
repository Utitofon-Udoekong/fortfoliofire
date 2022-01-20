import 'package:flutter/material.dart';
import 'package:fortfolio/screens/splash/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1)).then((_) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const OnboardingScreen()
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  image: AssetImage('images/logo.png'),),
              ),
            ),
            const Text(
              "Fortfolio",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w400,
                color: Color(0XFF00ADEF)
              ),
            ),
          ],
        ),
      ),
    );
  }
}