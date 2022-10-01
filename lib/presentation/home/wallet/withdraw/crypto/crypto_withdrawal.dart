import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/user/crypto_wallet.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/cubit/payment_method_cubit.dart';
import 'package:fortfolio/presentation/home/wallet/cubit/wallet_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

class CryptoWithdrawal extends StatelessWidget {
  const CryptoWithdrawal({Key? key}) : super(key: key);

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
                  'Select the wallet you are withdrawing to',
                  style: subTitle.copyWith(color: kgreyColor),
                ),
                const SizedBox(
                  height: 30,
                ),
                BlocSelector<PaymentMethodCubit, PaymentMethodState, bool>(
                  selector: (state) {
                    return state.emptyWallet;
                  },
                  builder: (context, state) {
                    return Center(
                      child: TextButton(
                          onPressed: () {
                            context.read<PaymentMethodCubit>().setNextPage(
                                nextPage: const CryptoWithdrawalRoute());
                            context.router.push(const AddCryptoWalletRoute());
                          },
                          child: Text(
                            'Add a new wallet',
                            style: subTitle.copyWith(
                                fontSize: 13, color: kPrimaryColor),
                          )),
                    );
                  },
                ),
                BlocSelector<PaymentMethodCubit, PaymentMethodState,
                    List<CryptoWallet>>(
                  selector: (state) {
                    return state.cryptoAddresses;
                  },
                  builder: (context, cryptoAddresses) {
                    List<Widget> children = [];
                    if (cryptoAddresses.isNotEmpty) {
                      children = cryptoAddresses.map((address) {
                        return buildtile(
                            address.address,
                            () => context
                                .read<WalletCubit>()
                                .withdrawalDetailsChanged(
                                    withdrawalDetails: address.toMap()),
                            address.walletLabel);
                      }).toList();
                    }
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: children,
                    );
                  },
                ),
                BlocSelector<PaymentMethodCubit, PaymentMethodState,
                    List<CryptoWallet>>(
                  selector: (state) {
                    return state.generalCryptoAddresses;
                  },
                  builder: (context, cryptoAddresses) {
                    List<Widget> children = [];
                    if (cryptoAddresses.isNotEmpty) {
                      children = cryptoAddresses.map((address) {
                        return buildtile(
                            address.address,
                            () => context
                                .read<WalletCubit>()
                                .withdrawalDetailsChanged(
                                    withdrawalDetails: address.toMap()),
                            address.walletLabel);
                      }).toList();
                    }
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: children,
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

  Widget buildtile(String address, Function() ontap, String label) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0XFFF3F6F8),
            borderRadius: BorderRadius.circular(5.0)),
        child: ListTile(
          title: Text(
            address,
            style: titleText.copyWith(fontSize: 15),
          ),
          subtitle: Text(
            label,
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
