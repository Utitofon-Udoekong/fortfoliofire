import 'package:flutter/material.dart';
import 'package:fortfolio/constants/theme.dart';

class WalletTransactions extends StatelessWidget {
  const WalletTransactions({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              buildtile('Fort Shield Investment', true, 'N500', 'Housing'),
              buildtile('Investment Withdrawal', false, 'N500', 'Bank'),
              buildtile('Fort Shield Investment', true, 'N500', 'Bank'),
              buildtile('Fort Shield Investment', true, 'N500', 'Bank'),
              buildtile('Investment Withdrawal', false, 'N500', 'Housing'),
              buildtile('Fort Shield Investment', true, 'N500', 'Housing'),
              buildtile('Fort Shield Investment', true, 'N500', 'Housing'),
              buildtile('Investment Withdrawal', false, 'N500', 'Bank'),
              buildtile('Fort Shield Investment', true, 'N500', 'Housing'),
            ],
          )),
    ));
  }

  Widget buildtile(String title, bool investment, String amount, String type) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      decoration: const BoxDecoration(
          border: const Border(bottom: BorderSide(color: const Color(0XFFF3F6F8)))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flex(
            direction: Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: titleText.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: kBlackColor),
              ),
              investment
                  ? Text('30% returns',
                      style: subTitle.copyWith(
                          fontSize: 12, color: const Color(0XFF00C566)))
                  : Text('100 units',
                      style: subTitle.copyWith(
                          fontSize: 12, color: const Color(0XFF00C566))),
              const SizedBox(
                height: 20,
              ),
              Text('28 Jan 2021 ● $type',
                  style: subTitle.copyWith(
                      fontSize: 12, color: const Color(0XFFD8D8D8))),
            ],
          ),
          // Spacer(),
          Text(
            amount,
            style: titleText.copyWith(
                fontSize: 20,
                color: investment ? const Color(0XFF00C566) : const Color(0XFFDF1414),
                fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}