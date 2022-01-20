import 'package:flutter/material.dart';
import 'package:fortfolio/constants/theme.dart';
import 'package:fortfolio/screens/home/dashboard/screens/payment_method/bank/add_bank.dart';
import 'package:get/get.dart';

class BankWithdrawal extends StatelessWidget {
  const BankWithdrawal({Key? key}) : super(key: key);

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
                  "Withdrawal",
                  style: titleText,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Select the bank you are withdrawing to',
                  style: subTitle.copyWith(color: kgreyColor),
                ),
                SizedBox(
                  height: 30,
                ),
                buildtile(),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: TextButton(
                    onPressed: () => Get.to(AddBank()),
                      child: Text(
                    'Add a new bank',
                    style: subTitle.copyWith(fontSize: 13, color: kPrimaryColor),
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildtile() {
    return Container(
      decoration: BoxDecoration(
          color: Color(0XFFF3F6F8), borderRadius: BorderRadius.circular(5.0)),
      child: ListTile(
        title: Text(
          '05555433577888',
          style: titleText.copyWith(fontSize: 15),
        ),
        subtitle: Text(
          'Joy Henshaw',
          style: subTitle.copyWith(fontSize: 13, color: kgreyColor),
        ),
        trailing: Icon(
          Icons.circle_outlined,
          color: Color(0XFF00ADEE),
        ),
      ),
    );
  }
}
