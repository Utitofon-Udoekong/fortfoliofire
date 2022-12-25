import 'package:auto_route/auto_route.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/utils/utils.dart';


class InvestmentPage extends StatelessWidget {
  const InvestmentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isAccountActive = context
        .select((AuthCubit authCubit) => authCubit.state.userModel.isAccountActive);
    return SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
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
                height: 15,
              ),
              Text(
                'How to earn',
                style: titleText.copyWith(color: kgreyColor, fontSize: 18),
              ),
              Text(
                'To earn the yields from these packages, you just have to do one thing, Subscribe!',
                style: subTitle.copyWith(color: kgreyColor, fontSize: 14),
              ),
              const SizedBox(
                height: 30,
              ),
              buildCard(
                  'fortdollar', 'FortDollar', '\$1,000', '30%', 'Naira or USD',
                  () {
                    context.router.push(const FortDollarRoute());
              }, isAccountActive),
              const SizedBox(
                height: 15,
              ),
              buildCard('fortshield', 'FortShield', '1,000,000', '18%',
                  'Naira, USD or Crypto (USDC/BUSD or USDT only).', () {
                context.router.push(const FortShieldRoute());
              }, isAccountActive),
              const SizedBox(
                height: 15,
              ),
              buildCard('fortcrypto', 'FortCrypto', '\$1,000', '15%',
                  'Cryptocurrency (BTC,ETH/USDT and more).', () {
                context.router.push(const FortCryptoRoute());
              }, isAccountActive),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(String icon, String title, String minPrice, String roi,
      String currency, Function() onPressed, bool isAccountActive) {
    return InkWell(
      onTap: isAccountActive ? onPressed : null,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: const Color.fromRGBO(246, 249, 255, 0.55)),
        padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 12.0),
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
                    Image(image: AssetImage("images/$icon.png")),
                    const SizedBox(
                      width: 8,
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
                                  text: '$roi returns ',
                                  style: subTitle.copyWith(
                                    color: kGreenColor,
                                    fontSize: 12,
                                  )),
                              const TextSpan(text: 'per annum'),
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
            const SizedBox(
              height: 20,
            ),
            Text(
              'Accepted currency: $currency',
              style: subTitle.copyWith(fontSize: 14, color: kBlackColor),
            ),
            const SizedBox(
              height: 20,
            ),
            Text.rich(TextSpan(
                text: 'Minimum Investment     ',
                style: subTitle.copyWith(fontSize: 15, color: kBlackColor),
                children: [
                  TextSpan(
                      text: naira(),
                      style: nairaText.copyWith(fontWeight: FontWeight.w600)),
                  TextSpan(
                      text: minPrice,
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
                    const SizedBox(
                      width: 15,
                    ),
                    const Icon(Icons.arrow_right_alt, color: kGreenColor)
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
