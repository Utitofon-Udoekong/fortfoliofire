import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:intl/intl.dart';

import 'cubit/calculator_cubit.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat("#,##0.##", "en_US");
    // final sellPrice =
    //     context.select((AuthCubit cubit) => cubit.state.sellPrice);
    final exchangeIcon =
        context.select((CalculatorCubit cubit) => cubit.state.exchange);
    final invAmount =
        context.select((CalculatorCubit cubit) => cubit.state.investmentAmount);
    return Scaffold(
          body: SafeArea(
        child: Padding(
          padding: kDefaultPadding,
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
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
                    "Investment Calculator",
                    style: titleText.copyWith(color: kBlackColor, fontSize: 24),
                  ),
                  const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox.shrink(),
                  Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 5.0, vertical: 4.0),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: kBlackColor,
                      ),
                      borderRadius: BorderRadius.circular(5.0)),
                  child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet<dynamic>(
                            isScrollControlled: true,
                            context: context,
                            builder: (BuildContext context) {
                              return Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: BlocSelector<CalculatorCubit,
                                    CalculatorState, String>(
                                  selector: (state) {
                                    return state.exchange;
                                  },
                                  builder: (context, selectedExchange) {
                                    return Wrap(
                                      runSpacing: 16,
                                      children: <Widget>[
                                        Text(
                                          'Select currency',
                                          style: titleText.copyWith(
                                              fontSize: 15),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        buildModalTile('9ja', 'NGN',
                                            () {
                                          context
                                              .read<CalculatorCubit>()
                                              .exchangeChanged(exchange: "NGN");
                                          context.router.pop();
                                        }, selectedExchange, "NGN"),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        buildModalTile('usa', 'USD',
                                            () {
                                          context
                                              .read<CalculatorCubit>()
                                              .exchangeChanged(exchange: "USD");
                                          context.router.pop();
                                        }, selectedExchange, "USD"),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        buildModalTile('btc', 'BTC',
                                            () {
                                          context
                                              .read<CalculatorCubit>()
                                              .exchangeChanged(exchange: "BTC");
                                          context.router.pop();
                                        }, selectedExchange, "BTC"),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        buildModalTile('bch', 'BCH',
                                            () {
                                          context
                                              .read<CalculatorCubit>()
                                              .exchangeChanged(exchange: "BCH");
                                          context.router.pop();
                                        }, selectedExchange, "BCH"),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        buildModalTile('ltc', 'LTC',
                                            () {
                                          context
                                              .read<CalculatorCubit>()
                                              .exchangeChanged(exchange: "LTC");
                                          context.router.pop();
                                        }, selectedExchange, "LTC"),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        buildModalTile('usdc', 'USDC',
                                            () {
                                          context
                                              .read<CalculatorCubit>()
                                              .exchangeChanged(exchange: "USDC");
                                          context.router.pop();
                                        }, selectedExchange, "USDC"),
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        buildModalTile('eth', 'ETH',
                                            () {
                                          context
                                              .read<CalculatorCubit>()
                                              .exchangeChanged(exchange: "ETH");
                                          context.router.pop();
                                        }, selectedExchange, "ETH"),
                                      ],
                                    );
                                  },
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
                                    color: kBlackColor, fontSize: 15),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Icon(
                                Icons.keyboard_arrow_down,
                                color: kBlackColor,
                              )
                            ],
                          );
                        },
                      )),
                ),]
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Investment Amount',
                style: subTitle.copyWith(fontSize: 13, color: kgreyColor),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                    // initialValue: invAmount.toStringAsFixed(2),
                    autocorrect: false,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF3F6F8),
                        border: InputBorder.none),
                    textInputAction: TextInputAction.done,
                    onChanged: (String amount) => context
                        .read<CalculatorCubit>()
                        .investmentAmountChanged(
                            investmentAmount: double.parse(amount)),
                    onEditingComplete: () {
                      
                    },
                  ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Investment Duration',
                style: subTitle.copyWith(fontSize: 13, color: kgreyColor),
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
                style: subTitle.copyWith(fontSize: 13, color: kgreyColor),
              ),
              const SizedBox(
                height: 5,
              ),
              BlocBuilder<CalculatorCubit, CalculatorState>(
                buildWhen: (previous, current) =>
                    previous.selectedPlan != current.selectedPlan,
                builder: (context, state) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.all(20.0),
                    decoration: const BoxDecoration(
                      color: Color(0xFFF3F6F8),
                    ),
                    child: Text(state.selectedPlan),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Return Rate',
                style: subTitle.copyWith(fontSize: 13, color: kgreyColor),
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
                          const Icon(
                            Icons.percent,
                            size: 15,
                          )
                        ]),
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
                          '${getSymbol(exchangeIcon)} ${formatter.format(state.investmentAmount)}'),
                      const SizedBox(
                        height: 7,
                      ),
                      buildtile(
                          'Return Rate', '${state.returnRate}% per annum'),
                      const SizedBox(
                        height: 7,
                      ),
                      buildtile('Total Interest',
                          '${getSymbol(exchangeIcon)} ${formatter.format(state.totalReturns - state.investmentAmount)}'),
                      const SizedBox(
                        height: 7,
                      ),
                      buildtile('Total Returns',
                          '${getSymbol(exchangeIcon)} ${formatter.format(state.totalReturns)}'),
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
      ));
  }

  String getSymbol(String iconName){
    switch(iconName){
      case "USD":
        return "\$";
      case "NGN":
        return "₦";
      case "BTC":
        return "BTC";
      case "BCH":
        return "BCH";
      case "LTC":
        return "LTC";
      case "ETH":
        return "ETH";
      case "USDC":
        return "USDC";
      case "DAI":
        return "DAI";
      case "DOGE":
        return "DOGE";
      default:
        return "\$";
    }
  }

  Widget buildModalTile(String icon, String title, Function() ontap,
      String seletedExchange, String exchange) {
    return GestureDetector(
      onTap: ontap,
      child: Row(
        children: <Widget>[
          Image(image: AssetImage("images/$icon.png"),width: 20),
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
