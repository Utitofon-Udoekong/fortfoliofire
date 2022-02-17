import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';

class CryptoInvestmentPage extends StatefulWidget {
  const CryptoInvestmentPage({Key? key}) : super(key: key);

  @override
  _CryptoInvestmentPageState createState() => _CryptoInvestmentPageState();
}

class _CryptoInvestmentPageState extends State<CryptoInvestmentPage> {
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
                  "Invest With Crypto",
                  style: titleText,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                    'Copy the account details provided below. Transfer the amount you want to fund and your investment plan will be funded immediately!',
                    style: subTitle.copyWith(
                      color: kgreyColor,
                      fontSize: 13,
                    )),
                const SizedBox(
                  height: 15,
                ),
                Text(
                    'Make payments using your personal account with the same name details you have on Fortfolio.',
                    style: subTitle.copyWith(
                      color: kgreyColor,
                      fontSize: 13,
                    )),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                          width: 1.5, color: const Color(0XFFF3F6F8))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      buildtile('Network', 'Binance Smart Chain'),
                      const SizedBox(
                        height: 15,
                      ),
                      Flex(
                        direction: Axis.horizontal,
                        children: <Widget>[
                          buildtile('Wallet Address', 'x45566778899990000'),
                          IconButton(
                              onPressed: () {
                                 Clipboard.setData(const ClipboardData(text: "0627767963")).then((_) {
                              CustomSnackbar.showSnackBar(context, "Text copied", false);
                            });
                              },
                              icon: const Icon(
                                Icons.copy_rounded,
                                color: kPrimaryColor,
                              ))
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildtile(String title, String subtitle) {
    return Flex(
      direction: Axis.vertical,
      children: <Widget>[
        Text(
          title,
          style: subTitle.copyWith(
              fontSize: 12, color: kgreyColor.withOpacity(0.7)),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          subtitle,
          style: titleText.copyWith(fontSize: 15),
        )
      ],
    );
  }
}
