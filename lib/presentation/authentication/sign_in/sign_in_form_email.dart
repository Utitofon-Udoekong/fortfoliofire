import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/sign_in_form/email/sign_in_form_email_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:fortfolio/presentation/authentication/sign_in/sign_in_form_phone.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class SignInFormEmail extends StatefulWidget {
  const SignInFormEmail({Key? key}) : super(key: key);

  @override
  State<SignInFormEmail> createState() => _SignInFormEmailState();
}

class _SignInFormEmailState extends State<SignInFormEmail> {
  bool _obscuretext = true;
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return BlocConsumer<SignInFormEmailBloc, SignInFormEmailState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold((failure) {
                  CustomSnackbar.showSnackBar(
                    context,
                    failure.when(
                      serverError: () => 'Encountered a server error',
                      emailAlreadyInUse: () => 'Email address already in use',
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
                  );
                }, (r) {}));
      },
      builder: (bloccontext, state) {
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          onTap: () => context.router.pop(),
                          child: const Icon(Icons.close),
                        ),
                        InkWell(
                          onTap: () =>
                              context.router.push(const SignUpFormRoute()),
                          child: Text(
                            "Register",
                            style: subTitle.copyWith(color: kPrimaryColor),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          "Your Email",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xFF656565)),
                        ),
                        TextButton(
                          onPressed: () =>
                              context.router.push(const SignInFormPhoneRoute()),
                          child: const Text(
                            "Login with phone",
                            style:
                                TextStyle(fontSize: 15, color: kPrimaryColor),
                          ),
                        )
                      ],
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFF3F6F8),
                          border: InputBorder.none),
                      autocorrect: false,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      onChanged: (value) => context
                          .read<SignInFormEmailBloc>()
                          .add(SignInFormEmailEvent.emailChanged(value)),
                      validator: (_) => context
                          .read<SignInFormEmailBloc>()
                          .state
                          .emailAddress
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
                    const Text(
                      "Your Password",
                      style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color(0xFFF3F6F8),
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obscuretext = !_obscuretext;
                              });
                            },
                            icon: _obscuretext
                                ? const Icon(
                                    Icons.visibility,
                                    color: kPrimaryColor,
                                  )
                                : const Icon(
                                    Icons.visibility_off,
                                    color: kPrimaryColor,
                                  ),
                          )),
                      textInputAction: TextInputAction.done,
                      onChanged: (value) => context
                          .read<SignInFormEmailBloc>()
                          .add(SignInFormEmailEvent.passwordChanged(value)),
                      validator: (_) => context
                          .read<SignInFormEmailBloc>()
                          .state
                          .password
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
                      height: 3.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        InkWell(
                            onTap: () {
                              context.router.push(const ResetPasswordRoute());
                            },
                            child: const Text(
                              'Forgot password?',
                              style: TextStyle(
                                  fontSize: 13.5, color: kPrimaryColor),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomAuthFilledButton(
                      text: 'LOGIN',
                      onTap: () => {
                        context.read<SignInFormEmailBloc>().add(
                              const SignInFormEmailEvent
                                  .signInWithEmailAndPasswordpressed(),
                            )
                      },
                      disabled: state.isSubmitting,
                    ),
                    Visibility(
                        child: const LoadingView(), visible: state.isSubmitting)
                  ],
                ),
              )),
        ));
      },
    );
  }
}
