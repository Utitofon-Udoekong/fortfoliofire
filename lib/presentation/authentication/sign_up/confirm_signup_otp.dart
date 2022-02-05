import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/sign_in_form/phone/sign_in_form_phone_cubit.dart';
import 'package:fortfolio/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:auto_route/auto_route.dart';

import '../../../domain/widgets/countdown_timer.dart';

class ConfirmSignupWithOTP extends StatelessWidget{
  final int smsCodeTimeoutSeconds = 120;

  const ConfirmSignupWithOTP({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<SignUpFormBloc>(context),
      child: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: kDefaultPadding,
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    onPressed: () => context.router.pop(),
                    icon: const Icon(Icons.close),
                    iconSize: 18,
                    color: kBlackColor,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'We sent an OTP to the number ${context.read<SignUpFormBloc>().state.phoneNumber}',
                    style: titleText,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  OTPTextField(
                    length: 6,
                    width: MediaQuery.of(context).size.width - 34,
                    fieldWidth: 58,
                    style: titleText,
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.box,
                    otpFieldStyle: OtpFieldStyle(
                        backgroundColor: Colors.white,
                        borderColor: kgreyColor,
                        focusBorderColor: kPrimaryColor),
                    keyboardType: TextInputType.number,
                    onChanged: (value) => context.read<SignUpFormBloc>().add(SignUpFormEvent.smsCodeChanged(value)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomAuthFilledButton(
                    text:
                        context.read<SignUpFormBloc>().state.isSubmitting
                            ? 'VERIFYING'
                            : 'VERIFY',
                    onTap: () => context.read<SignUpFormBloc>().add(const SignUpFormEvent.verifyOTPpressed()),
                    disabled:
                        context.read<SignUpFormBloc>().state.isSubmitting,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
                    child: Row(
                      children: [
                        const Spacer(),
                        CountDownTimer(
                          smsCodeTimeoutSeconds: smsCodeTimeoutSeconds,
                          onTimerCompleted: (){
                            CustomSnackbar.showSnackBar(context, "SMS Code Timeout!", true);
                            context.read<SignUpFormBloc>().add(const SignUpFormEvent.reset());
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
