import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

class TACText extends StatelessWidget {
  const TACText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(
      text: "I have read and I agree to Fortfolio's ",
      style: subTitle.copyWith(color: kBlackColor, fontSize: 15),
      children: [
        TextSpan(
          text: "Terms of Services Agreement",
          style: subTitle.copyWith(color: klightblue, decoration: TextDecoration.underline, fontSize: 15),
          recognizer: TapGestureRecognizer()
                ..onTap = () {
                  context.router.push(const TACPageRoute());
                },
        )
      ]
    ));
  }
}
