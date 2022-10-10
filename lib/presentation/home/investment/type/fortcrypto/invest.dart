import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_loading_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/tac_text.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:jiffy/jiffy.dart';
import 'package:timelines/timelines.dart';
import 'package:fortfolio/domain/constants/order.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/labelled_checkbox.dart';

import '../../cubit/investment_cubit.dart';

const kTileHeight = 40.0;

class FortCryptoInvestment extends StatelessWidget {
  const FortCryptoInvestment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final duration =
        context.select((InvestmentCubit element) => element.state.duration);
    final endDate = Jiffy(DateTime.now()).add(months: duration.toInt()).yMMMMd;
    return Scaffold(
      body: MultiBlocListener(
        listeners: [
          BlocListener<InvestmentCubit, InvestmentState>(
            listenWhen: (previous, current) =>
                previous.charge.hostedUrl != current.charge.hostedUrl &&
                current.charge.hostedUrl.isNotEmpty,
            listener: (context, state) {
              context.router.push(const CryptoInvestmentPageRoute());
            },
          ),
          BlocListener<InvestmentCubit, InvestmentState>(
            listenWhen: (previous, current) =>
                previous.failure != current.failure &&
                current.failure.isNotEmpty,
            listener: (context, state) {
              CustomSnackbar.showSnackBar(context, state.failure, true);
            },
          ),
        ],
        child: WillPopScope(
          onWillPop: () async {
            context.read<InvestmentCubit>().reset();
            return true;
          },
          child: SafeArea(
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Image(image: AssetImage('images/fortcrypto.png')),
                      Text.rich(
                        TextSpan(
                            text: ' up to ',
                            children: <TextSpan>[
                              TextSpan(
                                  text: '15% returns',
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
                    "FortCrypto",
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
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            errorMaxLines: 2,
                            filled: true,
                            fillColor: const Color(0xFFF3F6F8),
                            border: InputBorder.none,
                            suffix: DropdownButton<String>(
                                isDense: true,
                                value: state.coin,
                                items: <String>[
                                  'BTC',
                                  'BCH',
                                  'ETH',
                                  'LTC',
                                  'USDC',
                                  'DAI',
                                  'DOGE',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (coin) {
                                  context
                                      .read<InvestmentCubit>()
                                      .coinChanged(coin: coin!);
                                  context
                                      .read<InvestmentCubit>()
                                      .setCryptoBaseAmount(coin: coin);
                                }),
                            suffixStyle: TextStyle(
                                color: Colors.grey.shade400, fontSize: 13),
                          ),
                          onChanged: (value) => context
                              .read<InvestmentCubit>()
                              .amountInvestedChanged(
                                  amountInvested: double.parse(value)),
                          validator: (String? value) => double.tryParse(value!) ==
                                  null
                              ? 'Field cannot be empty'
                              : double.parse(value) < state.baseAmount
                                  ? 'Minimum investment is ${state.baseAmount} ${state.coin}'
                                  : double.parse(value).isNaN
                                      ? 'Invalid amount'
                                      : null,
                        ),
                      );
                    },
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Select Investment Duration",
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
                        isSelected: state.isSelected,
                        renderBorder: false,
                        children: <Widget>[
                          Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: state.duration == 3
                                  ? kPrimaryColor
                                  : kWhiteColor,
                              border: Border.all(
                                  color: state.duration == 3
                                      ? kPrimaryColor
                                      : kWhiteColor,
                                  width: state.duration == 3 ? 1.0 : 0.0),
                            ),
                            margin: const EdgeInsets.only(right: 14),
                            alignment: Alignment.center,
                            child: const Text(
                              '3 months',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: state.duration == 6
                                  ? kPrimaryColor
                                  : kWhiteColor,
                              border: Border.all(
                                  color: state.duration == 6
                                      ? kPrimaryColor
                                      : kWhiteColor,
                                  width: state.duration == 6 ? 1.0 : 0.0),
                            ),
                            margin: const EdgeInsets.only(right: 14),
                            alignment: Alignment.center,
                            child: const Text(
                              '6 months',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: state.duration == 12
                                  ? kPrimaryColor
                                  : kWhiteColor,
                              border: Border.all(
                                  color: state.duration == 12
                                      ? kPrimaryColor
                                      : kWhiteColor,
                                  width: state.duration == 12 ? 1.0 : 0.0),
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              '12 months',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                        onPressed: (int newIndex) => context
                            .read<InvestmentCubit>()
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
                            position: 0.6, color: kPrimaryColor)),
                    builder: TimelineTileBuilder.connected(
                        itemCount: order(endDate).length,
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
                          return Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: timelineContent(
                              order(endDate)[index].title,
                              order(endDate)[index].subtitle,
                              order(endDate)[index].tooltip,
                              order(endDate)[index].tooltipText,
                            ),
                          );
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
                        '${15 * (duration / 12)}% ',
                        style: subTitle.copyWith(
                            fontSize: 15,
                            color: kGreenColor,
                            fontWeight: FontWeight.w600),
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
                              const TACText(),
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
                                BlocSelector<InvestmentCubit, InvestmentState,
                                    bool>(
                                  selector: (state) {
                                    return state.isLoading;
                                  },
                                  builder: (context, loading) {
                                    return CustomLoadingButton(
                                        text: "CONFIRM",
                                        onTap: () {
                                          context
                                              .read<InvestmentCubit>()
                                              .createCharge();
                                        },
                                        loading: loading);
                                  },
                                ),
                                InkWell(
                                  onTap: () => context.router.pop(),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 45,
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
        )
        ),
      ),
    );
  }

  Widget timelineContent(
      String title, String subtitle, bool tooltip, String? tooltipMessage) {
    return Flex(
      direction: Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        tooltip
            ? Tooltip(
                message: tooltipMessage,
                triggerMode: TooltipTriggerMode.tap,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: kSecondaryColor),
                height: 50,
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(title,
                    style: subTitle.copyWith(
                        fontSize: 13,
                        color: kBlackColor,
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.dashed)),
              )
            : Text(title,
                style: subTitle.copyWith(
                  fontSize: 13,
                  color: kBlackColor,
                )),
        Text(
          subtitle,
          style: subTitle.copyWith(fontSize: 13, color: kBlackColor),
        )
      ],
    );
  }
}
