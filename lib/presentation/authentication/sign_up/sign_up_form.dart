import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool _obscuretext = true;
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return BlocConsumer<SignUpFormBloc, SignUpFormState>(
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
                              context.router.push(const SignInFormEmailRoute()),
                          child: Text(
                            "Login",
                            style: subTitle.copyWith(color: kPrimaryColor),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Let\'s\nGet Started',
                      style: titleText,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Email",
                      style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          errorText: "",
                          filled: true,
                          fillColor: const Color(0xFFF3F6F8),
                          border: InputBorder.none),
                      autocorrect: false,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      onChanged: (value) => context
                          .read<SignUpFormBloc>()
                          .add(SignUpFormEvent.emailChanged(value)),
                      validator: (_) => context
                          .read<SignUpFormBloc>()
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
                          // errorText: controller.passwordErrorText,
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
                          .read<SignUpFormBloc>()
                          .add(SignUpFormEvent.passwordChanged(value)),
                      validator: (_) => context
                          .read<SignUpFormBloc>()
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
                      height: 30,
                    ),
                    const Text(
                      "Your Phone number",
                      style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
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
                      onChanged: (value) => context.read<SignUpFormBloc>().add(
                          SignUpFormEvent.phoneNumberChanged(value.toString())),
                      validator: (_) => context
                          .read<SignUpFormBloc>()
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
                          // .fold(
                          //     (f) => f.maybeMap(
                          //         invalidPhone: (_) => 'Invalid Phone Number',
                          //         orElse: () => null),
                          //     (r) => null),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomAuthFilledButton(
                      text: 'Register',
                      onTap: () => {
                        context.read<SignUpFormBloc>().add(const SignUpFormEvent
                            .registerWithEmailAndPasswordpressed())
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
