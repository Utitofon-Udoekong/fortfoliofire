import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';

class SelectInvestmentToWithdraw extends StatelessWidget {
  const SelectInvestmentToWithdraw({Key? key}) : super(key: key);

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
                  "Select an investment",
                  style: titleText,
                ),
                const SizedBox(
                  height: 30,
                ),
                buildTile('FortDollar', 350000),
                const SizedBox(
                  height: 10,
                ),
                buildTile(
                  'FortShield',
                  60000,
                ),
                const SizedBox(
                  height: 10,
                ),
                buildTile(
                  'FortCrypto',
                  60,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTile(String title, int amount) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color(0XFFF3F6F8), borderRadius: BorderRadius.circular(5.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flex(
            crossAxisAlignment: CrossAxisAlignment.start,
            direction: Axis.vertical,
            children: <Widget>[
              Text(
                title,
                style: subTitle.copyWith(color: kBlackColor, fontSize: 14),
              ),
              const SizedBox(
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
            onTap: () => {
              // Get.bottomSheet(
              //     Padding(
              //       padding: kDefaultPadding,
              //       child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: <Widget>[
              //           SizedBox(
              //             height: 30,
              //           ),
              //           Text(
              //             'How much are you\nwithdrawing?',
              //             style: titleText.copyWith(fontSize: 20),
              //           ),
              //           SizedBox(
              //             height: 30,
              //           ),
              //           Text(
              //             'Amount',
              //             style: subTitle.copyWith(color: kgreyColor),
              //           ),
              //           SizedBox(
              //             height: 10,
              //           ),
              //           TextFormField(
              //             // controller: controller.code,
              //             autocorrect: false,
              //             keyboardType: TextInputType.number,
              //             decoration: InputDecoration(
              //                 filled: true,
              //                 fillColor: Color(0xFFF3F6F8),
              //                 border: InputBorder.none),
              //             // onChanged: (value) => controller.updateResetPasswordform(value),
              //           ),
              //           SizedBox(
              //             height: 10,
              //           ),
              //           CustomFilledButton(
              //               text: 'CONTINUE',
              //               onTap: () {
              //                 Get.to(SelectWithdrawalMethod());
              //               })
              //         ],
              //       ),
              //     ),
              //     backgroundColor: kWhiteColor)
            },
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
                'Withdraw',
                style: textButton.copyWith(color: kWhiteColor, fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
