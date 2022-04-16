import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_icon_trailing_button.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
 

class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);

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
              onTap: () => context.router.pop(),
              child: const Icon(Icons.close),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Verify Account",
              style: titleText,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Verify your account using an authentic identification document that belongs to you.', 
              style: subTitle.copyWith(color: kgreyColor),
            ),
            const SizedBox(
              height: 15,
            ),
            Text('Select the type of document you wish to upload for verification:', style: subTitle.copyWith(color: kgreyColor)),
            const SizedBox(
              height: 40,
            ),
            const CustomIconTrailingButton(icon: 'idcard', title: 'National ID Card', page: UploadPageRoute() ),
            const SizedBox(
              height: 20,
            ),
            const CustomIconTrailingButton(icon: 'passport', title: 'International Passport', page: UploadPageRoute() ),
            const SizedBox(
              height: 20,
            ),
            const CustomIconTrailingButton(icon: 'license', title: 'Drivers License', page: UploadPageRoute() ),
          ],
        ),
      ),
    ),
    );
  }

}
