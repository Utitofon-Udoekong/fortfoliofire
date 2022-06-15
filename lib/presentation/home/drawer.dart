import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_icon_filled_button.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:package_info_plus/package_info_plus.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isAccountActive = context
        .select((AuthCubit authCubit) => authCubit.state.userModel.isAccountActive);
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flex(direction: Axis.vertical, children: <Widget>[
            DrawerHeader(
              padding: kDefaultPadding,
              decoration: const BoxDecoration(
                color: kPrimaryColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0XFFF5F7FA)),
                    padding: const EdgeInsets.all(5.0),
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
                      const SizedBox(
                        width: 10.0,
                      ),
                      isVerified
                          ? Chip(
                              avatar: Icon(
                                Icons.verified,
                                color: Colors.green[600],
                                size: 13,
                              ),
                              label: Text(
                                "Verified",
                                style: subTitle.copyWith(
                                    fontSize: 13,
                                    color: Colors.green[600],
                                    fontWeight: FontWeight.w500),
                              ),
                              backgroundColor: Colors.green[100],
                            )
                          : Chip(
                              label: Text(
                                "Unverified",
                                style: subTitle.copyWith(
                                    fontSize: 13,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500),
                              ),
                              backgroundColor:
                                  const Color.fromARGB(33, 211, 211, 176),
                            )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            buildtile(Icons.account_circle, 'Profile Settings',
                () => context.router.push(const ProfilePageRoute()), isAccountActive, false),
            buildtile(Icons.account_balance_wallet, 'Payment Method',
                () => context.router.push(const PaymentMethodRoute()), isAccountActive, true),
            buildtile(Icons.lock_open, 'Security',
                () => context.router.push(const SecurityRoute()), isAccountActive, true),
            buildtile(Icons.headset_mic, 'Help & Support',
                () => context.router.push(const SupportPageRoute()), isAccountActive, true),
            buildtile(Icons.error, 'Terms & Condition',
                () => context.router.push(const TACPageRoute()), isAccountActive, true),
            buildtile(Icons.verified, 'Account Verification',
                () => context.router.push(const VerificationPageRoute()), isAccountActive, true),
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
          ]),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child:  FutureBuilder<PackageInfo>(
              future: PackageInfo.fromPlatform(),
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.done:
                    return TextButton(
                onPressed: () => showAboutDialog(
                    context: context,
                    applicationName: snapshot.data!.appName,
                    applicationVersion: "${snapshot.data!.version}+${snapshot.data!.buildNumber}",
                    applicationIcon: const Image(
                      image: AssetImage("images/logo.png"),
                      width: 50,
                      height: 50,
                    )),
                child: Text("Version ${snapshot.data!.version}+${snapshot.data!.buildNumber}",
                    style: subTitle.copyWith(
                        color: const Color(0XFF242424), fontSize: 13)));
                  default:
                    return TextButton(
                onPressed: () => showAboutDialog(
                    context: context,
                    applicationName: "Fortfolio",
                    applicationVersion: "1.0.0",
                    applicationIcon: const Image(
                      image: AssetImage("images/logo.png"),
                      width: 50,
                      height: 50,
                    )),
                child: Text("Version 1.0.0",
                    style: subTitle.copyWith(
                        color: const Color(0XFF242424), fontSize: 13)));
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  buildtile(icon, String text, Function() onTap, bool isAccountActive, bool shouldDisable) {
    return GestureDetector(
      onTap: isAccountActive ? onTap : shouldDisable ? null : onTap,
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
                  color: shouldDisable ? kgreyColor : kBlackColor, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
