import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/bank/cubit/bank_address_cubit.dart';

class AddBank extends StatelessWidget {
  const AddBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BankAddressCubit>(),
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
                  "Add New Bank",
                  style: titleText.copyWith(color: kBlackColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('Transfer funds easily to your desired bank account',
                    style: TextStyle(fontSize: 15, color: kgreyColor)),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Account name",
                  style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
                ),
                TextFormField(
                  autocorrect: false,
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF3F6F8),
                      border: InputBorder.none),
                  onChanged: (value) => context
                      .read<BankAddressCubit>()
                      .userNameChanged(userName: value),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Account number",
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
                  onChanged: (value) => context
                      .read<BankAddressCubit>()
                      .accountNumberChanged(accountNumber: value),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Bank Name",
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
                    onChanged: (value) => context
                        .read<BankAddressCubit>()
                        .bankNameChanged(bankName: value)),
                const SizedBox(
                  height: 60,
                ),
                BlocBuilder<BankAddressCubit, BankAddressState>(
                  builder: (context, state) {
                    return CustomAuthFilledButton(
                      text: 'ADD BANK',
                      // onTap: () => context.router.push(verifyBank),
                      onTap: () =>
                          context.read<BankAddressCubit>().addbankClicked(),
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
