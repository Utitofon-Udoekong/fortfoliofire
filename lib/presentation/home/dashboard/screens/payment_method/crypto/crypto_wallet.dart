import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/crypto/cubit/crypto_wallet_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

class CryptoWalletPage extends StatelessWidget {
  const CryptoWalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final svg = SvgPicture.asset(
      'images/blank-wallet.svg',
      semanticsLabel: 'Blank Wallet',
    );
    return Scaffold(
      body: BlocSelector<CryptoWalletCubit, CryptoWalletState, bool>(
        selector: (state) {
          return state.emptyWallet;
        },
        builder: (context, emptyWallet) {
          if (emptyWallet) {
            return Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 50,
                  ),
                  svg,
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'No Wallet added yet.',
                    style: subTitle,
                  ),
                ],
              ),
            );
          } else {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Wallet Addresses',
                  style: subTitle,
                ),
                const SizedBox(
                  height: 15,
                ),
                BlocBuilder<CryptoWalletCubit, CryptoWalletState>(
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: state.cryptoAddresses.map((address) {
                        return buildtile(
                            address.address, address.walletLabel, address.coin, context);
                      }).toList(),
                    );
                  },
                ),
                BlocBuilder<CryptoWalletCubit, CryptoWalletState>(
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: state.generalCryptoAddresses.map((address) {
                        return buildtile(
                            address.address, address.walletLabel, address.coin, context);
                      }).toList(),
                    );
                  },
                ),
              ],
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => context.router.push(const AddCryptoWalletRoute()),
          child: const Icon(
            Icons.add,
            size: 25,
            color: kPrimaryColor,
          ),
          elevation: 5.0,
          backgroundColor: kWhiteColor),
    );
  }

  Widget buildtile(String address, String label, String coin, BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(13.0),
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(5.0),
          image: const DecorationImage(image: AssetImage("images/wave.png"), fit:  BoxFit.fitWidth, repeat: ImageRepeat.repeatY,alignment: Alignment.topLeft)),
      child: Flex(
        direction: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            coin,
            style:
                titleText.copyWith(fontSize: 15, fontWeight: FontWeight.w600, color: kWhiteColor),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            address,
            style: titleText.copyWith(fontSize: 13, color: kWhiteColor),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            label,
            style: subTitle.copyWith(fontSize: 15, color: kWhiteColor),
          ),
        ],
      ),
    );
  }
}
