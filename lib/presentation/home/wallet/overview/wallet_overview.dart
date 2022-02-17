import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:fortfolio/utils/pages.dart';

class WalletOverview extends StatelessWidget {
  const WalletOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final eye = SvgPicture.asset('images/eye.svg', width: 20);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flex(
                    direction: Axis.vertical,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Flex(
                        direction: Axis.horizontal,
                        children: [
                          Text('Total Balance',
                              style: subTitle.copyWith(
                                  fontSize: 14, color: kWhiteColor)),
                          const SizedBox(
                            width: 10,
                          ),
                          eye
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text('\$10000',
                          style: subTitle.copyWith(
                              fontSize: 14, color: kWhiteColor))
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 4.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: kWhiteColor,
                          // width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(5.0)),
                    child: GestureDetector(
                        onTap: () {
                          BottomSheet(
                              onClosing: (){},
                              builder: (context) {
                                return Column(
                                  children: <Widget>[
                                    Text(
                                      'Select balance',
                                      style: titleText.copyWith(fontSize: 15),
                                    ),
                                    buildtile('9ja', 'NGN Balance', () => null),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    buildtile('usa', 'USD Balance', () => null),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    buildtile(
                                        'bitcoin', 'BTC Balance', () => null),
                                  ],
                                );
                              },
                              backgroundColor: kWhiteColor);
                        },
                        child: Flex(
                          direction: Axis.horizontal,
                          children: <Widget>[
                            Text(
                              'USD',
                              style: subTitle.copyWith(
                                  color: kWhiteColor, fontSize: 15),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down,
                              color: kWhiteColor,
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomFilledButton(text: 'Withdrawal', onTap: () => context.router.pushNamed(walletWithdrawal)),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Color(0XFFF3F6F8),
              thickness: 2.0,
            ),
            const SizedBox(
              height: 20,
            ),
            Flex(
              direction: Axis.horizontal,
              children: const <Widget>[
                Text(
                  'Investment Packages',
                  style: TextStyle(
                      color: Color(0XFF535454),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                // CheckboxListTile(
                //   value: false,
                //   onChanged: (value) {},
                //   title: Text('Hide wallet balance', style: subTitle.copyWith(fontSize: 14, color: kgreyColor),),
                // )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            buildcard('FortDollar', 'fortdollar', () => context.router.pushNamed(selectInvestmentMethod)),
            const SizedBox(
              height: 20,
            ),
            buildcard('FortCrypto', 'fortcrypto', () => context.router.pushNamed(selectInvestmentMethod)),
            const SizedBox(
              height: 20,
            ),
            buildcard('FortShield', 'fortshield', () => context.router.pushNamed(selectInvestmentMethod)),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget buildtile(String icon, String title, Function() ontap) {
    final Widget svg = SvgPicture.asset(
      'images/$icon.svg',
      semanticsLabel: title,
    );
    return GestureDetector(
      onTap: ontap,
      child: Container(
        // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          children: <Widget>[
            svg,
            const SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: subTitle.copyWith(
                  color: kBlackColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 15),
            ),
            const Spacer(),
            const Icon(
              Icons.circle_outlined,
              color: klightblue,
            )
          ],
        ),
      ),
    );
  }

  Widget buildcard(String title, String path, Function() ontap) {
    final Widget svg = SvgPicture.asset(
      'images/$path.svg',
      semanticsLabel: title,
    );
    return GestureDetector(
      onTap: ontap,
      child: SizedBox(
        width: double.infinity,
        child: Row(
          children: <Widget>[
            Image(image: AssetImage("images/$path.png")),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: titleText.copyWith(fontSize: 15),
            ),
            const Spacer(),
            Text(
              "*******",
              style: titleText.copyWith(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
