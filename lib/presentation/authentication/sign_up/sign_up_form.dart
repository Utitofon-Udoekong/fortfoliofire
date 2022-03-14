import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/sign_up_form/email/sign_up_form_cubit.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:fortfolio/injection.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: BlocProvider(
          create: (context) => getIt<SignUpFormCubit>(),
          child: MultiBlocListener(
            listeners: [
              BlocListener<SignUpFormCubit, SignUpFormState>(
                listenWhen: (p, c) =>
                    p.failure != c.failure && c.failure.isNotEmpty,
                listener: (context, state) {
                  CustomSnackbar.showSnackBar(context, state.failure, true);
                },
              ),
              BlocListener<SignUpFormCubit, SignUpFormState>(
                listenWhen: (p, c) =>
                    p.success != c.success && c.success.isNotEmpty,
                listener: (context, state) {
                  CustomSnackbar.showSnackBar(context, state.success, false);
                },
              ),
            ],
            child: BlocBuilder<SignUpFormCubit, SignUpFormState>(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  InkWell(
                                    onTap: () => context.router.pop(),
                                    child: const Icon(Icons.close),
                                  ),
                                  InkWell(
                                    onTap: () => context.router
                                        .push(const SignInFormEmailRoute()),
                                    child: Text(
                                      "Login",
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
                                'Let\'s\nGet Started',
                                style: titleText,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                "Email",
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xFF656565)),
                              ),
                              BlocBuilder<SignUpFormCubit, SignUpFormState>(
                                builder: (context, state) {
                                  return TextFormField(
                                    decoration: const InputDecoration(
                                        filled: true,
                                        fillColor: Color(0xFFF3F6F8),
                                        border: InputBorder.none),
                                    autocorrect: false,
                                    keyboardType: TextInputType.name,
                                    textInputAction: TextInputAction.next,
                                    onChanged: (value) => context
                                        .read<SignUpFormCubit>()
                                        .emailChanged(emailAddress: value),
                                    validator: (_) => context
                                        .read<SignUpFormCubit>()
                                        .state
                                        .emailAddress
                                        .value
                                        .fold(
                                            (f) => f.maybeMap(
                                                invalidEmail: (_) =>
                                                    "Invalid email address.",
                                                orElse: () => null),
                                            (r) => null),
                                  );
                                },
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                "Firstname",
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xFF656565)),
                              ),
                              BlocBuilder<SignUpFormCubit, SignUpFormState>(
                                builder: (context, state) {
                                  return TextFormField(
                                    decoration: const InputDecoration(
                                        filled: true,
                                        fillColor: Color(0xFFF3F6F8),
                                        border: InputBorder.none),
                                    autocorrect: false,
                                    keyboardType: TextInputType.name,
                                    textInputAction: TextInputAction.next,
                                    onChanged: (value) => context
                                        .read<SignUpFormCubit>()
                                        .firstNameChanged(firstName: value),
                                    validator: (_) => context
                                        .read<SignUpFormCubit>()
                                        .state
                                        .firstName
                                        .value
                                        .fold(
                                          (f) => f.maybeMap(
                                              shortName: (_) =>
                                                  "Name is too short",
                                              orElse: () => null),
                                          (r) => null,
                                        ),
                                  );
                                },
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                "Lastname",
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xFF656565)),
                              ),
                              BlocBuilder<SignUpFormCubit, SignUpFormState>(
                                builder: (context, state) {
                                  return TextFormField(
                                    decoration: const InputDecoration(
                                        filled: true,
                                        fillColor: Color(0xFFF3F6F8),
                                        border: InputBorder.none),
                                    autocorrect: false,
                                    keyboardType: TextInputType.name,
                                    textInputAction: TextInputAction.next,
                                    onChanged: (value) => context
                                        .read<SignUpFormCubit>()
                                        .lastNameChanged(lastName: value),
                                    validator: (_) => context
                                        .read<SignUpFormCubit>()
                                        .state
                                        .lastName
                                        .value
                                        .fold(
                                          (f) => f.maybeMap(
                                              shortName: (_) =>
                                                  "Name is too short",
                                              orElse: () => null),
                                          (r) => null,
                                        ),
                                  );
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
                              BlocSelector<SignUpFormCubit, SignUpFormState,
                                  bool>(
                                selector: (state) {
                                  return state.isObscure;
                                },
                                builder: (context, isObscure) {
                                  return TextFormField(
                                    obscureText: isObscure,
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: const Color(0xFFF3F6F8),
                                      border: InputBorder.none,
                                      suffixIcon: IconButton(
                                        onPressed: () => context
                                            .read<SignUpFormCubit>()
                                            .isObscureChanged(),
                                        icon: isObscure
                                            ? const Icon(
                                                Icons.visibility,
                                                color: kPrimaryColor,
                                              )
                                            : const Icon(
                                                Icons.visibility_off,
                                                color: kPrimaryColor,
                                              ),
                                      ),
                                      hintText: "ABCdef@123",
                                      hintStyle: TextStyle(
                                          fontSize: 12,
                                          color: kgreyColor.withOpacity(0.4)),
                                    ),
                                    textInputAction: TextInputAction.done,
                                    onChanged: (value) => context
                                        .read<SignUpFormCubit>()
                                        .passwordChanged(password: value),
                                    validator: (_) => context
                                        .read<SignUpFormCubit>()
                                        .state
                                        .password
                                        .value
                                        .fold(
                                          (f) => f.maybeMap(
                                              invalidPassword: (_) =>
                                                  "Invalid password. Must contain upper and lowercase letters, special chractersand numbers, at least 8 characters long.",
                                              orElse: () => null),
                                          (r) => null,
                                        ),
                                  );
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              BlocSelector<SignUpFormCubit, SignUpFormState,
                                  bool>(
                                selector: (state) {
                                  return state.isValidState;
                                },
                                builder: (context, isValidState) {
                                  return CustomAuthFilledButton(
                                    text: 'Register',
                                    onTap: () => context
                                        .read<SignUpFormCubit>()
                                        .registerWithEmailAndPasswordpressed(),
                                    disabled: !isValidState,
                                  );
                                },
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        )),
                  ));
                }
              },
            ),
          )),
    );
  }
}
