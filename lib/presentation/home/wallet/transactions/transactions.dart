import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';

class WalletTransactions extends StatelessWidget {
  const WalletTransactions({Key? key}) : super(key: key);

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
              buildtile('Fort Shield Investment', "successful", 'N500', 3),
              const Divider(),
              buildtile('Investment Withdrawal', "pending", 'N500', 3),
              const Divider(),
              buildtile('Fort Shield Investment', "successful", 'N500', 3),
              const Divider(),
              buildtile('Fort Shield Investment', "successful", 'N500', 6),
              const Divider(),
              buildtile('Investment Withdrawal', "pending", 'N500', 3),
              const Divider(),
              buildtile('Fort Shield Investment', "successful", 'N500', 12),
              const Divider(),
              buildtile('Fort Shield Investment', "cancelled", 'N500', 3),
              const Divider(),
              buildtile('Investment Withdrawal', "pending", 'N500', 6),
              const Divider(),
              buildtile('Fort Shield Investment', "successful", 'N500', 3),
            ],
          )),
    ));
  }

  Widget buildtile(String title, String status, String amount, int duration) {
    return GestureDetector(
      onTap: (){
        // AlertDialog(

        // );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        decoration: const BoxDecoration(
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
                const SizedBox(
                  height: 8,
                ),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "30% returns",
                      style: subTitle.copyWith(
                          fontSize: 12, color: kgreyColor.withOpacity(0.4))),
                  TextSpan(text: "● $duration months")
                ])),
                const SizedBox(
                  height: 8,
                ),
                Text('28 Jan 2021',
                    style: subTitle.copyWith(
                        fontSize: 12, color: const Color(0XFFD8D8D8))),
              ],
            ),
            // Spacer(),
            Flex(
              crossAxisAlignment: CrossAxisAlignment.start,
              direction: Axis.vertical,
              children: <Widget>[
                Text(
                  amount,
                  style: titleText.copyWith(
                      fontSize: 20,
                      color: status == "successful"
                          ? const Color(0XFF00C566)
                          : status == "pending"
                              ? const Color.fromARGB(239, 226, 167, 4)
                              : const Color(0XFFDF1414),
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 8,),
                Text(status, style: subTitle.copyWith(
                      fontSize: 12,
                      color: kgreyColor,
                      fontWeight: FontWeight.w500))
              ],
            )
          ],
        ),
      ),
    );
  }
}
