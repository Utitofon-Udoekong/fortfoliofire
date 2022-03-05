import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:fortfolio/utils/pages.dart';

class VerificationSuccess extends StatelessWidget {
  const VerificationSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget svg = SvgPicture.asset('images/shield.svg',
        width: MediaQuery.of(context).size.width * 0.65);
    return Scaffold(
      body: SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0XFF00ADEE)
        ),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () => {
                  context.router.push(const ProfilePageRoute())
                },
                child: const Icon(Icons.close, color: kWhiteColor,),
              ),
              const SizedBox(
                height: 80,
              ),
              svg,
              const SizedBox(
                height: 30,
              ),
              Text(
                  "Your details have been received! You will be updated on the status of your verification soon.",
                  style: titleText.copyWith(color: kWhiteColor),
                  textAlign: TextAlign.center),
            ]),
      ),
    ),
    );
  }
}