import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/application/auth/sign_in_form/phone/sign_in_form_phone_cubit.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:fortfolio/injection.dart';
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
                    // context.router.replace(route);
                  },
                ),
                BlocListener<SignInFormPhoneCubit, SignInFormPhoneState>(
                  listenWhen: (p, c) => p.failureOption != c.failureOption,
                  listener: (context, state) {
                    state.failureOption.fold(
                      () => null,
                      (failure) => CustomSnackbar.showSnackBar(
                        context,
                        failure.when(
                          serverError: () => 'Encountered a server error',
                          emailAlreadyInUse: () =>
                              'Email address already in use',
                          invalidEmailAndPassword: () =>
                              'Invalid email and password',
                          invalidPhoneNumber: () => 'Invalid Phone number',
                          tooManyRequests: () => "Too Many Requests",
                          deviceNotSupported: () => "Device Not Supported",
                          smsTimeout: () => "Sms Timeout",
                          sessionExpired: () => "Session Expired",
                          invalidVerificationCode: () =>
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
                                        fontSize: 15, color: Color(0xFF656565)),
                                  ),
                                  TextButton(
                                    onPressed: () => context.router
                                        .push(const SignInFormEmailRoute()),
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
                                        phoneNumber: value.toString()),
                                validator: (_) => context
                                    .read<SignInFormPhoneCubit>()
                                    .state
                                    .phoneNumber
                                    .value
                                    .fold(
                                        (f) => f.maybeMap(
                                            invalidPhone: (_) =>
                                                'Invalid Phone Number',
                                            orElse: () => null),
                                        (r) => null),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              CustomAuthFilledButton(
                                text: state.displayNextButton
                                    ? 'VERIFY OTP '
                                    : 'ENTER PHONE',
                                onTap: () => {
                                  if (_formKey.currentState != null &&
                                      _formKey.currentState!.validate())
                                    {
                                      context
                                          .read<SignInFormPhoneCubit>()
                                          .signInWithPhoneNumber()
                                    }
                                },
                                disabled: !state.phoneNumber.isValid(),
                              ),
                              if (state.isSubmitting) const LoadingView()
                            ],
                          ),
                        ));
                  },
                ),
              )),
            )));
  }
}
