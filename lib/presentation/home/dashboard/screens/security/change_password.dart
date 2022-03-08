import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/security/cubit/security_cubit.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: BlocProvider(
          create: (context) => getIt<SecurityCubit>(),
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
                  "Change Password",
                  style: titleText,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Enter your email Address",
                  style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  controller: emailController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF3F6F8),
                    border: InputBorder.none,
                  ),
                  // onChanged: controller.updateResetPasswordform,
                ),
                CustomAuthFilledButton(
                  text: 'REQUEST PASSWORD RESET',
                  onTap: () {
                    context.read<SecurityCubit>().requestReset(emailAddress: emailController.text);
                  },
                  disabled: false,
                ),
              ],
            ),
          )),
        ),
      )),
    );
  }
}
