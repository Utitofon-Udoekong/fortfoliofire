import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';

import 'cubit/calculator_cubit.dart';

class Calculator extends StatelessWidget{
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return BlocProvider(
      create: (context) => CalculatorCubit(),
      child: SafeArea(
          child: Scaffold(
              body: SingleChildScrollView(
                  child: Padding(
                      padding: kDefaultPadding,
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
                              "Investment Calaculator",
                              style: titleText.copyWith(color: kBlackColor),
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
                            TextFormField(
                                autocorrect: false,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xFFF3F6F8),
                                    border: InputBorder.none,
                                    prefixIcon: Icon(Icons.attach_money)),
                                // onChanged: (String amount){
                                //   investmentAmount = int.parse(amount);
                                // },
                                onChanged: (String amount) => context
                                    .read<CalculatorCubit>()
                                    .investmentAmountChanged(
                                        investmentAmount: int.parse(amount))),
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
                              buildWhen: (previous, current) => previous.duration != current.duration,
                              builder: (context, state) {
                                return DropdownButtonFormField(
                                  items: state.durations,
                                  onChanged: (String? newValue) => context
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
                            // TextFormField(
                            //   initialValue: currentSliderValue.text,
                            //   autocorrect: false,
                            //   keyboardType: TextInputType.number,
                            //   textInputAction: TextInputAction.next,
                            //   decoration: InputDecoration(
                            //       filled: true,
                            //       fillColor: const Color(0xFFF3F6F8),
                            //       border: InputBorder.none,
                            //       suffix: Text(
                            //         'Months',
                            //         style: subTitle.copyWith(
                            //             fontSize: 12, color: kgreyColor),
                            //       )),
                            //   onChanged: (String newInt){
                            //     duration = int.parse(newInt);
                            //   },
                            // ),
                            // Slider.adaptive(
                            //   value: double.parse(currentSliderValue.text),
                            //   onChanged: (double value) {
                            //     setState(() {
                            //       currentSliderValue.text = value.toString();
                            //     });
                            //   },
                            //   min: 3,
                            //   max: 12,
                            //   divisions: 3,
                            //   label: currentSliderValue.text
                            // ),
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
                              buildWhen: (previous, current) => previous.selectedPlan != current.selectedPlan,
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
                              buildWhen: (previous, current) => previous.returnRate != current.returnRate,
                              builder: (context, state) {
                                return TextFormField(
                                  initialValue: state.returnRate.toString(),
                                  autocorrect: false,
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.next,
                                  decoration: const InputDecoration(
                                      filled: true,
                                      fillColor: Color(0xFFF3F6F8),
                                      border: InputBorder.none,
                                      suffixIcon: Icon(Icons.percent)),
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
                            BlocBuilder<CalculatorCubit, CalculatorState>(
                              builder: (context, state) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    buildtile('Starting Amount', '\$${state.investmentAmount}'),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    buildtile('Return Rate', '${state.returnRate}%'),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    buildtile('Total Interest',
                                        '\$${state.totalReturns}'),
                                  ],
                                );
                              },
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ]))))),
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

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(child: Text("FortDollar"), value: "FortDollar"),
      const DropdownMenuItem(child: Text("FortCrypto"), value: "FortCrypto"),
      const DropdownMenuItem(child: Text("FortShield"), value: "FortShield"),
    ];
    return menuItems;
  }

  List<DropdownMenuItem<String>> get durations {
    List<DropdownMenuItem<String>> durationList = [
      const DropdownMenuItem(child: Text("3"), value: "3"),
      const DropdownMenuItem(child: Text("6"), value: "6"),
      const DropdownMenuItem(child: Text("12"), value: "12"),
    ];
    return durationList;
  }
}
