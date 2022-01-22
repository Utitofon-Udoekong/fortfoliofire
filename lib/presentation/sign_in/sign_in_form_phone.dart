import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/sign_in_form/phone/sign_in_form_phone_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/injection.dart';

class SignInFormPhone extends StatefulWidget {
  const SignInFormPhone({Key? key}) : super(key: key);

  @override
  State<SignInFormPhone> createState() => _SignInFormPhoneState();
}

class _SignInFormPhoneState extends State<SignInFormPhone> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<SignInFormPhoneBloc>(),
        child: BlocConsumer<SignInFormPhoneBloc, SignInFormPhoneState>(
              listener: (context, state) {
                state.authFailureOrSuccessOption.fold(
                    () => {}, (either) => either.fold((failure) {}, (r) {}));
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
                                  onTap: () => {},
                                  child: const Icon(Icons.close),
                                ),
                                InkWell(
                                  onTap: () => {},
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
                                  "Your Phone Number",
                                  style: const TextStyle(
                                      fontSize: 15,
                                      color: const Color(0xFF656565)),
                                ),
                                TextButton(
                                  onPressed: () => {},
                                  child: const Text(
                                    "Login with email",
                                    style: TextStyle(
                                        fontSize: 15, color: kPrimaryColor),
                                  ),
                                )
                              ],
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                  errorText: "",
                                  filled: true,
                                  fillColor: const Color(0xFFF3F6F8),
                                  border: InputBorder.none),
                              autocorrect: false,
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              onChanged: (value) => context
                                  .read<SignInFormPhoneBloc>()
                                  .add(SignInFormPhoneEvent.phoneChanged(value)),
                              validator: (_) => context
                                  .read<SignInFormPhoneBloc>()
                                  .state
                                  .phoneNumber
                                  .value
                                  .fold(
                                      (f) => f.maybeMap(
                                          invalidPhone: (_) => 'Invalid Phone Number',
                                          orElse: () => null),
                                      (r) => null),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text(
                              "Your Password",
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xFF656565)),
                            ),
                            // TextFormField(
                            //   obscureText: true,
                            //   decoration: InputDecoration(
                            //       filled: true,
                            //       fillColor: const Color(0xFFF3F6F8),
                            //       border: InputBorder.none,
                            //       suffixIcon: IconButton(
                            //         onPressed: () {
                            //           setState(() {
                            //             _obscureText = !_obscureText;
                            //           });
                            //         },
                            //         icon: _obscureText ? const Icon( Icons.visibility, color: kPrimaryColor, ) : const Icon( Icons.visibility_off, color: kPrimaryColor, ),
                            //       )),
                            //   textInputAction: TextInputAction.done,
                            //   onChanged: (value) => context
                            //       .read<SignInFormPhoneBloc>()
                            //       .add(SignInFormPhoneEvent.passwordChanged(value)),
                            //   validator: (_) => context .read<SignInFormPhoneBloc>() .state .password .value .fold( (f) => f.maybeMap( shortPassword: (_) => 'Short Password', orElse: () => null), (r) => null),
                            // ),
                            const SizedBox(
                              height: 3.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                InkWell(
                                    // onTap: (){
                                    //   controller.password.clear();
                                    //   Get.toNamed('/reset');
                                    // },
                                    child: Text(
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
                                context.read<SignInFormPhoneBloc>().add(
                                      const SignInFormPhoneEvent
                                          .signInWithPhonePressed(),
                                    )
                              },
                              disabled: false,
                            ),
                          ],
                        ),
                      )),
                ));
              },
            ),
      )
    );
  }
}
