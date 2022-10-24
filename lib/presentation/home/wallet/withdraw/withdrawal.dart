import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/user/investment.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:fortfolio/presentation/home/wallet/cubit/wallet_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

class WithdrawalPage extends StatelessWidget {
  const WithdrawalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final InvestmentItem withdrawalItem = context.select(
        (WalletCubit walletCubit) => walletCubit.state.investmentToBeWithdrawn);
    final bool harvested = context.select((WalletCubit walletCubit) =>
        walletCubit.state.investmentToBeWithdrawn.planYield == 0);
    final dollarPrice =
        context.select((AuthCubit walletCubit) => walletCubit.state.buyPrice);
    return Scaffold(
      body: BlocListener<WalletCubit, WalletState>(
        listenWhen: (previous, current) => current.success == "Investment harvested",
        listener: (context, state) {
          CustomSnackbar.showSnackBar(context, state.success, false);
        },
        child: BlocSelector<WalletCubit, WalletState, bool>(
          selector: (state) {
            return state.loading;
          },
          builder: (context, loading) {
            return LoadingView(
              isLoading: loading,
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
                          style: subTitle.copyWith(
                              color: kgreyColor, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Note that all rewards must be harvested before investments can be withdrawn',
                          style: subTitle.copyWith(
                              color: kgreyColor, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(children: <Widget>[
                          const Expanded(child: Divider()),
                          Container(
                            padding: const EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                color:
                                    const Color.fromRGBO(203, 241, 255, 0.18),
                                borderRadius: BorderRadius.circular(20)),
                            alignment: Alignment.center,
                            child: Text(
                              '\$1 = ₦$dollarPrice',
                              style: subTitle.copyWith(
                                  fontSize: 13, color: kPrimaryColor),
                            ),
                          ),
                          const Expanded(child: Divider())
                        ]),
                        const SizedBox(
                          height: 30,
                        ),
                        buildTile(
                            'Invested',
                            withdrawalItem.amount,
                            'Withdraw',
                            () => harvested
                                ? context.router
                                    .push(const SelectWithdrawalMethodRoute())
                                : null,
                            harvested
                                ? kPrimaryColor
                                : const Color.fromRGBO(3, 66, 109, 0.65)),
                        const SizedBox(
                          height: 20,
                        ),
                        buildTile(
                            'Reward',
                            withdrawalItem.planYield,
                            'Harvest',
                            () => harvested
                                ? null
                                : context.read<WalletCubit>().harvestInvestment(
                                    docId: withdrawalItem.uid +
                                        withdrawalItem.traxId,
                                    amount: withdrawalItem.planYield),
                            harvested
                                ? const Color.fromRGBO(3, 66, 109, 0.65)
                                : kPrimaryColor)
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget buildTile(
      String title, double amount, String type, Function() ontap, Color color) {
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
              Text('\$$amount',
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
              height: 45,
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
