import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/application/auth/sign_in_form/phone/sign_in_form_phone_cubit.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:fortfolio/domain/widgets/otp_field/otp_box_style.dart';
import 'package:fortfolio/domain/widgets/otp_field/otp_field_style.dart';
import 'package:fortfolio/domain/widgets/otp_field/otp_text_field.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

import '../../../domain/widgets/countdown_timer.dart';

class ConfirmLoginWithOTP extends StatelessWidget {
  final int smsCodeTimeoutSeconds = 60;

  const ConfirmLoginWithOTP({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final phoneNumber = context.select(
        (SignInFormPhoneCubit phoneCubit) => phoneCubit.state.phoneNumber);
    return Scaffold(
      body: MultiBlocListener(
        listeners: [
          BlocListener<AuthCubit, AuthState>(
            listenWhen: (p, c) => p.isLoggedIn != c.isLoggedIn && c.isLoggedIn,
            listener: (context, state) {
              context.router.replace(const HomePageRoute());
            },
          ),
          BlocListener<SignInFormPhoneCubit, SignInFormPhoneState>(
            listenWhen: (p, c) =>
                p.success != c.success && c.success.isNotEmpty,
            listener: (context, state) {
              CustomSnackbar.showSnackBar(context, state.success, false);
            },
          ),
          BlocListener<SignInFormPhoneCubit, SignInFormPhoneState>(
            listenWhen: (p, c) =>
                p.failure != c.failure && c.failure.isNotEmpty,
            listener: (context, state) {
              CustomSnackbar.showSnackBar(context, state.failure, true);
            },
          ),
        ],
        child: BlocBuilder<SignInFormPhoneCubit, SignInFormPhoneState>(
          builder: (context, state) {
            if (state.isSubmitting) {
              return const LoadingView();
            } else {
              return SafeArea(
                  child: SingleChildScrollView(
                child: Padding(
                  padding: kDefaultPadding,
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
                        'We sent an OTP to the number $phoneNumber',
                        style: titleText.copyWith(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      BlocBuilder<SignInFormPhoneCubit, SignInFormPhoneState>(
                        builder: (context, state) {
                          return OTPTextField(
                            length: 6,
                            width: MediaQuery.of(context).size.width,
                            fieldWidth: 38,
                            fieldHeight: 42,
                            style: subTitle.copyWith(color: kPrimaryColor),
                            textFieldAlignment: MainAxisAlignment.spaceAround,
                            fieldStyle: FieldStyle.box,
                            otpFieldStyle: OtpFieldStyle(
                                borderColor: kgreyColor,
                                focusBorderColor: kPrimaryColor),
                            keyboardType: TextInputType.number,
                            onChanged: (value) => context
                                .read<SignInFormPhoneCubit>()
                                .smsCodeChanged(smsCode: value),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      BlocSelector<SignInFormPhoneCubit, SignInFormPhoneState,
                          bool>(
                        selector: (state) {
                          return state.phoneNumber.isNotEmpty;
                        },
                        builder: (context, validPhone) {
                          return CustomAuthFilledButton(
                            text: "VERIFY",
                            onTap: () => context
                                .read<SignInFormPhoneCubit>()
                                .verifySmsCode(),
                            disabled: validPhone,
                          );
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 0),
                        child: Row(
                          children: [
                            const Spacer(),
                            CountDownTimer(
                              smsCodeTimeoutSeconds: smsCodeTimeoutSeconds,
                              onTimerCompleted: () {
                                CustomSnackbar.showSnackBar(
                                    context, "SMS Code Timeout!", true);
                                context.read<SignInFormPhoneCubit>().reset();
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ));
            }
          },
        ),
      ),
    );
  }
}
