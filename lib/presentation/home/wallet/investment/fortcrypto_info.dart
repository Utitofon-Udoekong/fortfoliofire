import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';

class FortCryptoInvestmentInfo extends StatelessWidget {
 const FortCryptoInvestmentInfo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(padding: kDefaultPadding,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                InkWell(
                  onTap: () => context.router.pop(),
                  child: const Icon(Icons.close),
                ),
                Center(
                  child: Text("Fortcrypto", style: titleText.copyWith(fontSize: 18, fontWeight: FontWeight.w700))
                )
              ]
            ),
            const SizedBox(height: 30),
            Text("Total", style: subTitle.copyWith(fontSize: 12)),
            const SizedBox(height: 8),
            Text("N 90,000.00", style: titleText.copyWith(fontSize: 16, fontWeight: FontWeight.w500)),
            const SizedBox(height: 30),
            Text("Available for yield", style: subTitle.copyWith(fontSize: 12)),
            const SizedBox(height: 8),
            Text("N 30,000.00", style: titleText.copyWith(fontSize: 16, fontWeight: FontWeight.w500)),
            const SizedBox(height: 30),
            Text("Active Investments", style: subTitle.copyWith(fontSize: 12, color: kPrimaryColor)),
            const SizedBox(height: 12),
            Container(

            )
          ]
        ),),
      )),
    );
  }
}