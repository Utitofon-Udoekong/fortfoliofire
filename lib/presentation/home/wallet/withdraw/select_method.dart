import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_icon_trailing_button.dart';

import 'bank/bank_withdrawal.dart';
import 'crypto/crypto_withdrawal.dart';

class SelectWithdrawalMethod extends StatelessWidget {
  const SelectWithdrawalMethod({Key? key}) : super(key: key);

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
                  onTap: () => {},
                  child: const Icon(Icons.close),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Withdrawal",
                  style: titleText,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Select which account you want to withdraw to. You can make withdrawals to your crypto or bank account. ',
                  style: subTitle.copyWith(color: kgreyColor),
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomIconTrailingButton(icon: 'withdraw-bank', title: 'Bank Account', page: BankWithdrawal()),
                const SizedBox(
                  height: 10,
                ),
                const CustomIconTrailingButton(icon: 'withdraw-crypto', title: 'Crypto Wallet', page: CryptoWithdrawal()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
