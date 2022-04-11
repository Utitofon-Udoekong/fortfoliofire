import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:fortfolio/presentation/home/investment/cubit/investment_cubit.dart';

class NairaAccount extends StatelessWidget {
  const NairaAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int amountInvested = context.select(
        (InvestmentCubit investmentCubit) =>
            investmentCubit.state.amountInvested!);
    final String exchangeType = context.select(
        (InvestmentCubit investmentCubit) =>
            investmentCubit.state.exchangeType);
    return Scaffold(
      body: BlocBuilder<InvestmentCubit, InvestmentState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const LoadingView();
          } else {
            return SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'N',
                      style: subTitle.copyWith(
                          color: kBlackColor,
                          fontSize: 14,
                          decoration: TextDecoration.lineThrough),
                    ),
                    Text(
                      exchangeType == "USD" ? '${amountInvested * 560}' : '$amountInvested',
                      style:
                          subTitle.copyWith(color: kBlackColor, fontSize: 14),
                    ),
                  ],
                ),
                Row(children: <Widget>[
                  const Expanded(child: Divider()),
                  Container(
                    padding: const EdgeInsets.all(13),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(203, 241, 255, 0.18),
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      '\$1 = N560',
                      style:
                          subTitle.copyWith(fontSize: 13, color: kPrimaryColor),
                    ),
                    alignment: Alignment.center,
                  ),
                  const Expanded(child: Divider())
                ]),
                Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '\$',
                      style: subTitle.copyWith(
                          color: kBlackColor,
                          fontSize: 14,
                          decoration: TextDecoration.lineThrough),
                    ),
                    Text(
                      exchangeType == "USD"
                          ? amountInvested.toStringAsFixed(2)
                          : (amountInvested / 560).toStringAsFixed(2),
                      style:
                          subTitle.copyWith(color: kBlackColor, fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                    'Copy the account details provided below. Transfer the amount you want to fund and your investment plan will be funded immediately!',
                    style: subTitle.copyWith(
                      color: kgreyColor,
                      fontSize: 13,
                    )),
                const SizedBox(
                  height: 15,
                ),
                Text(
                    'Make payments using your personal account with the same name details you have on Fortfolio.',
                    style: subTitle.copyWith(
                      color: kgreyColor,
                      fontSize: 13,
                    )),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                          width: 1.5, color: const Color(0XFFF3F6F8))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      buildtile('Account Name', 'Fortfolio LTD'),
                      const SizedBox(
                        height: 15,
                      ),
                      buildtile('Bank Name', 'Guaranty Trust Bank'),
                      const SizedBox(
                        height: 15,
                      ),
                      Flex(
                        direction: Axis.horizontal,
                        children: <Widget>[
                          buildtile('Account Number', '0627767963'),
                          IconButton(
                              onPressed: () {
                                Clipboard.setData(
                                        const ClipboardData(text: "0627767963"))
                                    .then((_) {
                                  CustomSnackbar.showSnackBar(
                                      context, "Text copied", false);
                                });
                              },
                              icon: const Icon(
                                Icons.copy_rounded,
                                color: kPrimaryColor,
                              ))
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                    text: 'I HAVE PAID',
                    onTap: () => context.read<InvestmentCubit>().iHavePaid())
              ],
            ));
          }
        },
      ),
    );
  }

  Widget buildtile(String title, String subtitle) {
    return Flex(
      direction: Axis.vertical,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: subTitle.copyWith(
              fontSize: 12, color: kgreyColor.withOpacity(0.7)),
        ),
        const SizedBox(
          height: 7,
        ),
        Text(
          subtitle,
          style: titleText.copyWith(fontSize: 15),
        )
      ],
    );
  }
}
