import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/order.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:fortfolio/domain/widgets/labelled_checkbox.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/home/investment/cubit/investment_cubit.dart';
import 'package:fortfolio/presentation/home/investment/type/cubit/exchange_type_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

import 'package:timelines/timelines.dart';

const kTileHeight = 40.0;

class FortDollarInvestment extends StatelessWidget {
  const FortDollarInvestment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<InvestmentCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<ExchangeTypeCubit>(),
        ),
      ],
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
                  Text(
                    "Invest",
                    style: titleText.copyWith(color: kBlackColor),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flex(
                    direction: Axis.horizontal,
                    children: <Widget>[
                      const Image(image: AssetImage('images/fortdollar.png')),
                      Text.rich(
                        TextSpan(
                            text: 'up to',
                            children: <TextSpan>[
                              TextSpan(
                                  text: '30% returns',
                                  style: subTitle.copyWith(
                                      color: kGreenColor, fontSize: 13))
                            ],
                            style: subTitle.copyWith(
                                fontSize: 13, color: kBlackColor)),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "FortDollar",
                    style: titleText.copyWith(color: kBlackColor, fontSize: 15),
                  ),
                  Text(
                    "How much are you starting with?",
                    style: subTitle.copyWith(
                        color: const Color(0xFF656565), fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: TextFormField(
                      autocorrect: false,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFFF3F6F8),
                          border: InputBorder.none,
                          suffixIcon: const Icon(Icons.attach_money),
                          suffixStyle: TextStyle(
                              color: Colors.grey.shade400, fontSize: 13)),
                      onChanged: (value) => context
                          .read<InvestmentCubit>()
                          .amountInvestedChanged(
                              amountInvested: int.parse(value)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Duration",
                    style: subTitle.copyWith(
                        color: const Color(0xFF656565), fontSize: 13),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // ==================TOGGLE BUTTONS---------------
                  BlocBuilder<ExchangeTypeCubit, ExchangeTypeState>(
                    buildWhen: (previous, current) =>
                        previous.isSelected != current.isSelected,
                    builder: (context, state) {
                      return ToggleButtons(
                        selectedColor: Colors.white,
                        color: Colors.white70,
                        isSelected: state.isSelected,
                        fillColor: const Color.fromRGBO(243, 246, 248, 0.6),
                        renderBorder: false,
                        children: <Widget>[
                          Ink(
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: kPrimaryColor),
                              margin: const EdgeInsets.only(right: 30),
                              child: const Text(
                                '3 months',
                                style: TextStyle(fontSize: 13),
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          Ink(
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: kPrimaryColor),
                              margin: const EdgeInsets.only(right: 30),
                              child: const Text(
                                '6 months',
                                style: TextStyle(fontSize: 13),
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          Ink(
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: kPrimaryColor),
                              child: const Text(
                                '12 months',
                                style: TextStyle(fontSize: 13),
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                        ],
                        onPressed: (int newIndex) => context
                            .read<ExchangeTypeCubit>()
                            .isSelectedChanged(newIndex: newIndex),
                      );
                    },
                  ),
                  // ===============================>
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Summary",
                    style: subTitle.copyWith(
                        color: const Color(0xFF656565), fontSize: 13),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FixedTimeline.tileBuilder(
                    theme: TimelineThemeData(
                        nodePosition: 0,
                        color: const Color(0xffc2c5c9),
                        connectorTheme: const ConnectorThemeData(
                          thickness: 3.0,
                        ),
                        indicatorTheme: const IndicatorThemeData(
                            position: 0, color: kPrimaryColor)),
                    builder: TimelineTileBuilder.connected(
                        itemCount: order.length,
                        indicatorBuilder: (context, index) {
                          return const DotIndicator(
                            color: kPrimaryColor,
                          );
                        },
                        connectorBuilder: (_, index, connectorType) {
                          return const DashedLineConnector(
                            color: kPrimaryColor,
                            thickness: 1.0,
                          );
                        },
                        itemExtentBuilder: (_, __) {
                          return kTileHeight;
                        },
                        contentsBuilder: (_, index) {
                          return timelineContent(
                              order[index].title, order[index].subtitle);
                        }),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Est. APY',
                        style:
                            subTitle.copyWith(fontSize: 14, color: kBlackColor),
                      ),
                      Text(
                        '35.5% ',
                        style:
                            subTitle.copyWith(fontSize: 14, color: kGreenColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  BlocBuilder<InvestmentCubit, InvestmentState>(
                    builder: (context, state) {
                      return LabeledCheckbox(
                          label:
                              'I have read and I agree to Fortfolio Terms of Services Agreemet',
                          value: state.agreementAccepted,
                          onChanged: (value) {
                            context
                                .read<InvestmentCubit>()
                                .agreementAcceptedChanged(
                                    agreementAccepted: value);
                          });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<InvestmentCubit, InvestmentState>(
                    buildWhen: (previous, current) => previous.agreementAccepted != current.agreementAccepted,
                    builder: (context, state) {
                      return CustomAuthFilledButton(
                          text: 'INVEST NOW',
                          onTap: () {
                            AlertDialog(
                              title: const Text(
                                  "Please confirm your investment transaction"),
                              titleTextStyle: titleText.copyWith(fontSize: 16),
                              content: const Text(
                                  "You are about to invest in the selected investment plan, please confirm before proceedeing to pay."),
                              contentTextStyle: subTitle.copyWith(
                                  fontSize: 13, color: kgreyColor),
                              actions: [
                                CustomFilledButton(
                                    text: "CONFIRM",
                                    onTap: () {
                                      context
                                          .read<InvestmentCubit>()
                                          .planNameChanged(
                                              planName: "FortDollar");
                                      context.router.push(
                                          const SelectInvestmentMethodRoute());
                                    }),
                                InkWell(
                                  onTap: () {
                                    context.router.pop();
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 48,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: kWhiteColor,
                                    ),
                                    child: Text(
                                      "CANCEL",
                                      style:
                                          textButton.copyWith(color: kRedColor),
                                    ),
                                  ),
                                )
                              ],
                              backgroundColor: kWhiteColor,
                              titlePadding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              contentPadding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              actionsPadding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                            );
                          },
                          disabled: state.agreementAccepted);
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget timelineContent(String title, String subtitle) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(title, style: subTitle.copyWith(fontSize: 13, color: kBlackColor)),
        Text(
          subtitle,
          style: subTitle.copyWith(fontSize: 13, color: kBlackColor),
        )
      ],
    );
  }
}
