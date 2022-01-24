import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortfolio/domain/constants/theme.dart';

class BankAddress extends StatelessWidget {
  const BankAddress({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final svg = SvgPicture.asset(
      'images/blank-wallet.svg',
      semanticsLabel: 'Blank Wallet',
    );
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            svg,
            SizedBox(
              height: 30,
            ),
            Text(
              'No Bank Account added yet.',
              style: subTitle,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => {
            // Get.to(AddBank())
          },
          child: Icon(
            Icons.add,
            size: 25,
            color: kPrimaryColor,
          ),
          elevation: 5.0,
          backgroundColor: kWhiteColor),
    );
  }
}