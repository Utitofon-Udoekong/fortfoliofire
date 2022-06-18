import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/sign_up_form/phone/sign_up_form_phone_cubit.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/core/validator_helpers.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';

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
  FocusNode phoneFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MultiBlocListener(
          listeners: [
            BlocListener<SignUpFormPhoneCubit, SignUpFormPhoneState>(
              listenWhen: (p, c) =>
                  p.failure != c.failure && c.failure.isNotEmpty,
              listener: (context, state) {
                CustomSnackbar.showSnackBar(context, state.failure, true);
              },
            ),
            BlocListener<SignUpFormPhoneCubit, SignUpFormPhoneState>(
              listenWhen: (p, c) =>
                  p.verificationId != c.verificationId &&
                  c.displaySmsCodeForm,
              listener: (context, state) =>
                  context.router.push(const ConfirmSignupWithOTPRoute()),
            )
          ],
          child: BlocBuilder<SignUpFormPhoneCubit, SignUpFormPhoneState>(
            builder: (context, state) {
              return LoadingView(
                  isLoading: state.displayLoadingIndicator,
                  child: SafeArea(
                    child: SingleChildScrollView(
                      child: Semantics(
                        label: "Sign up with phone number",
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
                                      return Semantics(
                                        textField: true,
                                        textDirection: TextDirection.ltr,
                                        label: "Phone Input Field",
                                        child: IntlPhoneField(
                                          focusNode: phoneFocusNode,
                                          decoration: const InputDecoration(
                                            border: InputBorder.none,
                                            filled: true,
                                            fillColor: Color(0xFFF3F6F8),
                                          ),
                                          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                          initialCountryCode: 'NG',
                                          keyboardType: TextInputType.phone,
                                          textInputAction: TextInputAction.next,
                                          onChanged: (value) => context
                                              .read<SignUpFormPhoneCubit>()
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
                                  BlocSelector<SignUpFormPhoneCubit,
                                      SignUpFormPhoneState, bool>(
                                    selector: (state) {
                                      return state.phoneNumber.isValidPhone();
                                    },
                                    builder: (context, validPhone) {
                                      return CustomAuthFilledButton(
                                        text: "VERIFY OTP",
                                        onTap: () {
                                          phoneFocusNode.unfocus();
                                          context
                                            .read<SignUpFormPhoneCubit>()
                                            .signUpWithPhoneNumber();
                                        },
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
