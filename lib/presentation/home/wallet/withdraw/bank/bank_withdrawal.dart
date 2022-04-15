import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

import '../../cubit/wallet_cubit.dart';

class BankWithdrawal extends StatelessWidget {
  const BankWithdrawal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocListener(
        listeners: [
          BlocListener<WalletCubit, WalletState>(
            listenWhen: (p, c) =>
                p.failure != c.failure && c.failure.isNotEmpty,
            listener: (context, state) {
              CustomSnackbar.showSnackBar(context, state.failure, true);
            },
          ),
          BlocListener<WalletCubit, WalletState>(
            listenWhen: (p, c) =>
                p.success != c.success && c.success.isNotEmpty,
            listener: (context, state) {
              CustomSnackbar.showSnackBar(context, state.success, false);
              context.router.push(const WithdrawalSuccessRoute());
            },
          ),
        ],
        child: BlocBuilder<WalletCubit, WalletState>(
          builder: (context, state) {
            if (state.loading) {
              return const LoadingView();
            } else {
              return SafeArea(
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
                          "Withdrawal",
                          style: titleText,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Select the bank you are withdrawing to',
                          style: subTitle.copyWith(color: kgreyColor),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        BlocBuilder<WalletCubit, WalletState>(
                            builder: (context, state) {
                          Widget tiles = buildtile("", () => null, "");
                          for (var element in state.bankAddresses) {
                            tiles = buildtile(
                                element.accountNumber,
                                () => context
                                    .read<WalletCubit>()
                                    .withdrawalDetailsChanged(
                                        withdrawalDetails: element.toMap()),
                                element.userName);
                          }
                          return tiles;
                        }),
                        const SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: TextButton(
                              onPressed: () =>
                                  context.router.push(const AddBankRoute()),
                              child: Text(
                                'Add a new bank',
                                style: subTitle.copyWith(
                                    fontSize: 13, color: kPrimaryColor),
                              )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        BlocSelector<WalletCubit, WalletState,
                            Map<String, dynamic>>(
                          selector: (state) {
                            return state.withdrawalDetails;
                          },
                          builder: (context, withdrawalDetails) {
                            return Align(
                              alignment: Alignment.bottomCenter,
                              child: CustomAuthFilledButton(
                                text: "WITHDRAW",
                                onTap: () => context
                                    .read<WalletCubit>()
                                    .makeWithdrawalTransaction(),
                                disabled: withdrawalDetails.isEmpty,
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }

  Widget buildtile(String accNumber, Function() ontap, String userName) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0XFFF3F6F8),
            borderRadius: BorderRadius.circular(5.0)),
        child: ListTile(
          title: Text(
            accNumber,
            style: titleText.copyWith(fontSize: 15),
          ),
          subtitle: Text(
            userName,
            style: subTitle.copyWith(fontSize: 13, color: kgreyColor),
          ),
          trailing: const Icon(
            Icons.circle_outlined,
            color: Color(0XFF00ADEE),
          ),
        ),
      ),
    );
  }
}
