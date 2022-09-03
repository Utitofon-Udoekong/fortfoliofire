import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_icon_button.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/security/cubit/security_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

class Security extends StatelessWidget {
  const Security({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<SecurityCubit>().getBiometricState();
    final biometricsExists = context.select((SecurityCubit element) => element.state.biometricsExists);
    return Scaffold(
      body: SafeArea(
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
                height: 20,
              ),
              Text(
                "Security",
                style: titleText.copyWith(color: kBlackColor),
              ),
              const SizedBox(
                height: 40,
              ),
              const CustomIconButton(
                  title: 'Change your password', page: ChangePasswordRoute()),
              const SizedBox(
                height: 10,
              ),
              const CustomIconButton(
                  title: 'Set pin', page: SetPinRoute()),
              const SizedBox(
                height: 10,
              ),
              SwitchListTile.adaptive(
                value: biometricsExists,
                tileColor: const Color(0XFFF3F6F8),
                activeColor: kPrimaryColor,
                inactiveThumbColor: kgreyColor,
                inactiveTrackColor: kgreyColor,
                activeTrackColor: kPrimaryColor,
                onChanged: (val) => context.read<SecurityCubit>().toggleBiometricState(val: val),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
