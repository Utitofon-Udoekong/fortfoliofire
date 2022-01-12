import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortfolio/constants/theme.dart';
import 'package:fortfolio/widgets/custom_filled_button.dart';

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
                    padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 4.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: kWhiteColor,
                        // width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(5.0)
                    ),
                    child: GestureDetector(
                      onTap: (){
                        // Get.bottomSheet(Column(
                        //   children: <Widget>[
                        //     Text('Select balance', style: titleText.copyWith(fontSize: 15),),
                        //     buildtile('9ja', 'NGN Balance', () => null),
                        //     const SizedBox(height: 10,),
                        //     buildtile('usa', 'USD Balance', () => null),
                        //     const SizedBox(height: 10,),
                        //     buildtile('bitcoin', 'BTC Balance', () => null),
                        //   ],
                        // ),
                        // backgroundColor: kWhiteColor);
                      },
                      child: Flex(
                          direction: Axis.horizontal,
                          children: <Widget>[
                            Text(
                              'USD',
                              style: subTitle.copyWith(color: kWhiteColor, fontSize: 15),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down,
                              color: kWhiteColor,
                            )
                          ],
                        )
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomFilledButton(
                text: 'Withdrawal', onTap: () => null),
            const SizedBox(
              height: 10,
            ),
            CustomFilledButton(
                text: 'timelinel', onTap: () => null),
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
              children: <Widget>[
                const Text(
                  'Investment Packages',
                  style: const TextStyle(
                      color: const Color(0XFF535454),
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
              height: 20,
            ),
            buildcard(0XFF59B1EE, 'FortDollar', 'fortdollar'),
            const SizedBox(
              height: 10,
            ),
            buildcard(0XFFA5DBFF, 'FortCrypto', 'fortcrypto'),
            const SizedBox(
              height: 10,
            ),
            buildcard(0XFF33D185, 'FortShield', 'fortshield'),
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
                  color: kBlackColor, fontWeight: FontWeight.w600, fontSize: 15),
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

  Widget buildcard(int color, String title, String path) {
    final svg = SvgPicture.asset('images/$path.svg');
    return Container(
      height: 184,
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          svg,
          const SizedBox(
            height: 20,
          ),
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(title,
                  style: subTitle.copyWith(fontSize: 14, color: kWhiteColor)),
              Text('35%',
                  style: subTitle.copyWith(fontSize: 14, color: kWhiteColor))
            ],
          ),
          // SizedBox(
          //   height: 4,
          // ),
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('\$20.000',
                  style: subTitle.copyWith(fontSize: 14, color: kWhiteColor)),
              Text('\$13.000',
                  style: subTitle.copyWith(fontSize: 14, color: kWhiteColor))
            ],
          ),
        ],
      ),
    );
  }
}
