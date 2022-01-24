import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';

class InvestmentTransactions extends StatefulWidget {
  const InvestmentTransactions({Key? key}) : super(key: key);

  @override
  _InvestmentTransactionsState createState() => _InvestmentTransactionsState();
}

class _InvestmentTransactionsState extends State<InvestmentTransactions> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
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
                "Transactions",
                style: titleText.copyWith(color: kBlackColor),
              ),
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
    )));
  }

  Widget buildtile(String title, bool investment, String amount, String type) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0XFFF3F6F8)))),
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
                          fontSize: 12, color: kGreenColor))
                  : Text('100 units',
                      style: subTitle.copyWith(
                          fontSize: 12, color: kGreenColor)),
              SizedBox(
                height: 20,
              ),
              Text('28 Jan 2021 ● $type',
                  style: subTitle.copyWith(
                      fontSize: 12, color: Color(0XFFD8D8D8))),
            ],
          ),
          // Spacer(),
          Text(
            amount,
            style: titleText.copyWith(
                fontSize: 20,
                color: investment ? Color(0XFF00C566) : Color(0XFFDF1414),
                fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
