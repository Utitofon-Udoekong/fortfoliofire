import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/sign_up_form/phone/sign_up_form_phone_cubit.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/authentication/sign_up/confirm_signup_otp.dart';

class ConfirmSignupEngine extends StatelessWidget {
  const ConfirmSignupEngine({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<SignUpFormPhoneCubit>(),
      child: const ConfirmSignupWithOTP(),
    );
  }
}