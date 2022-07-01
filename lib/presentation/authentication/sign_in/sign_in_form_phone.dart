import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/sign_in_form/phone/sign_in_form_phone_cubit.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/core/validator_helpers.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';

import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class SignInFormPhone extends StatefulWidget {
  const SignInFormPhone({Key? key}) : super(key: key);

  @override
  State<SignInFormPhone> createState() => _SignInFormPhoneState();
}

class _SignInFormPhoneState extends State<SignInFormPhone> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MultiBlocListener(
          listeners: [
            BlocListener<SignInFormPhoneCubit, SignInFormPhoneState>(
              listenWhen: (p, c) =>
                  p.failure != c.failure && c.failure.isNotEmpty,
              listener: (context, state) {
                CustomSnackbar.showSnackBar(context, state.failure, true);
              },
            ),
            BlocListener<SignInFormPhoneCubit, SignInFormPhoneState>(
              listenWhen: (p, c) =>
                  p.verificationId != c.verificationId &&
                  c.verificationId.isNotEmpty,
              listener: (context, state) {
                context.router.push(const ConfirmLoginWithOTPRoute());
              },
            )
          ],
          child: BlocBuilder<SignInFormPhoneCubit, SignInFormPhoneState>(
            builder: (context, state) {
              return LoadingView(
                  isLoading: state.displayLoadingIndicator,
                  child: SafeArea(
                    child: SingleChildScrollView(
                      child: Semantics(
                        label: "Sign in with phone screen",
                        child: Form(
                            key: _formKey,
                            child: Padding(
                              padding: kDefaultPadding,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      InkWell(
                                        onTap: () => context.router.pop(),
                                        child: const Icon(Icons.close),
                                      ),
                                      InkWell(
                                        onTap: () => context.router
                                            .push(const SignUpFormRoute()),
                                        child: Text(
                                          "Register",
                                          style: subTitle.copyWith(
                                              color: kPrimaryColor),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Text(
                                    "Hey, \nWelcome Back",
                                    style: titleText,
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      const Text(
                                        "Your Phone Number",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF656565)),
                                      ),
                                      TextButton(
                                        onPressed: () => context.router
                                            .push(const SignInFormEmailRoute()),
                                        child: const Text(
                                          "Login with email",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: kPrimaryColor),
                                        ),
                                      )
                                    ],
                                  ),
                                  BlocBuilder<SignInFormPhoneCubit,
                                      SignInFormPhoneState>(
                                    builder: (context, state) {
                                      return Semantics(
                                        label: "Phone number input field",
                                        textField: true,
                                        child: IntlPhoneField(
                                          decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            filled: true,
                                            fillColor: Color(0xFFF3F6F8),
                                          ),
                                          initialCountryCode: 'NG',
                                          keyboardType: TextInputType.phone,
                                          textInputAction: TextInputAction.next,
                                          onChanged: (value) => context
                                              .read<SignInFormPhoneCubit>()
                                              .phoneNumberChanged(
                                                  phoneNumber:
                                                      value.completeNumber),
                                        ),
                                      );
                                    },
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  BlocSelector<SignInFormPhoneCubit,
                                      SignInFormPhoneState, bool>(
                                    selector: (state) {
                                      return state.phoneNumber.isValidPhone();
                                    },
                                    builder: (context, validPhone) {
                                      return CustomAuthFilledButton(
                                        text: "VERIFY OTP",
                                        onTap: () => context
                                            .read<SignInFormPhoneCubit>()
                                            .signInWithPhoneNumber(),
                                        disabled: !validPhone,
                                      );
                                    },
                                  ),
                                ],
                              ),
                            )),
                      ),
                    ),
                  ),
                );
            },
          ),
        ));
  }
}
