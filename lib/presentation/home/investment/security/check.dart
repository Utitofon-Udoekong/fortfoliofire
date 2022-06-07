import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
            context.router.replace(const InvestmentSuccessRoute());
          },
        ),
      ],
      child: Scaffold(
        body: BlocSelector<InvestmentCubit, InvestmentState, bool>(
          selector: (state) {
            return state.isLoading;
          },
          builder: (context, isLoading) {
            if (isLoading) {
              return const LoadingView();
            } else {
              return SafeArea(
                child: Padding(
                  padding: kDefaultPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                        height: 5,
                      ),
                      TextButton(
                        onPressed: () =>
                            context.router.push(const SetPinEngineRoute()),
                        child: Text(
                          "Haven't set a pin?",
                          style: titleText.copyWith(
                              color: kPrimaryColor, fontSize: 14),
                        ),
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
                          keyboardType: TextInputType.none,
                          decoration: InputDecoration(
                              suffix: IconButton(
                                  onPressed: () {
                                    _myController.text = _myController.text
                                        .substring(
                                            0, _myController.text.length - 1);
                                  },
                                  icon: const Icon(Icons.backspace,
                                      color: kPrimaryColor))),
                        )),
                      ),
                      NumPad(
                        buttonSize: 60,
                        controller: _myController,
                        onSubmit: () {
                          context
                              .read<InvestmentCubit>()
                              .auhenticatePinPayment(pin: _myController.text);
                          _myController.clear();
                        },
                        fingerPrint: () {
                          context
                              .read<InvestmentCubit>()
                              .authenticateBiometricPayment();
                          _myController.clear();
                        },
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
