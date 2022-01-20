import 'package:flutter/material.dart';
import 'package:fortfolio/constants/theme.dart';
import 'package:fortfolio/screens/home/wallet/withdraw/select_investment.dart';
import 'package:fortfolio/widgets/custom_filled_button.dart';
import 'package:get/get.dart';

class WithdrawalPage extends StatelessWidget {
  const WithdrawalPage({Key? key}) : super(key: key);

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
                  onTap: () => Get.back(),
                  child: const Icon(Icons.close),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Withdraw",
                  style: titleText,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Select where you want to withdraw from. Withdrawals have a time lock of 7 days.',
                  style: subTitle.copyWith(color: kgreyColor),
                ),
                SizedBox(
                  height: 30,
                ),
                buildTile('Invested', 350000, 'Withdraw'),
                SizedBox(
                  height: 20,
                ),
                buildTile('Reward', 60000, 'Harvest')
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTile(String title, int amount, String type) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Color(0XFFF3F6F8), borderRadius: BorderRadius.circular(5.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flex(
            direction: Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: subTitle.copyWith(color: kBlackColor, fontSize: 14),
              ),
              SizedBox(
                height: 10,
              ),
              Text('\$' + amount.toString(),
                  style: titleText.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ))
            ],
          ),
          GestureDetector(
            onTap: () => Get.to(SelectInvestmentToWithdraw()),
            child: Container(

              alignment: Alignment.center,
              height: 48,
              width: 100,
              // width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kPrimaryColor,
              ),
              child: Text(
                type,
                style: textButton.copyWith(color: kWhiteColor, fontSize: 15),
              ),
            ),
          )
        ],
      ),
    );
  }
}
