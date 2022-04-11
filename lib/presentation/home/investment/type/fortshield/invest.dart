import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/order.dart';
import 'package:flutter/services.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:fortfolio/domain/widgets/labelled_checkbox.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:timelines/timelines.dart';

import '../../cubit/investment_cubit.dart';

const kTileHeight = 40.0;

class FortShieldInvestment extends StatelessWidget {
  const FortShieldInvestment({Key? key}) : super(key: key);

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
                  onTap: () {
                    context.router.pop();
                    context.read<InvestmentCubit>().reset();
                  },
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
                    const Image(image: AssetImage('images/fortshield.png')),
                    Text.rich(
                      TextSpan(
                          text: 'up to',
                          children: <TextSpan>[
                            TextSpan(
                                text: '18% returns',
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
                  "FortShield",
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
                BlocBuilder<InvestmentCubit, InvestmentState>(
                  builder: (context, state) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: TextFormField(
                        autocorrect: false,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFFF3F6F8),
                          border: InputBorder.none,
                          suffix: DropdownButton<String>(
                              isDense: true,
                              value: state.exchangeType,
                              items: <String>[
                                'NGN',
                                'USD'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Row(
                                    children: <Widget>[
                                      Image(
                                          image: AssetImage(
                                              "images/${value == "NGN" ? "9ja" : "usa"}.png")),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Text(value),
                                    ],
                                  ),
                                );
                              }).toList(),
                              onChanged: (onChanged) {
                                context
                                    .read<InvestmentCubit>()
                                    .exchangeTypeChanged(
                                        exchangeType: onChanged!);
                              }),
                        ),
                        onChanged: (value) => context
                            .read<InvestmentCubit>()
                            .amountInvestedChanged(
                                amountInvested: int.parse(value)),
                        validator: (String? value) => int.tryParse(value!) == null ? 'Field cannot be empty' : int.parse(value) < (state.exchangeType == 'NGN' ? 1e6 : 1e3)  ? 'Minimum investment is ${state.exchangeType == 'NGN' ? 'N1,000,000': (1e6 /560).toStringAsFixed(1)}' : int.parse(value).isNaN ? 'Invalid amount' : null,
                      ),
                    );
                  },
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
                BlocBuilder<InvestmentCubit, InvestmentState>(
                  builder: (context, state) {
                    return ToggleButtons(
                      selectedColor: Colors.white,
                      color: kPrimaryColor,
                      isSelected: state.isSelected,
                      renderBorder: false,
                      children: <Widget>[
                        const SizedBox(width: 0),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: state.duration == 6 ? kPrimaryColor : kWhiteColor,
                              border: Border.all(color: state.duration == 6 ? kPrimaryColor : kWhiteColor, width: state.duration == 6 ? 1.0 : 0.0),),
                          margin: const EdgeInsets.only(right: 30),
                          child: const Text(
                            '6 months',
                            style: TextStyle(fontSize: 13),
                          ),
                          alignment: Alignment.center,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: state.duration == 12 ? kPrimaryColor : kWhiteColor,
                              border: Border.all(color: state.duration == 12 ? kPrimaryColor : kWhiteColor, width: state.duration == 12 ? 1.0 : 0.0),),
                          child: const Text(
                            '12 months',
                            style: TextStyle(fontSize: 13),
                          ),
                          alignment: Alignment.center,
                        ),
                      ],
                      onPressed: (int newIndex) => context
                          .read<InvestmentCubit>()
                          .isSelectedChanged(newIndex: newIndex),
                    );
                  },
                ),
                // ===============================>,
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
                  buildWhen: (previous, current) =>
                      previous.isValid != current.isValid,
                  builder: (context, state) {
                    return CustomAuthFilledButton(
                        text: 'INVEST NOW',
                        onTap: () {
                          var dialog = AlertDialog(
                            title: const Text(
                              "Please confirm your investment transaction",
                              textAlign: TextAlign.center,
                            ),
                            titleTextStyle: titleText.copyWith(fontSize: 16),
                            content: const Text(
                              "You are about to invest in the selected investment plan, please confirm before proceedeing to pay.",
                              textAlign: TextAlign.center,
                            ),
                            contentTextStyle: subTitle.copyWith(
                                fontSize: 13, color: kgreyColor),
                            actions: [
                              CustomFilledButton(
                                  text: "CONFIRM",
                                  onTap: () {
                                    context
                                        .read<InvestmentCubit>()
                                        .planNameChanged(
                                            planName: "FortShield");
                                    context
                                        .read<InvestmentCubit>()
                                        .agreementAcceptedChanged(
                                            agreementAccepted: false);
                                    context.router.push(
                                        const SelectInvestmentMethodRoute());
                                  }),
                              InkWell(
                                onTap: () => context.router.pop(),
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
                            titlePadding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 15),
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10),
                            actionsPadding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10),
                          );
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return dialog;
                              });
                        },
                        disabled: !state.isValid);
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
