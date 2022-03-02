import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/sign_up_form/sign_up_form_cubit.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:fortfolio/injection.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
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
        child: BlocConsumer<SignUpFormCubit, SignUpFormState>(
          listener: (context, state) {
            state.authFailureOrSuccessOption.fold(
                () {},
                (either) => either.fold((failure) {
                      CustomSnackbar.showSnackBar(
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
                      );
                    }, (r) {}));
          },
          builder: (context, state) {
            if(state.isSubmitting){
              return const LoadingView();
            }else {
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
                                  .push(SignInFormEmailRoute()),
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
                          style:
                              TextStyle(fontSize: 15, color: Color(0xFF656565)),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              errorText: "",
                              filled: true,
                              fillColor: Color(0xFFF3F6F8),
                              border: InputBorder.none),
                          autocorrect: false,
                          keyboardType: TextInputType.emailAddress,
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
                          "Firstname",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xFF656565)),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              errorText: "",
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
                          "Lastname",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xFF656565)),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              errorText: "",
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
                          style:
                              TextStyle(fontSize: 15, color: Color(0xFF656565)),
                        ),
                        BlocBuilder<SignUpFormCubit, SignUpFormState>(builder: (context, state){
                          return TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xFFF3F6F8),
                              border: InputBorder.none,
                              suffixIcon: IconButton(
                                onPressed: () => context.read<SignUpFormCubit>().isObscureChanged(),
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
                              .read<SignUpFormCubit>()
                              .passwordChanged(password: value),
                          validator: (_) => context
                              .read<SignUpFormCubit>()
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
                        );
                        }),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "Your Phone number",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xFF656565)),
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
                          onChanged: (value) => context .read<SignUpFormCubit>() .phoneNumberChanged( phoneNumber: value.toString()),
                          validator: (_) => context
                              .read<SignUpFormCubit>()
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
                          onTap: () => {context.read<SignUpFormCubit>().registerWithEmailAndPasswordpressed()},
                          disabled: !state.isValidState,
                        ),
                      ],
                    ),
                  )),
            ));
            }
          },
        ),
      ),
    );
  }
}
