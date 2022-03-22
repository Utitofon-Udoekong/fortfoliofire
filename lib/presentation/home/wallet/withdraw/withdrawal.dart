import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/user/investment.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/home/wallet/cubit/wallet_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
 

class WithdrawalPage extends StatelessWidget {
  const WithdrawalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final InvestmentItem withdrawalItem = context.select((WalletCubit walletCubit) => walletCubit.state.investmentToBeWithdrawn);
    final bool harvested = context.select((WalletCubit walletCubit) => walletCubit.state.investmentToBeWithdrawn.planYield == 0);
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
                Text(
                  "Withdraw",
                  style: titleText,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Select where you want to withdraw from. Withdrawals have a time lock of 7 days.',
                  style: subTitle.copyWith(color: kgreyColor, fontSize: 15),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Note that all rewards must be harvested before investments can be withdrawn',
                  style: subTitle.copyWith(color: kgreyColor, fontSize: 15),
                ),
                const SizedBox(
                  height: 30,
                ),
                buildTile('Invested', withdrawalItem.amount, 'Withdraw', () => harvested ? context.router.push(const SelectWithdrawalMethodRoute()) : null, harvested ? kPrimaryColor : const Color.fromRGBO(3, 66, 109, 0.65)),
                const SizedBox(
                  height: 20,
                ),
                buildTile('Reward', withdrawalItem.planYield, 'Harvest', () => context.read<WalletCubit>().harvestInvestment(docId: withdrawalItem.traxId + withdrawalItem.uid, amount: withdrawalItem.amount), kPrimaryColor)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTile(String title, int amount, String type, Function() ontap, Color color) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color(0XFFF3F6F8),
          borderRadius: BorderRadius.circular(5.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flex(
            direction: Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: subTitle.copyWith(color: kBlackColor, fontSize: 14),
              ),
              const SizedBox(
                height: 10,
              ),
              Text('\$' + amount.toString(),
                  style: titleText.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ))
            ],
          ),
          GestureDetector(
            onTap: ontap,
            child: Container(
              alignment: Alignment.center,
              height: 48,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: color,
              ),
              child: Text(
                type,
                style: textButton.copyWith(color: kWhiteColor, fontSize: 15),
              ),
            ),
          )
        ],
      ),
    );
  }
}
