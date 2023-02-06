import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/security/cubit/security_cubit.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SecurityCubit>(),
      child: MultiBlocListener(
        listeners: [
          BlocListener<SecurityCubit, SecurityState>(
            listenWhen: (previous, current) => previous.failure != current.failure,
            listener: (context, state) {
              CustomSnackbar.showSnackBar(context, state.failure, true);
            },
          ),
          BlocListener<SecurityCubit, SecurityState>(
            listenWhen: (previous, current) => previous.success != current.success,
            listener: (context, state) {
              CustomSnackbar.showSnackBar(context, state.success, false);
            },
          ),
        ],
        child: Scaffold(
          body: SafeArea(
              child: SingleChildScrollView(
            child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
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
                        "Change Password",
                        style: titleText,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Enter your email Address",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFF656565)),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      BlocBuilder<SecurityCubit, SecurityState>(
                        builder: (context, state) {
                          return TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.done,
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color(0xFFF3F6F8),
                              border: InputBorder.none,
                            ),
                            onChanged: (String email) => context
                                .read<SecurityCubit>()
                                .emailAddressChanged(emailAddress: email),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      BlocSelector<SecurityCubit, SecurityState, bool>(
                        selector: (state) {
                          return state.isValidState;
                        },
                        builder: (context, isValidState) {
                          return CustomAuthFilledButton(
                            text: 'REQUEST PASSWORD RESET',
                            onTap: () =>
                                context.read<SecurityCubit>().requestReset(),
                            disabled: !isValidState,
                          );
                        },
                      ),
                    ],
                  ),
                )),
          )),
        ),
      ),
    );
  }
}
