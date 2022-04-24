import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/sign_up_form/phone/sign_up_form_phone_cubit.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/core/validator_helpers.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:fortfolio/injection.dart';

import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class SignUpFormPhone extends StatefulWidget {
  const SignUpFormPhone({Key? key}) : super(key: key);

  @override
  State<SignUpFormPhone> createState() => _SignUpFormPhoneState();
}

class _SignUpFormPhoneState extends State<SignUpFormPhone> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
            create: (context) => getIt<SignUpFormPhoneCubit>(),
            child: MultiBlocListener(
              listeners: [
                BlocListener<SignUpFormPhoneCubit, SignUpFormPhoneState>(
                  listenWhen: (p, c) => p.failureOption != c.failureOption,
                  listener: (context, state) {
                    state.failureOption.fold(
                      () => null,
                      (failure) => CustomSnackbar.showSnackBar(
                        context,
                        failure.maybeMap(
                          orElse: () => "",
                          serverError: (_) => 'Encountered a server error',
                          invalidEmailAndPasswordCombination: (_) =>
                              "Invalid email or Password",
                          tooManyRequests: (_) => "Too Many Requests",
                          emailAlreadyInUse: (_) =>
                              'Email address already in use',
                          smsTimeout: (_) => "Sms Timeout",
                          sessionExpired: (_) => "Session Expired",
                          invalidVerificationCode: (_) =>
                              "Invalid Verification Code",
                        ),
                        true,
                      ),
                    );
                  },
                ),
                BlocListener<SignUpFormPhoneCubit, SignUpFormPhoneState>(
                  listenWhen: (p, c) =>
                      p.verificationId != c.verificationId &&
                      c.displaySmsCodeForm,
                  listener: (context, state) =>
                      context.router.push(const ConfirmSignupEngineRoute()),
                )
              ],
              child: BlocBuilder<SignUpFormPhoneCubit, SignUpFormPhoneState>(
                builder: (context, state) {
                  if (state.displayLoadingIndicator) {
                    return const LoadingView();
                  } else {
                    return SafeArea(
                      child: SingleChildScrollView(
                        child: Form(
                            autovalidateMode: state.showErrorMessages
                                ? AutovalidateMode.onUserInteraction
                                : AutovalidateMode.disabled,
                            key: _formKey,
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
                                    height: 40,
                                  ),
                                  Text(
                                    "Add a \nPhone number",
                                    style: titleText,
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Text(
                                    "Your Phone Number",
                                    style: TextStyle(
                                        fontSize: 15, color: Color(0xFF656565)),
                                  ),
                                  BlocBuilder<SignUpFormPhoneCubit,
                                      SignUpFormPhoneState>(
                                    builder: (context, state) {
                                      return IntlPhoneField(
                                        decoration: const InputDecoration(
                                          border: InputBorder.none,
                                          filled: true,
                                          fillColor: Color(0xFFF3F6F8),
                                        ),
                                        initialCountryCode: 'NG',
                                        keyboardType: TextInputType.phone,
                                        textInputAction: TextInputAction.next,
                                        onChanged: (value) => context
                                            .read<SignUpFormPhoneCubit>()
                                            .phoneNumberChanged(
                                                phoneNumber:
                                                    value.completeNumber),
                                      );
                                    },
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  BlocSelector<SignUpFormPhoneCubit,
                                      SignUpFormPhoneState,
                                      bool>(
                                    selector: (state) {
                                      return state.phoneNumber.isValidPhone();
                                    },
                                    builder: (context, validPhone) {
                                      return CustomAuthFilledButton(
                                        text: "VERIFY OTP",
                                        onTap: () => context
                                            .read<SignUpFormPhoneCubit>()
                                            .signUpWithPhoneNumber(),
                                        disabled:
                                            !validPhone,
                                      );
                                    },
                                  ),
                                ],
                              ),
                            )),
                      ),
                    );
                  }
                },
              ),
            )));
  }
}
