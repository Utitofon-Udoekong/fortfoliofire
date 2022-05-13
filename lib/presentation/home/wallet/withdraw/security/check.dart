import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:fortfolio/domain/widgets/num_pad.dart';
import 'package:fortfolio/presentation/home/wallet/cubit/wallet_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

class CheckWithdrawal extends StatelessWidget {
  const CheckWithdrawal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _myController = TextEditingController();
    return MultiBlocListener(
      listeners: [
        BlocListener<WalletCubit, WalletState>(
          listenWhen: (previous, current) =>
              previous.failure != current.failure && current.failure.isNotEmpty,
          listener: (context, state) {
            CustomSnackbar.showSnackBar(context, state.failure, true);
          },
        ),
        BlocListener<WalletCubit, WalletState>(
          listenWhen: (previous, current) =>
              previous.success != current.success && current.success.isNotEmpty,
          listener: (context, state) {
            CustomSnackbar.showSnackBar(context, state.success, false);
            context.router.push(const WithdrawalSuccessRoute());
          },
        ),
      ],
      child: Scaffold(
        body: BlocSelector<WalletCubit, WalletState, bool>(
          selector: (state) {
            return state.loading;
          },
          builder: (context, isLoading) {
            if(isLoading){
              return const LoadingView();
            } else {
              return SafeArea(
              child: Padding(
                padding: kDefaultPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () => context.router.pop(),
                      child: const Icon(Icons.close),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Enter Transaction Pin",
                      style: titleText.copyWith(color: kBlackColor),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 60,
                      child: Center(
                          child: TextField(
                        controller: _myController,
                        textAlign: TextAlign.center,
                        showCursor: false,
                        style: const TextStyle(fontSize: 35),
                        // Disable the default soft keybaord
                        keyboardType: TextInputType.none,
                      )),
                    ),
                    // implement the custom NumPad
                    NumPad(
                      buttonSize: 60,
                      controller: _myController,
                      delete: () {
                        _myController.text = _myController.text
                            .substring(0, _myController.text.length - 1);
                      },
                      // do something with the input numbers
                      onSubmit: () => context
                          .read<WalletCubit>()
                          .auhenticatePinPayment(pin: _myController.text),
                     
                      fingerPrint: () => context
                          .read<WalletCubit>()
                          .authenticateBiometricPayment(),
                    ),
                  ],
                ),
              ),
            );
            }
          },
        ),
      ),
    );
  }
}
