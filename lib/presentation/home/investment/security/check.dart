import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:fortfolio/domain/widgets/num_pad.dart';
import 'package:fortfolio/presentation/home/investment/cubit/investment_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

class CheckInvestment extends StatelessWidget {
  const CheckInvestment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _myController = TextEditingController();
    return MultiBlocListener(
      listeners: [
        BlocListener<InvestmentCubit, InvestmentState>(
          listenWhen: (previous, current) =>
              previous.failure != current.failure && current.failure.isNotEmpty,
          listener: (context, state) {
            CustomSnackbar.showSnackBar(context, state.failure, true);
          },
        ),
        BlocListener<InvestmentCubit, InvestmentState>(
          listenWhen: (previous, current) =>
              previous.success != current.success && current.success.isNotEmpty,
          listener: (context, state) {
            CustomSnackbar.showSnackBar(context, state.success, false);
            context.router.push(const InvestmentSuccessRoute());
          },
        ),
      ],
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text('KindaCode.com'),
        // ),
        body: BlocSelector<InvestmentCubit, InvestmentState, bool>(
          selector: (state) {
            return state.isLoading;
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
                      height: 20,
                    ),
                    Text(
                      "Enter Transaction Pin",
                      style: titleText.copyWith(color: kBlackColor),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: SizedBox(
                        height: 70,
                        child: Center(
                            child: TextField(
                          controller: _myController,
                          textAlign: TextAlign.center,
                          showCursor: false,
                          style: const TextStyle(fontSize: 40),
                          // Disable the default soft keybaord
                          keyboardType: TextInputType.none,
                        )),
                      ),
                    ),
                    // implement the custom NumPad
                    NumPad(
                      buttonSize: 75,
                      controller: _myController,
                      delete: () {
                        _myController.text = _myController.text
                            .substring(0, _myController.text.length - 1);
                      },
                      // do something with the input numbers
                      onSubmit: () => context
                          .read<InvestmentCubit>()
                          .auhenticatePinPayment(pin: _myController.text),
                      // onSubmit: () {
                      //   debugPrint('Your code: //${_myController.text}');
                      //   showDialog(
                      //       context: context,
                      //       builder: (_) => AlertDialog(
                      //             content: Text(
                      //               "You code is ${_myController.text}",
                      //               style: const TextStyle(fontSize: 30),
                      //             ),
                      //           ));
                      // },
                      fingerPrint: () => context
                          .read<InvestmentCubit>()
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
