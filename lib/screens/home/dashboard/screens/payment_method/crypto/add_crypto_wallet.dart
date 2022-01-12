import 'package:flutter/material.dart';
import 'package:fortfolio/constants/theme.dart';
import 'package:fortfolio/screens/authentication/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/screens/home/dashboard/screens/payment_method/crypto/networks.dart';
import 'package:fortfolio/screens/home/dashboard/screens/payment_method/crypto/verify_crypto_wallet.dart';
import 'package:fortfolio/widgets/labelled_checkbox.dart';

class AddCryptoWallet extends StatefulWidget {
  const AddCryptoWallet({Key? key}) : super(key: key);

  @override
  State<AddCryptoWallet> createState() => _AddCryptoWalletState();
}

class _AddCryptoWalletState extends State<AddCryptoWallet> {
  int? _value = 1;
  bool _isSelected = false;

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
                onTap: () {
                },
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
                // controller: controller.code,
                // focusNode: controller.codeFocusNode,
                autocorrect: false,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                    // errorText: controller.codeErrorText,
                    // enabled: controller.isLoading.value == false,
                    filled: true,
                    fillColor: Color(0xFFF3F6F8),
                    border: InputBorder.none),
                // onChanged: (value) => controller.updateResetPasswordform(value),
              ),
              const SizedBox(
                height: 10,
              ),
              LabeledCheckbox(
                label: 'Set as universal address, without specific coins',
                value: _isSelected,
                onChanged: (bool newValue) {
                  setState(() {
                    _isSelected = newValue;
                  });
                },
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Wallet Address",
                style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
              ),
              TextFormField(
                // controller: controller.code,
                // focusNode: controller.codeFocusNode,
                autocorrect: false,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                    // errorText: controller.codeErrorText,
                    // enabled: controller.isLoading.value == false,
                    filled: true,
                    fillColor: Color(0xFFF3F6F8),
                    border: InputBorder.none),
                // onChanged: (value) => controller.updateResetPasswordform(value),
              ),
              const SizedBox(
                height: 30,
              ),
              Visibility(
                  visible: _isSelected,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        "Choose Network",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFF656565)),
                      ),
                      Wrap(
                        children: generateNetworks(),
                      )
                    ],
                  )),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Address Origin",
                style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
              ),
              TextFormField(
                // controller: controller.code,
                // focusNode: controller.codeFocusNode,
                autocorrect: false,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                    // errorText: controller.codeErrorText,
                    // enabled: controller.isLoading.value == false,
                    filled: true,
                    fillColor: Color(0xFFF3F6F8),
                    border: InputBorder.none),
                // onChanged: (value) => controller.updateResetPasswordform(value),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Wallet Label",
                style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
              ),
              TextFormField(
                // controller: controller.code,
                // focusNode: controller.codeFocusNode,
                autocorrect: false,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                    // errorText: controller.codeErrorText,
                    // enabled: controller.isLoading.value == false,
                    filled: true,
                    fillColor: Color(0xFFF3F6F8),
                    border: InputBorder.none),
                // onChanged: (value) => controller.updateResetPasswordform(value),
              ),
              const SizedBox(
                height: 60,
              ),
              CustomAuthFilledButton(
                text: 'ADD CRYPTO WALLET',
                onTap: () => null,
                disabled: false,
              ),
            ],
          ),
        ),
      )),
    );
  }

  List<Widget> generateNetworks() {
    List<Widget> networkList = network
        .map((item) {
          return ChoiceChip(
            label: Text(item.title, style: subTitle.copyWith(color: kgreyColor, fontSize: 12),),
            selected: _value == item.index,
            onSelected: (bool selected) {
              setState(() {
                _value = selected ? item.index : null;
              });
            },
            labelStyle: TextStyle(
              backgroundColor: Colors.transparent
            ),
            backgroundColor: Colors.transparent,
          );
        })
        .cast<Widget>()
        .toList();
    return networkList;
  }
}
