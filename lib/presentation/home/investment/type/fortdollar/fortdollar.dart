import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/plans.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

class FortDollar extends StatelessWidget {
  const FortDollar({Key? key}) : super(key: key);

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
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 180,
                  decoration: const BoxDecoration(
                      image: DecorationImage(image: AssetImage('images/estate.png'))),
                  child: const Image(image: AssetImage('images/fortdollar.png')),
                  alignment: Alignment.center,
                ),
                const SizedBox(
                height: 20,
              ),
                Text(
                  'FortDollar Investment',
                  style: titleText.copyWith(fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                  style: subTitle.copyWith(fontSize: 13, color: kgreyColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomFilledButton(
                    text: 'Invest',
                    onTap: () {
                      context.router.push(const FortDollarInvestmentRoute());
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
                  style: subTitle.copyWith(
                      fontSize: 15,
                      color: kgreyColor,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'HOW YOU EARN',
                  style: subTitle.copyWith(fontSize: 13.5, color: kgreyColor),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                  style: subTitle.copyWith(fontSize: 13, color: kgreyColor),
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
                  'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                  style: subTitle.copyWith(fontSize: 13, color: kgreyColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Similar Investments',
                  style: subTitle.copyWith(
                      fontSize: 15,
                      color: kgreyColor,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 16, right: 6),
                    itemCount: plans.length,
                    itemBuilder: (context, index) {
                      return Container(
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
                                    Image(image: AssetImage('images/${plans[index].icon}.png')),
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
                                                      '${plans[index].roi} returns',
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
                                text: 'Minimum Investment',
                                style: subTitle.copyWith(
                                    fontSize: 15, color: kBlackColor),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: plans[index].minPrice,
                                      style: subTitle.copyWith(
                                          fontWeight: FontWeight.w600))
                                ])),
                            TextButton(
                                onPressed: plans[index].onPressed,
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
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
