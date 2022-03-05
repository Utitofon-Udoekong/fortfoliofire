import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/application/auth/sign_in_form/phone/sign_in_form_phone_cubit.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/utils/pages.dart';
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
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
            create: (context) => getIt<SignInFormPhoneCubit>(),
            child: MultiBlocListener(
              listeners: [
                BlocListener<AuthCubit, AuthState>(
                  listenWhen: (p, c) =>
                      p.isLoggedIn != c.isLoggedIn && c.isLoggedIn,
                  listener: (context, state) {
                    context.router.replaceNamed(home);
                  },
                ),
                BlocListener<SignInFormPhoneCubit, SignInFormPhoneState>(
                  listenWhen: (p, c) => p.failureOption != c.failureOption,
                  listener: (context, state) {
                    state.failureOption.fold(
                      () => null,
                      (failure) => CustomSnackbar.showSnackBar(
                        context,
                        failure.maybeMap(orElse: () => "",
                              serverError: (_) => 'Encountered a server error',
                              invalidEmailAndPasswordCombination: (_) => "Invalid email or Password",
                              tooManyRequests: (_) => "Too Many Requests",
                              emailAlreadyInUse: (_) => 'Email address already in use',
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
                BlocListener<SignInFormPhoneCubit, SignInFormPhoneState>(
                  listenWhen: (p, c) =>
                      p.displaySmsCodeForm != p.displaySmsCodeForm,
                  listener: (context, state) {
                    context.router.replace(const ConfirmLoginWithOTPRoute());
                  },
                )
              ],
              child: SafeArea(child: SingleChildScrollView(
                child: BlocBuilder<SignInFormPhoneCubit, SignInFormPhoneState>(
                  builder: (context, state) {
                    if (state.isSubmitting) {
                      return const LoadingView();
                    } else {
                      return Form(
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
                                          .push(SignInFormEmailRoute()),
                                      child: const Text(
                                        "Login with email",
                                        style: TextStyle(
                                            fontSize: 15, color: kPrimaryColor),
                                      ),
                                    )
                                  ],
                                ),
                                IntlPhoneField(
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
                                          phoneNumber: value.completeNumber),
                                  validator: (_) => context
                                      .read<SignInFormPhoneCubit>()
                                      .state
                                      .phoneNumber
                                      .value
                                      .fold(
                                        (f) => f.maybeMap(
                                            auth: (value) {
                                              return value.f.failedValue;
                                            },
                                            orElse: () => null),
                                        (r) => null,
                                      ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                CustomAuthFilledButton(
                                  text: state.phoneNumber.isValid()
                                      ? 'VERIFY OTP'
                                      : 'ENTER PHONE',
                                  onTap: () => {
                                    if (_formKey.currentState != null &&
                                        _formKey.currentState!.validate())
                                      {
                                        context
                                            .read<SignInFormPhoneCubit>()
                                            .signInWithPhoneNumber(),
                                      }
                                  },
                                  disabled: !state.phoneNumber.isValid(),
                                ),
                              ],
                            ),
                          ));
                    }
                  },
                ),
              )),
            )));
  }
}