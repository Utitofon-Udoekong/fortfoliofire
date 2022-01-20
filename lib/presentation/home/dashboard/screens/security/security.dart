import 'package:flutter/material.dart';
import 'package:fortfolio/constants/theme.dart';
import 'package:fortfolio/screens/home/dashboard/screens/security/change_password.dart';
import 'package:fortfolio/widgets/custom_icon_button.dart';
import 'package:get/get.dart';

class Security extends StatelessWidget {
  const Security({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Padding(
        padding: kDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () => Get.back(),
              child: const Icon(Icons.close),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Security",
              style: titleText.copyWith(color: kBlackColor),
            ),
            const SizedBox(
              height: 40,
            ),
            const CustomIconButton(title: 'Change your password', page: ChangePassword()),
          ],
        ),
      ),
    ),
    );
  }

}