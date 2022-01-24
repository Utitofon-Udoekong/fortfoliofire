import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/sign_in_form/email/sign_in_form_email_bloc.dart';
import 'package:fortfolio/injection.dart';

import 'sign_in_form_email.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (BuildContext context) => getIt<SignInFormEmailBloc>(),
        child: const SignInFormEmail(),
      )
    );
  }
}
