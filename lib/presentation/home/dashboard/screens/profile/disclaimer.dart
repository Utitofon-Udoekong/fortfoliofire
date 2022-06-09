import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_outlined_button.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/profile/cubit/profile_cubit.dart';

import '../../../../../domain/constants/theme.dart';

class DisclaimerPage extends StatelessWidget {
  const DisclaimerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kDefaultPadding,
          child: SingleChildScrollView(
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
                    "Disclaimer",
                    style: titleText.copyWith(color: kBlackColor),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  buildbody(
                      text:
                          "The following disclaimer affects deletion of an account."),
                  const SizedBox(
                    height: 25,
                  ),
                  buildbody(
                      text:
                          "You cant delete your account if you have an active investment."),
                  const SizedBox(
                    height: 25,
                  ),
                  buildbody(
                      text:
                          "Delete any active investment or wait for its maturity date and then withdraw your funds before proceeding to delete your account."),
                  const SizedBox(
                    height: 25,
                  ),
                  buildbody(
                      text:
                          "After you delete your account, you can reactivate it within 30 days, after which your account is permanently deleted and your data cleared from our database."),
                  const SizedBox(
                    height: 15,
                  ),
                  CustomOutlinedButton(
                      text: "Cancel", onTap: () => context.router.pop()),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomFilledButton(
                      text: "Delete Account",
                      onTap: () => context.read<ProfileCubit>().deleteUser()),
                  const SizedBox(
                    height: 20,
                  ),
                ]),
          ),
        ),
      ),
    );
  }

  Widget buildbody({required String text}) {
    return Text(text,
        style: subTitle.copyWith(
          color: kgreyColor,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ));
  }
}
