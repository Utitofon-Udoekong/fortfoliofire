import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_icon_trailing_button.dart';
import 'package:fortfolio/utils/pages.dart';

import 'bank/bank_invest.dart';
import 'crypto/crypto_invest.dart';

class SelectInvestmentMethod extends StatelessWidget {
  const SelectInvestmentMethod({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kDefaultPadding,
          child: SingleChildScrollView(
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
                  "Choose Payment Method",
                  style: titleText,
                ),
                
                const SizedBox(
                  height: 30,
                ),
                const CustomIconTrailingButton(icon: 'withdraw-bank', title: 'Bank Account', page: bankInvestment),
                const SizedBox(
                  height: 10,
                ),
                const CustomIconTrailingButton(icon: 'withdraw-crypto', title: 'Crypto Wallet', page: cryptoInvestment),
              ],
            ),
          ),
        ),
      ),
    );
  }
}