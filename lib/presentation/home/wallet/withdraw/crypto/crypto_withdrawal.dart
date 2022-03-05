import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/user/crypto_wallet.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/home/wallet/cubit/wallet_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
 

class CryptoWithdrawal extends StatelessWidget {
  const CryptoWithdrawal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<WalletCubit>(),
      child: Scaffold(
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
                  BlocBuilder<WalletCubit, WalletState>(
                    builder: (context, state) {
                      Widget tiles = buildtile("", () => null);
                      if (state.isNotGeneral) {
                        for (var element in state.cryptoAddresses) {
                          tiles = buildtile(element.address, () => context.read<WalletCubit>().withdrawalDetailsChanged(withdrawalDetails: element.toMap()));
                        }
                        return tiles;
                      } else if (state.isGeneral) {
                        for (var element in state.generalCryptoAddresses) {
                          tiles = buildtile(element.address, () => context.read<WalletCubit>().withdrawalDetailsChanged(withdrawalDetails: element.toMap()));
                        }
                        return tiles;
                      } else {
                        var addressess = state.cryptoAddresses +
                            state.generalCryptoAddresses;
                        for (var element in addressess) {
                          CryptoWallet cryptoWallet = CryptoWallet(walletLabel: element.walletLabel, address: element.address, coin: element.coin, network: element.network, platform: element.platform, type: element.type);
                          tiles = buildtile(element.address, () => context.read<WalletCubit>().withdrawalDetailsChanged(withdrawalDetails: cryptoWallet.toMap()));
                        }
                        return tiles;
                      }
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: TextButton(
                        onPressed: () => context.router.push(const AddCryptoWalletRoute()),
                        child: Text(
                          'Add a new wallet',
                          style: subTitle.copyWith(
                              fontSize: 13, color: kPrimaryColor),
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildtile(String address, Function() ontap) {
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
            'Wallet Label',
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
