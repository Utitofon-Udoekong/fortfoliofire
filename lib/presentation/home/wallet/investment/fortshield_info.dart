import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_outlined_button.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

import '../cubit/wallet_cubit.dart';

class FortShieldInvestmentInfo extends StatelessWidget {
  const FortShieldInvestmentInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final balance = context.select((WalletCubit walletCubit) =>
        walletCubit.state.fortShieldInvestmentBalance);
    final yield = context.select(
        (WalletCubit walletCubit) => walletCubit.state.fortShieldYieldBalance);
    final activeInvestments = context.select(
        (WalletCubit walletCubit) => walletCubit.state.fortShieldInvestments);
    return BlocProvider.value(
      value: getIt<WalletCubit>(),
      child: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: kDefaultPadding,
            child: Column(children: <Widget>[
              Row(children: <Widget>[
                InkWell(
                  onTap: () => context.router.pop(),
                  child: const Icon(Icons.close),
                ),
                Center(
                    child: Text("Fortshield",
                        style: titleText.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w700)))
              ]),
              const SizedBox(height: 30),
              Text("Total", style: subTitle.copyWith(fontSize: 12)),
              const SizedBox(height: 8),
              Text(balance.toString(),
                  style: titleText.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w500)),
              const SizedBox(height: 30),
              Text("Available for yield",
                  style: subTitle.copyWith(fontSize: 12)),
              const SizedBox(height: 8),
              Text(yield.toString(),
                  style: titleText.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w500)),
              const SizedBox(height: 30),
              Text("Active Investments",
                  style: subTitle.copyWith(fontSize: 12, color: kPrimaryColor)),
              const SizedBox(height: 15),
              ListView.builder(
                itemCount: activeInvestments.length,
                itemBuilder: ((context, index) {
                  return buildTile(
                      '${activeInvestments[index].planName} / ${activeInvestments[index].duration} month(s)',
                      'N${activeInvestments[index].amount}',
                      () {
                        context.router.push(const WithdrawalPageRoute());
                        context.read<WalletCubit>().investmentToBeWithdrawnChanged(investmentToBeWithdrawn: activeInvestments[index]);
                      });
                }),
              ),
              const Spacer(),
              CustomOutlinedButton(
                  text: 'INVEST',
                  onTap: () =>
                      context.router.push(const FortShieldInvestmentRoute())),
            ]),
          ),
        )),
      ),
    );
  }
}

Widget buildTile(String title, String amount, Function() ontap) {
  return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
      decoration: BoxDecoration(
          color: const Color(0XFFF3F6F8),
          borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flex(
            direction: Axis.vertical,
            children: [
              Text(
                title,
                style: subTitle.copyWith(fontSize: 12),
              ),
              Text(
                amount,
                style: titleText.copyWith(fontSize: 15),
              )
            ],
          ),
          GestureDetector(
            onTap: ontap,
            child: Container(
              alignment: Alignment.center,
              height: 48,
              width: 100,
              // width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kPrimaryColor,
              ),
              child: Text(
                'Withdraw',
                style: textButton.copyWith(color: kWhiteColor, fontSize: 15),
              ),
            ),
          ),
        ],
      ));
}
