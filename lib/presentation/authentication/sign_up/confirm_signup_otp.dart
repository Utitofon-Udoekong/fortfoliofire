import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/application/auth/sign_up_form/phone/sign_up_form_phone_cubit.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:fortfolio/domain/widgets/otp_field/otp_box_style.dart';
import 'package:fortfolio/domain/widgets/otp_field/otp_field_style.dart';
import 'package:fortfolio/domain/widgets/otp_field/otp_text_field.dart';
import 'package:auto_route/auto_route.dart';

import '../../../domain/widgets/countdown_timer.dart';

class ConfirmSignupWithOTP extends StatelessWidget {
  final int smsCodeTimeoutSeconds = 60;

  const ConfirmSignupWithOTP({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final phoneNumber = context.select(
        (SignUpFormPhoneCubit phoneCubit) => phoneCubit.state.phoneNumber);
    
    return Scaffold(
      body: MultiBlocListener(
        listeners: [
           BlocListener<SignUpFormPhoneCubit, SignUpFormPhoneState>(
                  listenWhen: (p, c) =>
                      p.failure != c.failure && c.failure.isNotEmpty,
                  listener: (context, state) {
                    CustomSnackbar.showSnackBar(context, state.failure, true);
                  },
                ),
           BlocListener<SignUpFormPhoneCubit, SignUpFormPhoneState>(
                  listenWhen: (p, c) =>
                      p.success != c.success && c.success.isNotEmpty,
                  listener: (context, state) {
                    CustomSnackbar.showSnackBar(context, state.success, false);
                    context.router.replace(const HomePageRoute());
                  },
                ),
          BlocListener<AuthCubit, AuthState>(
            listenWhen: (p, c) => p.isLoggedIn != c.isLoggedIn && c.isLoggedIn,
            listener: (context, state) {
              context.router.replace(const HomePageRoute());
            },
          ),
        ],
        child: BlocBuilder<SignUpFormPhoneCubit, SignUpFormPhoneState>(
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
                        style: titleText.copyWith(fontSize: 24),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      BlocBuilder<SignUpFormPhoneCubit, SignUpFormPhoneState>(
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
                            onCompleted: (value) => context
                                .read<SignUpFormPhoneCubit>()
                                .smsCodeChanged(smsCode: value),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      BlocSelector<SignUpFormPhoneCubit, SignUpFormPhoneState,
                          bool>(
                        selector: (state) {
                          return state.phoneNumber.isEmpty;
                        },
                        builder: (context, invalidPhone) {
                          return CustomAuthFilledButton(
                            text: "VERIFY",
                            onTap: () => context
                                .read<SignUpFormPhoneCubit>()
                                .verifySmsCode(),
                            disabled: invalidPhone,
                          );
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          TextButton(onPressed: () => context
                              .read<SignUpFormPhoneCubit>()
                              .signUpWithPhoneNumber(), child: Text("Resend", style: subTitle.copyWith(fontSize: 13, color: kPrimaryColor),)),
                          const Spacer(),
                          CountDownTimer(
                            smsCodeTimeoutSeconds: smsCodeTimeoutSeconds,
                            onTimerCompleted: () {
                              CustomSnackbar.showSnackBar(
                                  context, "SMS Code Timeout!", true);
                              context.read<SignUpFormPhoneCubit>().reset();
                            },
                          ),
                        ],
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
