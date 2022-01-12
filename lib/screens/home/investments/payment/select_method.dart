import 'package:flutter/material.dart';
import 'package:fortfolio/constants/theme.dart';
import 'package:fortfolio/screens/home/investments/payment/crypto/crypto_invest.dart';
import 'package:fortfolio/screens/home/investments/payment/bank/bank_invest.dart';
import 'package:fortfolio/widgets/custom_icon_trailing_button.dart';

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
                const CustomIconTrailingButton(icon: 'withdraw-bank', title: 'Bank Account', page: BankInvestmentPage()),
                const SizedBox(
                  height: 10,
                ),
                const CustomIconTrailingButton(icon: 'withdraw-crypto', title: 'Crypto Wallet', page: CryptoInvestmentPage()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}