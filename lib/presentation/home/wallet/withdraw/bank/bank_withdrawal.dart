import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
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
                BlocBuilder<WalletCubit, WalletState>(builder: (context, state){
                  Widget tiles = buildtile("", () => null);
                  for (var element in state.bankAddresses) {
                    tiles = buildtile(element.accountNumber, () => context.read<WalletCubit>().withdrawalDetailsChanged(withdrawalDetails: element.toMap()));
                   }
                   return tiles;
                 }),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: TextButton(
                      onPressed: () => context.router.push(const AddBankRoute()),
                      child: Text(
                        'Add a new bank',
                        style: subTitle.copyWith(
                            fontSize: 13, color: kPrimaryColor),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildtile(String accNumber, Function() ontap) {
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
            'Joy Henshaw',
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
