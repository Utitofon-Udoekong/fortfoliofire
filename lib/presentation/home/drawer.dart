import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_icon_filled_button.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String displayName = context
        .select((AuthCubit authCubit) => authCubit.state.userModel.displayName);
    final String firstName = context
        .select((AuthCubit authCubit) => authCubit.state.userModel.firstName);
    final String lastName = context
        .select((AuthCubit authCubit) => authCubit.state.userModel.lastName);
    final String userId =
        context.select((AuthCubit authCubit) => authCubit.state.userModel.id);
    final bool isVerified = context
        .select((AuthCubit authCubit) => authCubit.state.userModel.isVerified);
    return Drawer(
      backgroundColor: kWhiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          DrawerHeader(
            padding: kDefaultPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Color(0XFFF5F7FA)),
                  child: CircleAvatar(
                    backgroundColor: const Color(0XFFE7E7E7),
                    child: Center(
                      child: Text(displayName,
                          style: const TextStyle(
                            fontSize: 25,
                            color: Color(0XFF242424),
                          )),
                    ),
                  ),
                  padding: const EdgeInsets.all(5.0),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    '$firstName $lastName',
                    style: titleText.copyWith(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                      child: Text(
                        'ID: $userId',
                        style: subTitle.copyWith(
                            color: kWhiteColor, fontSize: 15),
                          maxLines: 1,
                          softWrap: false,
                      ),
                    ),
                    const SizedBox(width: 10.0,),
                    isVerified
                        ? Chip(avatar: Icon(
                            Icons.verified,
                            color: Colors.green[600],
                            size: 13,
                          ), label: Text(
                            "Verified",
                            style: subTitle.copyWith(
                                fontSize: 13,
                                color: Colors.green[600]),
                          ),
                          backgroundColor: Colors.green[100],)
                        : Chip(label: Text(
                            "Unverified",
                            style: subTitle.copyWith(
                                fontSize: 13,
                                color: Colors.black54,
                                fontWeight: FontWeight.w500),
                          ),
                          backgroundColor: const Color.fromARGB(33, 211, 211, 176),)
                  ],
                )
              ],
            ),
            decoration: const BoxDecoration(
              color: kPrimaryColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          buildtile(Icons.account_circle, 'Profile Settings',
              () => context.router.push(const ProfilePageRoute())),
          buildtile(Icons.account_balance_wallet, 'Payment Method',
              () => context.router.push(const PaymentMethodRoute())),
          buildtile(Icons.lock_open, 'Security',
              () => context.router.push(const SecurityRoute())),
          buildtile(Icons.headset_mic, 'Help & Support',
              () => context.router.push(const SupportPageRoute())),
          buildtile(Icons.error, 'Terms & Condition',
              () => context.router.push(const TACPageRoute())),
          buildtile(Icons.verified, 'Account Verification',
              () => context.router.push(const VerificationPageRoute())),
          const SizedBox(
            height: 54,
          ),
          Padding(
            padding: kDefaultPadding,
            child: CustomIconFilledButton(
                text: 'LOGOUT',
                onTap: () async {
                  await context.read<AuthCubit>().signOut().then((_) {
                    context.router.pop();
                    context.replaceRoute(const OnboardingScreenRoute());
                  });
                },
                icon: 'images/logout.png'),
          ),
          const SizedBox(
            height: 27,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: TextButton(
            onPressed: () => showAboutDialog(
              context: context,
              applicationName: "Fortfolio",
              applicationVersion: "0.0.1",
              applicationIcon: const Image(image: AssetImage("images/logo.png"),width: 50,height: 50,)
            ),
            child: Text("Version 0.0.1",
                style: subTitle.copyWith(
                    color: const Color(0XFF242424), fontSize: 13))),
          ),
        ],
      ),
    );
  }

  buildtile(icon, String text, Function() onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 7.0),
        child: Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: const Color.fromRGBO(216, 234, 245, 0.4)),
              child: Icon(
                icon,
                color: kPrimaryColor,
                size: 20,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: subTitle.copyWith(
                  color: const Color(0XFF242424), fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
