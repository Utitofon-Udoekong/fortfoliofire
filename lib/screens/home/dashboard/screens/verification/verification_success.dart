import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortfolio/constants/theme.dart';
import 'package:fortfolio/screens/home/dashboard/screens/profile/profile.dart';
import 'package:fortfolio/widgets/custom_filled_button.dart';

class ResetSuccess extends StatelessWidget {
  const ResetSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget svg = SvgPicture.asset('images/shield.svg',
        width: MediaQuery.of(context).size.width * 0.65);
    return Scaffold(
      body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFF00ADEE)
        ),
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              InkWell(
                child: Icon(Icons.close, color: kWhiteColor,),
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
