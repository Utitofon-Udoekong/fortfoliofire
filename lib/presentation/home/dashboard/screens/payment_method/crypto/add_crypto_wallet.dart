import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/labelled_checkbox.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/crypto/bloc/crypto_wallet_bloc.dart';

import 'networks.dart';

class AddCryptoWallet extends StatefulWidget {
  const AddCryptoWallet({Key? key}) : super(key: key);

  @override
  State<AddCryptoWallet> createState() => _AddCryptoWalletState();
}

class _AddCryptoWalletState extends State<AddCryptoWallet> {
  int? _value = 1;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CryptoWalletBloc>(),
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
                  "Add New Wallet",
                  style: titleText.copyWith(color: kBlackColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('Only add addresses that belong to you.',
                    style: TextStyle(fontSize: 15, color: kgreyColor)),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Coin",
                  style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
                ),
                TextFormField(
                  autocorrect: false,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF3F6F8),
                      border: InputBorder.none),
                  onChanged: (value) => context.read<CryptoWalletBloc>()
                    ..add(CryptoWalletEvent.coinChanged(value)),
                ),
                const SizedBox(
                  height: 10,
                ),
                BlocBuilder<CryptoWalletBloc, CryptoWalletState>(
                    builder: ((context, state) {
                  return LabeledCheckbox(
                    label: 'Set as universal address, without specific coins',
                    value: state.isGeneral,
                    onChanged: (bool newValue) {
                      context
                          .read<CryptoWalletBloc>()
                          .add(CryptoWalletEvent.isGeneralChanged(newValue));
                    },
                  );
                })),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Wallet Address",
                  style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
                ),
                TextFormField(
                  autocorrect: false,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF3F6F8),
                      border: InputBorder.none),
                  onChanged: (value) => context.read<CryptoWalletBloc>()
                    ..add(CryptoWalletEvent.addressChanged(value)),
                ),
                const SizedBox(
                  height: 30,
                ),
                BlocBuilder<CryptoWalletBloc, CryptoWalletState>(
                    builder: (context, state) {
                  return Visibility(
                      visible: state.isGeneral,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            "Choose Network",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xFF656565)),
                          ),
                          Wrap(
                            children: network
                                .map((item) {
                                  return ChoiceChip(
                                    label: Text(
                                      item.title,
                                      style: subTitle.copyWith(
                                          color: kgreyColor, fontSize: 12),
                                    ),
                                    selected: _value == item.index,
                                    onSelected: (bool selected) {
                                      setState(() {
                                        _value = selected ? item.index : null;
                                        final coinNetwork =
                                            network[item.index].title;
                                        context.read<CryptoWalletBloc>().add(
                                            CryptoWalletEvent.networkChanged(
                                                coinNetwork));
                                      });
                                    },
                                    labelStyle: const TextStyle(
                                        backgroundColor: Colors.transparent),
                                    backgroundColor: Colors.transparent,
                                  );
                                })
                                .cast<Widget>()
                                .toList(),
                          )
                        ],
                      ));
                }),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Address Origin",
                  style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
                ),
                TextFormField(
                  autocorrect: false,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF3F6F8),
                      border: InputBorder.none),
                  onChanged: (value) => context.read<CryptoWalletBloc>()
                    ..add(CryptoWalletEvent.platformChanged(value)),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Wallet Label",
                  style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
                ),
                TextFormField(
                  autocorrect: false,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF3F6F8),
                      border: InputBorder.none),
                  onChanged: (value) => context.read<CryptoWalletBloc>()
                    ..add(CryptoWalletEvent.walletLabelChanged(value)),
                ),
                const SizedBox(
                  height: 60,
                ),
                BlocBuilder<CryptoWalletBloc, CryptoWalletState>(
                  builder: (context, state) {
                    return CustomAuthFilledButton(
                      text: 'ADD CRYPTO WALLET',
                      // onTap: () => context.router.push(verifyWallet),
                      onTap: () => context.read<CryptoWalletBloc>()
                        ..add(const CryptoWalletEvent.addWalletClicked()),
                      disabled: !state.isValidState,
                    );
                  },
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
