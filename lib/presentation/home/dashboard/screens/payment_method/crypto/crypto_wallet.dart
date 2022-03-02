import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:fortfolio/utils/pages.dart';

class CryptoWallet extends StatelessWidget {
  const CryptoWallet({Key? key}) : super(key: key);

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
            const SizedBox(
              height: 50,
            ),
            svg,
            const SizedBox(
              height: 30,
            ),
            Text(
              'No Wallet added yet.',
              style: subTitle,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => context.router.push(const AddCryptoWalletRoute()),
          child: const Icon(
            Icons.add,
            size: 25,
            color: kPrimaryColor,
          ),
          elevation: 5.0,
          backgroundColor: kWhiteColor),
    );
  }
}
