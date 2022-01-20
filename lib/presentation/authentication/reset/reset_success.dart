import 'package:flutter/material.dart';
import 'package:fortfolio/constants/theme.dart';
import 'package:fortfolio/widgets/custom_filled_button.dart';
import 'package:get/get.dart';

class ResetSuccess extends StatelessWidget {
  const ResetSuccess({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 80,),
          Image.asset(
            "images/success.png",
            width: MediaQuery.of(context).size.width * 0.65
          ),
          const SizedBox(height: 30,),
          Text("Password reset succesful", style: titleText, textAlign: TextAlign.center),
          Text("Your password has been reset succesfully. Please login to continue", style: titleText, textAlign: TextAlign.center),
          const SizedBox(height: 30,),
          CustomFilledButton(text: 'LOGIN', onTap: () => Get.toNamed('/login'))
        ]
      ),
    );
  }
}