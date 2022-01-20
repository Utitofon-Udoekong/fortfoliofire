import 'package:flutter/material.dart';
import 'package:fortfolio/constants/theme.dart';
import 'package:fortfolio/models/onboarding_model.dart';
import 'package:fortfolio/screens/authentication/login/login_view.dart';
import 'package:fortfolio/screens/authentication/sign_up/sign_up_email_view.dart';
import 'package:fortfolio/screens/home/home_page.dart';
import 'package:fortfolio/widgets/custom_filled_button.dart';
import 'package:fortfolio/widgets/custom_outlined_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

PageController _pageController = PageController();
int selectedpage = 0;

// nextPage(){
//   _pageController.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.ease);
// }

// skipPage(){
//   _pageController.jumpToPage(2);
// }
class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
        children: <Widget>[
          const SizedBox(height: 40,),
          Expanded(
            child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    selectedpage = value;
                  });
                },
                controller: _pageController,
                itemCount: onboarding.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Image.asset(
                          onboarding[index].imageAsset,
                          width: size.width * 0.7,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 6),
                          child: Text(
                            onboarding[index].title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Text(
                          onboarding[index].description,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  onboarding.length,
                  (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        height: 8,
                        width: selectedpage == index ? 27 : 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: selectedpage == index
                              ? kPrimaryColor
                              : kgreyColor.withOpacity(0.2),
                        ),
                      )),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: <Widget>[
                CustomFilledButton(
                    text: "LOGIN",
                    onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => Login())),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                CustomOutlinedButton(
                    text: "REGISTER",
                    onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => SignUp())),
                ),
                Center(
                  child: TextButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const HomePage()));
                  }, child: Text('Home', style: titleText.copyWith(color: kBlackColor, fontSize: 15),)),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      )),
    );
  }
}
