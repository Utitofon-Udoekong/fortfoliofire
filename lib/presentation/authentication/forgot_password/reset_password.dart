import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/reset_password_form/reset_password_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:fortfolio/injection.dart';
import 'package:auto_route/auto_route.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<ResetPasswordBloc>(),
        child: BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
            listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
              () => {},
              (either) => either.fold((failure) {
                    CustomSnackbar.showSnackBar(
                        context,
                        failure.maybeMap(orElse: () => "",
                        serverError: (_) => 'Encountered a server error',
                        invalidEmail: (_) => "Invalid email address",
                        tooManyRequests: (_) => "Too Many Requests",
                        emailAlreadyInUse: (_) => 'Email address already in use',
                        ),
                        // failure.when(
                        //   serverError: () => 'Encountered a server error',
                        //   emailAlreadyInUse: () => 'Email address already in use',
                        //   invalidEmailAndPasswordCombination: () =>
                        //       'Invalid email and password',
                        //   invalidPhoneNumber: () => 'Invalid Phone number',
                        //   tooManyRequests: () => "Too Many Requests",
                        //   deviceNotSupported: () => "Device Not Supported",
                        //   smsTimeout: () => "Sms Timeout",
                        //   sessionExpired: () => "Session Expired",
                        //   invalidVerificationCode: () =>
                        //       "Invalid Verification Code",
                        // ),
                        true);
                  }, (r) {}));
        }, builder: (context, state) {
          if (state.isSubmitting) {
            return const LoadingView();
          } else {
            return Scaffold(
              body: SafeArea(
                  child: SingleChildScrollView(
                child: Form(
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
                        "Create new\nPassword",
                        style: titleText,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "A password reset link will be sent to your email address",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFF656565)),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Recovery code",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFF656565)),
                      ),
                      TextFormField(
                        autocorrect: false,
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color(0xFFF3F6F8),
                            border: InputBorder.none),
                        onChanged: (value) => context
                            .read<ResetPasswordBloc>()
                            .add(ResetPasswordEvent.emailChanged(value)),
                        validator: (_) => context
                            .read<ResetPasswordBloc>()
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
                        height: 50,
                      ),
                      CustomAuthFilledButton(
                        text: 'RESET PASSWORD',
                        onTap: () {
                          context.read<ResetPasswordBloc>().add(
                              const ResetPasswordEvent.resetPasswordPressed());
                        },
                        disabled: state.isSubmitting,
                      ),
                    ],
                  ),
                )),
              )),
            );
          }
        }));
  }
}
