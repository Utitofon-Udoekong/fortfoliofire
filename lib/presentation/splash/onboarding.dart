import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/internet/cubit/internet_cubit.dart';
import 'package:fortfolio/domain/constants/onboarding_model.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_outlined_button.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

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
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      context.watch<InternetCubit>().connectivityStreamSubscription;
    });
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocListener<InternetCubit, InternetState>(
      listener: (context, state) {
        if(state.disconnected){
          context.router.push(const NoInternetPageRoute());
        }
      },
      child: Scaffold(
        body: SafeArea(
            child: Column(
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
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
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            onboarding[index].imageAsset,
                            width: size.width * 0.7,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 6, 0, 3),
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
              padding: const EdgeInsets.symmetric(vertical: 8),
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
                    onTap: () =>
                        {context.router.replace(const SignInFormEmailRoute())},
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  CustomOutlinedButton(
                    text: "REGISTER",
                    onTap: () =>
                        {context.router.replace(const SignUpFormRoute())},
                  ),
                  Center(
                    child: TextButton(
                        onPressed: () {
                          context.router.replace(const HomePageRoute());
                        },
                        child: Text(
                          'Home',
                          style: titleText.copyWith(
                              color: kBlackColor, fontSize: 15),
                        )),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        )),
      ),
    );
  }
}
