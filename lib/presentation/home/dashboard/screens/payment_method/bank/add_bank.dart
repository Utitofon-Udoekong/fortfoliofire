import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/bank/cubit/bank_address_cubit.dart';

class AddBank extends StatelessWidget {
  const AddBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BankAddressCubit>(),
      child: Scaffold(
        body: MultiBlocListener(
          listeners: [
            BlocListener<BankAddressCubit, BankAddressState>(
              listenWhen: (previous, current) =>
                  previous.failure != current.failure &&
                  current.failure.isNotEmpty,
              listener: (context, state) {
                CustomSnackbar.showSnackBar(context, state.failure, true);
              },
            ),
            BlocListener<BankAddressCubit, BankAddressState>(
              listenWhen: (previous, current) =>
                  previous.success != current.success &&
                  current.success.isNotEmpty,
              listener: (context, state) {
                CustomSnackbar.showSnackBar(context, state.success, false);
                Future.delayed(const Duration(seconds: 2),(){
                  context.router.pop();
                });
              },
            ),
          ],
          child: SafeArea(
              child: Padding(
            padding: kDefaultPadding,
            child: BlocSelector<BankAddressCubit, BankAddressState, bool>(
              selector: (state) {
                return state.isLoading;
              },
              builder: (context, isLoading) {
                if (isLoading) {
                  return const LoadingView();
                } else {
                  return SingleChildScrollView(
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
                        const Text(
                            'Transfer funds easily to your desired bank account',
                            style: TextStyle(fontSize: 15, color: kgreyColor)),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "Account name",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xFF656565)),
                        ),
                        BlocBuilder<BankAddressCubit, BankAddressState>(
                          builder: (context, state) {
                            return TextFormField(
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
                            );
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "Account number",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xFF656565)),
                        ),
                        BlocBuilder<BankAddressCubit, BankAddressState>(
                          builder: (context, state) {
                            return TextFormField(
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
                            );
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "Bank Name",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xFF656565)),
                        ),
                        BlocBuilder<BankAddressCubit, BankAddressState>(
                          builder: (context, state) {
                            return TextFormField(
                                autocorrect: false,
                                keyboardType: TextInputType.text,
                                textInputAction: TextInputAction.done,
                                decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xFFF3F6F8),
                                    border: InputBorder.none),
                                onChanged: (value) => context
                                    .read<BankAddressCubit>()
                                    .bankNameChanged(bankName: value));
                          },
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        BlocSelector<BankAddressCubit, BankAddressState, bool>(
                          selector: (state) => state.isValidState,
                          builder: (context, valid) {
                            return CustomAuthFilledButton(
                              text: 'ADD BANK',
                              onTap: () => context
                                  .read<BankAddressCubit>()
                                  .addbankClicked(),
                              disabled: !valid,
                            );
                          },
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
          )),
        ),
      ),
    );
  }
}
