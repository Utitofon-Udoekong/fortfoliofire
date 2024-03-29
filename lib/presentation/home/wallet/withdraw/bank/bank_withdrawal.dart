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
                BlocSelector<PaymentMethodCubit, PaymentMethodState,
                    bool>(
                  selector: (state) {
                    return state.noAccount;
                  },
                  builder: (context, noAccount) {
                    return noAccount ? Center(
                          child: TextButton(
                              onPressed: () {
                                context.router.push(const AddBankRoute());
                              },
                              child: Text(
                                'Add a new bank',
                                style: subTitle.copyWith(
                                    fontSize: 13, color: kPrimaryColor),
                              )),
                        ) : const SizedBox.shrink();
                  },
                ),
                BlocSelector<PaymentMethodCubit, PaymentMethodState,
                    List<BankAddress>>(
                  selector: (state) {
                    return state.bankAddresses;
                  },
                  builder: (context, bankAddresses) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: bankAddresses.map((address) {
                        return BuildTile(
                            accNumber: address.accountNumber,
                            accType: address.accountType,
                            ontap: () => context
                                .read<WalletCubit>()
                                .withdrawalDetailsChanged(
                                    withdrawalDetails: address.toMap()),
                            userName: address.userName,);
                      }).toList(),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                BlocSelector<WalletCubit, WalletState, Map<String, dynamic>>(
                  selector: (state) {
                    return state.withdrawalDetails;
                  },
                  builder: (context, withdrawalDetails) {
                    return Align(
                      alignment: Alignment.bottomCenter,
                      child: CustomAuthFilledButton(
                        text: "WITHDRAW",
                        onTap: () =>
                            context.router.push(const CheckWithdrawalRoute()),
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

}

class BuildTile extends StatelessWidget {
  final String accNumber; 
  final String accType; 
  final Function() ontap; 
  final String userName; 
  const BuildTile({super.key, required this.accNumber, required this.accType, required this.ontap, required this.userName});

  @override
  Widget build(BuildContext context) {
    final selectedAccountNumber = context.select((WalletCubit element) => element.state.withdrawalDetails["accountNumber"]);
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0XFFF3F6F8),
            borderRadius: BorderRadius.circular(5.0)),
        child: ListTile(
          title: Row(
            children: [
              Text(
                accNumber,
                style: titleText.copyWith(fontSize: 15),
              ),
              const SizedBox(width: 20),
              Container(
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(3.0),
                ),
                child: Text(accType, style: subTitle.copyWith(fontSize: 13, color: Colors.white))
              )
            ]
          ),
          subtitle: Text(
            userName,
            style: subTitle.copyWith(fontSize: 13, color: kgreyColor),
          ),
          trailing: Icon(
            selectedAccountNumber == accNumber ? Icons.circle_rounded : Icons.circle_outlined,
            color: const Color(0XFF00ADEE),
          ),
        ),
      ),
    );
  }
}