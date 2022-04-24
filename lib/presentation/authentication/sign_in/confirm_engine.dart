import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/sign_in_form/phone/sign_in_form_phone_cubit.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/authentication/sign_in/confirm_login_otp.dart';

class ConfirmLoginEngine extends StatelessWidget {
  const ConfirmLoginEngine({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: getIt<SignInFormPhoneCubit>(),
      child: const ConfirmLoginWithOTP(),
    );
  }
}