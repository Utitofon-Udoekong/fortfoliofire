import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/plans.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:fortfolio/presentation/home/investment/cubit/investment_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:fortfolio/utils/utils.dart';

class FortCrypto extends StatelessWidget {
  const FortCrypto({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final coin = context.select((InvestmentCubit bloc) => bloc.state.coin);
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
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/estate.png'))),
                  alignment: Alignment.center,
                  child:
                      const Image(image: AssetImage('images/fortcrypto.png')),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'FortCrypto Investment',
                  style: titleText.copyWith(fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'We accept this capital in various coins, such as BTC, ETH, USDT, and more. Your capital is being invested in crypto currency. Invest a minimum of \$1,000 (or its equivalent in crypto) and earn a 15% yield annually.',
                  style: subTitle.copyWith(fontSize: 13, color: kgreyColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomFilledButton(
                    text: 'Invest',
                    onTap: () {
                      context.read<InvestmentCubit>().planNameChanged( planName: "FortCrypto");
                      context.read<InvestmentCubit>().setCryptoBaseAmount(coin: coin);
                      context
                          .read<InvestmentCubit>()
                          .exchangeTypeChanged(exchangeType: "USD");
                      context.router.push(const FortCryptoInvestmentRoute());
                    }),
                const SizedBox(
                  height: 20,
                ),
                const Divider(),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Investment info',
                  style: titleText.copyWith(
                      fontSize: 15),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'TERMS OF USE',
                  style: subTitle.copyWith(fontSize: 13.5, color: kgreyColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'The investment date begins Two (2) weeks after we receive your capital. The investment period may be six (6) months or Twelve (12) months depending on your choice of duration. You may choose to roll over your capital at the end of the agreed investment period. The Return on Investment to be paid may be subject to change from time to time due to external factors. You will be informed of this change (if any) when you opt to roll over your capital',
                  style: subTitle.copyWith(fontSize: 13, color: kgreyColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'During the period of investment, Return on Investment is to be paid every month. You may choose to be paid your Return on Investment in a lump sum at the end of the investment period together with your capital. You may also choose to roll over the capital together with the return on investment.',
                  style: subTitle.copyWith(fontSize: 13, color: kgreyColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Similar Investments',
                  style: titleText.copyWith(
                      fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 210,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 16, right: 6),
                    itemCount: plans.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => context.router.push(plans[index].onPressed),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              color: const Color.fromRGBO(246, 249, 255, 0.55)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 7.0, vertical: 12.0),
                          margin: const EdgeInsets.only(right: 12.0),
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
                                      Image(
                                          image: AssetImage(
                                              'images/${plans[index].icon}.png')),
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      Flex(
                                        direction: Axis.vertical,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            plans[index].title,
                                            style: titleText.copyWith(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Text.rich(TextSpan(
                                              text: 'up to ',
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text:
                                                        '${plans[index].roi} returns ',
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
                                    style: subTitle.copyWith(
                                        fontSize: 12, color: kGreenColor),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Accepted currency: ${plans[index].currency}',
                                style: subTitle.copyWith(
                                    fontSize: 14, color: kBlackColor),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text.rich(TextSpan(
                                  text: 'Minimum Investment ',
                                  style: subTitle.copyWith(
                                      fontSize: 15, color: kBlackColor),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: plans[index].title == 'FortShield' ? naira() : '\$',
                                        style: nairaText.copyWith(
                                            fontWeight: FontWeight.w600)),
                                    TextSpan(
                                        text: plans[index].minPrice,
                                        style: subTitle.copyWith(
                                            fontWeight: FontWeight.w600))
                                  ])),
                              TextButton(
                                  onPressed: () => context.router.push(plans[index].onPressed),
                                  child: Flex(
                                    direction: Axis.horizontal,
                                    children: <Widget>[
                                      Text(
                                        'Learn more',
                                        style: subTitle.copyWith(
                                            fontSize: 15, color: kGreenColor),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Icon(Icons.arrow_right_alt,
                                          color: kGreenColor)
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
