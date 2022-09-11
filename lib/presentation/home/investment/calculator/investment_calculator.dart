import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/injection.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';

import 'cubit/calculator_cubit.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat("#,##0.##", "en_US");
    final selectedExchange =
        context.select((CalculatorCubit cubit) => cubit.state.exchange);
    final sellPrice =
        context.select((AuthCubit cubit) => cubit.state.sellPrice);
    return BlocProvider(
      create: (context) => getIt<CalculatorCubit>(),
      child: Scaffold(
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                          Text(
                            "Investment Calculator",
                            style: titleText.copyWith(color: kBlackColor),
                          ),
Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5.0, vertical: 4.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: kWhiteColor,
                        ),
                        borderRadius: BorderRadius.circular(5.0)),
                    child: GestureDetector(
                        onTap: () {
                          showModalBottomSheet<dynamic>(
                              isScrollControlled: true,
                              context: context,
                              builder: (BuildContext context) {
                                return SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.35,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          'Select balance',
                                          style:
                                              titleText.copyWith(fontSize: 15),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        buildModalTile('9ja', 'NGN Balance', () {
                                          context
                                              .read<CalculatorCubit>().calculateInNaira(sellPrice: sellPrice);
                                          context.router.pop();
                                        }, selectedExchange, "NGN"),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        buildModalTile('usa', 'USD Balance', () {
                                          context
                                              .read<CalculatorCubit>().calculateInUSD(sellPrice: sellPrice);
                                          context.router.pop();
                                        }, selectedExchange, "USD"),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        buildModalTile('btc', 'BTC Balance', () {
                                          context
                                              .read<CalculatorCubit>().calculateInBTC(sellPrice: sellPrice);
                                          context.router.pop();
                                        }, selectedExchange, "BTC"),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              backgroundColor: kWhiteColor);
                        },
                        child: BlocBuilder<CalculatorCubit, CalculatorState>(
                          buildWhen: (previous, current) =>
                              previous.exchange != current.exchange,
                          builder: (context, state) {
                            return Flex(
                              direction: Axis.horizontal,
                              children: <Widget>[
                                Text(
                                  state.exchange,
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
                            );
                          },
                        )),
                  ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Investment Amount',
                            style: subTitle.copyWith(
                                fontSize: 13, color: kgreyColor),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          BlocBuilder<CalculatorCubit, CalculatorState>(
                            builder: (context, state) {
                              return TextFormField(
                                autocorrect: false,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xFFF3F6F8),
                                    border: InputBorder.none,
                                    prefixIcon: Icon(Icons.attach_money)),
                                onChanged: (String amount) => context
                                    .read<CalculatorCubit>()
                                    .investmentAmountChanged(
                                        investmentAmount: double.parse(amount)),
                              );
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Investment Duration',
                            style: subTitle.copyWith(
                                fontSize: 13, color: kgreyColor),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          BlocBuilder<CalculatorCubit, CalculatorState>(
                            buildWhen: (previous, current) =>
                                previous.duration != current.duration,
                            builder: (context, state) {
                              return DropdownButtonFormField(
                                items: state.durations,
                                onChanged: (int? newValue) => context
                                    .read<CalculatorCubit>()
                                    .durationChanged(duration: newValue!),
                                value: state.duration,
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: const Color(0xFFF3F6F8),
                                    border: InputBorder.none,
                                    suffix: Text(
                                      'Months',
                                      style: subTitle.copyWith(
                                          fontSize: 12, color: kgreyColor),
                                    )),
                                icon: const Icon(Icons.keyboard_arrow_down),
                              );
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Investment Plan',
                            style: subTitle.copyWith(
                                fontSize: 13, color: kgreyColor),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          BlocBuilder<CalculatorCubit, CalculatorState>(
                            buildWhen: (previous, current) =>
                                previous.selectedPlan != current.selectedPlan,
                            builder: (context, state) {
                              return DropdownButtonFormField(
                                items: state.dropdownItems,
                                onChanged: (String? selectedPlan) => context
                                    .read<CalculatorCubit>()
                                    .selectedPlanChanged(
                                        selectedPlan: selectedPlan!),
                                value: state.selectedPlan,
                                decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Color(0xFFF3F6F8),
                                  border: InputBorder.none,
                                ),
                                icon: const Icon(Icons.keyboard_arrow_down),
                              );
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Return Rate',
                            style: subTitle.copyWith(
                                fontSize: 13, color: kgreyColor),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          BlocBuilder<CalculatorCubit, CalculatorState>(
                            buildWhen: (previous, current) =>
                                previous.returnRate != current.returnRate,
                            builder: (context, state) {
                              return Container(
                                padding: const EdgeInsets.all(20.0),
                                decoration: const BoxDecoration(
                                  color: Color(0xFFF3F6F8),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(state.returnRate.toString()),
                                    const Icon(Icons.percent, size: 15,)
                                  ]
                                ),
                              );
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Result',
                            style: titleText.copyWith(fontSize: 15),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          BlocBuilder<CalculatorCubit, CalculatorState>(
                            builder: (context, state) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  buildtile('Starting Amount',
                                      '\$${formatter.format(state.investmentAmount)}'),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  buildtile('Return Rate',
                                      '${state.returnRate}% per annum'),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  buildtile('Total Interest',
                                      '\$${formatter.format(state.totalReturns - state.investmentAmount)}'),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  buildtile('Total Returns',
                                      '\$${formatter.format(state.totalReturns)}'),
                                ],
                              );
                            },
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                        ]),
              ),
            ),
          )),
    );
  }

  Widget buildModalTile(String icon, String title, Function() ontap,
      String seletedExchange, String exchange) {
    return GestureDetector(
      onTap: ontap,
      child: Row(
        children: <Widget>[
          Image(image: AssetImage("images/$icon.png")),
          const SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: subTitle.copyWith(
                color: kBlackColor, fontWeight: FontWeight.w600, fontSize: 15),
          ),
          const Spacer(),
          Icon(
            seletedExchange == exchange
                ? Icons.circle_rounded
                : Icons.circle_outlined,
            color: klightblue,
          )
        ],
      ),
    );
  }

  Widget buildtile(String title, String sub) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          title,
          style: subTitle.copyWith(fontSize: 13, color: kBlackColor),
        ),
        Text(
          sub,
          style: subTitle.copyWith(
              fontSize: 13, color: kBlackColor, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
