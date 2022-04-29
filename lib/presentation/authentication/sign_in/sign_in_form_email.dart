import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
// import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/application/auth/sign_in_form/email/sign_in_form_email_cubit.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class SignInFormEmail extends StatelessWidget {
  const SignInFormEmail({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return BlocProvider(
      create: (BuildContext context) => getIt<SignInFormEmailCubit>(),
      child: Scaffold(
        body: MultiBlocListener(
            listeners: [
              BlocListener<SignInFormEmailCubit, SignInFormEmailState>(
                listenWhen: (p, c) =>
                    p.failure != c.failure && c.failure.isNotEmpty,
                listener: (context, state) {
                  CustomSnackbar.showSnackBar(context, state.failure, true);
                },
              ),
              BlocListener<SignInFormEmailCubit, SignInFormEmailState>(
                listenWhen: (p, c) =>
                    p.success != c.success && c.success.isNotEmpty,
                listener: (context, state) {
                  CustomSnackbar.showSnackBar(context, state.success, false);
                  context.router.replace(const HomePageRoute());
                },
              ),
              BlocListener<AuthCubit, AuthState>(
                listenWhen: (p, c) =>
                    p.isLoggedIn != c.isLoggedIn && c.isLoggedIn,
                listener: (context, state) {
                  context.router.replace(const HomePageRoute());
                },
              )
            ],
            child: BlocBuilder<SignInFormEmailCubit, SignInFormEmailState>(
                builder: (context, state) {
              if (state.isSubmitting) {
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      style:
                                          subTitle.copyWith(color: kPrimaryColor),
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
                                    style: TextStyle(
                                        fontSize: 15, color: Color(0xFF656565)),
                                  ),
                                  TextButton(
                                    onPressed: () => context.router
                                        .push(const SignInFormPhoneRoute()),
                                    child: const Text(
                                      "Login with phone",
                                      style: TextStyle(
                                          fontSize: 15, color: kPrimaryColor),
                                    ),
                                  )
                                ],
                              ),
                              BlocBuilder<SignInFormEmailCubit,
                                  SignInFormEmailState>(
                                buildWhen: (p, c) =>
                                    p.emailAddress != c.emailAddress,
                                builder: (context, state) {
                                  return TextFormField(
                                      decoration: const InputDecoration(
                                          filled: true,
                                          fillColor: Color(0xFFF3F6F8),
                                          border: InputBorder.none),
                                      autocorrect: false,
                                      keyboardType: TextInputType.emailAddress,
                                      textInputAction: TextInputAction.next,
                                      onChanged: (value) => context
                                          .read<SignInFormEmailCubit>()
                                          .emailChanged(emailString: value),
                                      validator: (_) => context
                                          .read<SignInFormEmailCubit>()
                                          .state
                                          .emailAddress
                                          .value
                                          .fold(
                                              (f) => f.maybeMap(
                                                  invalidEmail: (_) =>
                                                      "Invalid email address.",
                                                  orElse: () => null),
                                              (r) => null));
                                },
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                "Your Password",
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xFF656565)),
                              ),
                              BlocBuilder<SignInFormEmailCubit,
                                      SignInFormEmailState>(
                                  buildWhen: (p, c) => p.isObscure != c.isObscure,
                                  builder: (context, state) {
                                    return TextFormField(
                                      obscureText: state.isObscure,
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: const Color(0xFFF3F6F8),
                                          border: InputBorder.none,
                                          hintText: "ABCdef@123",
                                          hintStyle: TextStyle(
                                              fontSize: 12,
                                              color:
                                                  kgreyColor.withOpacity(0.4)),
                                          suffixIcon: IconButton(
                                            onPressed: () => context
                                                .read<SignInFormEmailCubit>()
                                                .isObscureChanged(),
                                            icon: state.isObscure
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
                                          .read<SignInFormEmailCubit>()
                                          .passwordChanged(passwordString: value),
                                      validator: (_) => context
                                          .read<SignInFormEmailCubit>()
                                          .state
                                          .password
                                          .value
                                          .fold(
                                            (f) => f.maybeMap(
                                                invalidPassword: (_) => "Invalid password. Must contain upper and lowercase letters, special chractersand numbers, at least 8 characters long.",
                                                orElse: () => null),
                                            (r) => null,
                                          ),
                                    );
                                  }),
                              const SizedBox(
                                height: 3.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  InkWell(
                                      onTap: () {
                                        context.router
                                            .push(const ResetPasswordRoute());
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
                              BlocBuilder<SignInFormEmailCubit,
                                  SignInFormEmailState>(
                                builder: (context, state) {
                                  return CustomAuthFilledButton(
                                    text: 'LOGIN',
                                    onTap: () => {
                                      context
                                          .read<SignInFormEmailCubit>()
                                          .signInWithEmailAndPasswordpressed(),
                                    },
                                    disabled: !state.isValidState,
                                  );
                                },
                              ),
                            ],
                          ),
                        )),
                  ),
                );
              }
            })),
      ),
    );
  }
}
