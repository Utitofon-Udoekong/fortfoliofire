import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/reset_password_form/reset_password_cubit.dart';
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
        create: (context) => getIt<ResetPasswordCubit>(),
        child: MultiBlocListener(
          listeners: [
            BlocListener<ResetPasswordCubit, ResetPasswordState>(
              listenWhen: (p, c) => p.failure != c.failure && c.failure.isNotEmpty,
              listener: (context, state) {
                CustomSnackbar.showSnackBar(context, state.failure, true);
              },
            ),
            BlocListener<ResetPasswordCubit, ResetPasswordState>(
              listenWhen: (p, c) => p.success != c.success && c.success.isNotEmpty,
              listener: (context, state) {
                CustomSnackbar.showSnackBar(context, state.success, false);
              },
            ),
          ],
          child: BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
            buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
            builder: (context, state) {
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
                            style: TextStyle(
                                fontSize: 15, color: Color(0xFF656565)),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const Text(
                            "Email address",
                            style: TextStyle(
                                fontSize: 15, color: Color(0xFF656565)),
                          ),
                          BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
                            buildWhen: (p, c) =>
                                p.emailAddress != c.emailAddress,
                            builder: (context, state) {
                              return TextFormField(
                                autocorrect: false,
                                keyboardType: TextInputType.emailAddress,
                                textInputAction: TextInputAction.next,
                                decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xFFF3F6F8),
                                    border: InputBorder.none),
                                onChanged: (value) => context
                                    .read<ResetPasswordCubit>()
                                    .emailAddressChanged(emailAddress: value),
                                validator: (_) => context
                                    .read<ResetPasswordCubit>()
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
                              );
                            },
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          BlocBuilder<ResetPasswordCubit, ResetPasswordState>(
                            buildWhen: (p, c) => p.isSubmitting != c.isSubmitting,
                            builder: (context, state) {
                              return CustomAuthFilledButton(
                                text: 'RESET PASSWORD',
                                onTap: () => context
                                    .read<ResetPasswordCubit>()
                                    .requestReset(),
                                disabled: state.isSubmitting,
                              );
                            },
                          ),
                        ],
                      ),
                    )),
                  )),
                );
              }
            },
          ),
        ));
  }
}
