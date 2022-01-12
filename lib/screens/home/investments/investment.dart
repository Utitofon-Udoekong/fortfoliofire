import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortfolio/constants/theme.dart';
import 'package:fortfolio/screens/home/investments/type/fortcrypto/fortcrypto.dart';
import 'package:fortfolio/screens/home/investments/type/fortdollar/fortdollar.dart';
import 'package:fortfolio/screens/home/investments/type/fortshield/fortshield.dart';

class Investment extends StatelessWidget {
  const Investment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Text(
                "Explore Investments",
                style: titleText,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Choose from our current investment plans and begin your financial freedom journey!',
                style: subTitle.copyWith(color: kgreyColor, fontSize: 14),
              ),
              const SizedBox(
                height: 30,
              ),
              buildCard(
                  'fortdollar', 'FortDollar', '\$1,000', '30%', 'Naira or USD',
                  () {
              }),
              const SizedBox(
                height: 15,
              ),
              buildCard('fortshield', 'FortShield', 'N1,000,000', '18%',
                  'Naira, USD or Crypto (USDC/BUSD or USDT only).', () {
              }),
              const SizedBox(
                height: 15,
              ),
              buildCard('fortcrypto', 'FortCrypto', '\$1,000', '15%',
                  'Cryptocurrency (BTC,ETH/USDT and more).', () {
              }),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      )),
    );
  }

  Widget buildCard(String icon, String title, String minPrice, String roi,
      String currency, Function() onPressed) {
    final svg = SvgPicture.asset(
      'images/$icon.svg',
    );
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          color: Color.fromRGBO(246, 249, 255, 0.55)),
      padding: EdgeInsets.symmetric(horizontal: 7.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  svg,
                  const SizedBox(
                    width: 30,
                  ),
                  Flex(
                    direction: Axis.vertical,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: titleText.copyWith(
                            fontSize: 15, fontWeight: FontWeight.w700),
                      ),
                      Text.rich(TextSpan(
                          text: 'up to ',
                          children: <TextSpan>[
                            TextSpan(
                                text: '$roi returns',
                                style: subTitle.copyWith(
                                  color: kGreenColor,
                                  fontSize: 12,
                                )),
                            TextSpan(text: 'per annum'),
                          ],
                          style: subTitle.copyWith(
                            fontSize: 12,
                          )))
                    ],
                  ),
                ],
              ),
              Text(
                '6 - 12 months',
                style: subTitle.copyWith(fontSize: 12, color: kGreenColor),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Accepted currency: $currency',
            style: subTitle.copyWith(fontSize: 14, color: kBlackColor),
          ),
          SizedBox(
            height: 20,
          ),
          Text.rich(TextSpan(
              text: 'Minimum Investment',
              style: subTitle.copyWith(fontSize: 15, color: kBlackColor),
              children: <TextSpan>[
                TextSpan(
                    text: '$minPrice',
                    style: subTitle.copyWith(fontWeight: FontWeight.w600))
              ])),
          TextButton(
              onPressed: onPressed,
              child: Flex(
                direction: Axis.horizontal,
                children: <Widget>[
                  Text(
                    'Learn more',
                    style: subTitle.copyWith(fontSize: 15, color: kGreenColor),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(Icons.arrow_right_alt, color: kGreenColor)
                ],
              )),
        ],
      ),
    );
  }
}
