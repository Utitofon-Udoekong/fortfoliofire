import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

import 'cubit/bank_address_cubit.dart';

class BankAddressPage extends StatelessWidget {
  const BankAddressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final svg = SvgPicture.asset(
      'images/blank-wallet.svg',
      semanticsLabel: 'Blank Wallet',
    );
    return Scaffold(
      body: BlocSelector<BankAddressCubit, BankAddressState, bool>(
        selector: (state) {
          return state.noAccount;
        },
        builder: (context, noAccount) {
          if (noAccount) {
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
                    'No Bank Account added yet.',
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
                  'Bank Addresses',
                  style: subTitle,
                ),
                const SizedBox(
                  height: 15,
                ),
                BlocBuilder<BankAddressCubit, BankAddressState>(
                    builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: state.bankAddresses.map((address) {
                      return buildtile(address.accountNumber,
                          address.userName, address.bankName, context);
                    }).toList(),
                  );
                }),
              ],
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => context.router.push(const AddBankRoute()),
          child: const Icon(
            Icons.add,
            size: 25,
            color: kPrimaryColor,
          ),
          elevation: 5.0,
          backgroundColor: kWhiteColor),
    );
  }

  Widget buildtile(String accNumber, String userName, String bank, BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13.0),
      margin: const EdgeInsets.only(bottom: 10),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: klightblue, borderRadius: BorderRadius.circular(6.0),
          image: const DecorationImage(image: AssetImage("images/wave.png"), fit:  BoxFit.fitWidth, repeat: ImageRepeat.repeatY,alignment: Alignment.topLeft)),
      child: Flex(
        direction: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            accNumber,
            style:
                titleText.copyWith(fontSize: 15, fontWeight: FontWeight.w600, color: kWhiteColor),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            userName,
            style: subTitle.copyWith(fontSize: 13, color: kWhiteColor),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            bank,
            style: subTitle.copyWith(fontSize: 15, color: kWhiteColor),
          ),
        ],
      ),
    );
  }
}
