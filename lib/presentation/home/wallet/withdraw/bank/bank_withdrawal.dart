import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/user/bank_address.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/cubit/payment_method_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

import '../../cubit/wallet_cubit.dart';

class BankWithdrawal extends StatelessWidget {
  const BankWithdrawal({Key? key}) : super(key: key);

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
                      BlocSelector<PaymentMethodCubit, PaymentMethodState, List<BankAddress>>(
                        selector: (state) {
                          return state.bankAddresses;
                        },
                        builder: (context, bankAddresses) {
                          List<Widget> children = [];
                          if(bankAddresses.isEmpty){
                            children = [Center(
                            child: TextButton(
                                onPressed: () =>
                                    context.router.push(const AddBankRoute()),
                                child: Text(
                                  'Add a new bank',
                                  style: subTitle.copyWith(
                                      fontSize: 13, color: kPrimaryColor),
                                )),
                          )];
                          }else{
                            children = bankAddresses.map((address) {
                              return buildtile(
                                  address.accountNumber,
                                  () => context
                                      .read<WalletCubit>()
                                      .withdrawalDetailsChanged(
                                          withdrawalDetails: address.toMap()),
                                  address.userName);
                            }).toList();
                          }
                          return Column(crossAxisAlignment: CrossAxisAlignment.start, children: children,);
                        },
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
                              onTap: () => context.router.push(const CheckWithdrawalRoute()),
                              disabled: withdrawalDetails.isEmpty,
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
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
