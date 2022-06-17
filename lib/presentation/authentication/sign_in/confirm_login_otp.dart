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
              Future.delayed(const Duration(seconds: 1),() {
                context.router.replace(const HomePageRoute());
              });
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
            return LoadingView(
                isLoading: state.isSubmitting,
                child: SafeArea(
                    child: Semantics(
                      label: "confirm phone login with otp",
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
                            style: titleText.copyWith(fontSize: 24),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          BlocBuilder<SignInFormPhoneCubit, SignInFormPhoneState>(
                            builder: (context, state) {
                              return Semantics(
                                textField: true,
                                textDirection: TextDirection.ltr,
                                label: "OTP Text field",
                                child: OTPTextField(
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
                                  onCompleted: (value) => context
                                      .read<SignInFormPhoneCubit>()
                                      .smsCodeChanged(smsCode: value),
                                ),
                              );
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          BlocSelector<SignInFormPhoneCubit, SignInFormPhoneState,
                              bool>(
                            selector: (state) {
                              return state.phoneNumber.isEmpty;
                            },
                            builder: (context, inValidPhone) {
                              return CustomAuthFilledButton(
                                text: "VERIFY",
                                onTap: () => context
                                    .read<SignInFormPhoneCubit>()
                                    .verifySmsCode(),
                                disabled: inValidPhone,
                              );
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              TextButton(onPressed: () => context
                                  .read<SignInFormPhoneCubit>()
                                  .signInWithPhoneNumber(), child: Text("Resend", style: subTitle.copyWith(fontSize: 13, color: kBlackColor),)),
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
                        ],
                      ),
                                      ),
                                    ),
                    )),
              );
          },
        ),
      ),
    );
  }
}
