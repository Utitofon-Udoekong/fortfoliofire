import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_icon_filled_button.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:fortfolio/utils/pages.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String displayName = context.select((AuthCubit authCubit) => authCubit.state.userModel.displayName);
    // final String displayName = context.select<AuthCubit, String>((cubit) => cubit.state.userModel.displayName);
    return Drawer(
      backgroundColor: kWhiteColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            padding: kDefaultPadding,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0XFFF5F7FA)),
                      child: const CircleAvatar(
                        backgroundColor: const Color(0XFFE7E7E7),
                        child: Text('JB',
                            style: TextStyle(
                              fontSize: 25,
                              color: const Color(0XFF242424),
                            )),
                      ),
                      padding: const EdgeInsets.all(5.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Joy Henshaw',
                        style: titleText.copyWith(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Flex(
                      direction: Axis.horizontal,
                      children: [
                        Text(
                          'ID: 65443339900',
                          style: subTitle.copyWith(
                              color: Colors.white, fontSize: 15),
                        ),
                        const Icon(
                          Icons.verified,
                          color: kGreenColor,
                          size: 13,
                        )
                      ],
                    )
                  ],
                ),
                Align(
                  heightFactor: 2.5,
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bedtime_rounded,
                        color: kWhiteColor,
                      )),
                )
              ],
            ),
            decoration: const BoxDecoration(
              color: kPrimaryColor,
            ),
          ),
          const SizedBox(height: 10,),
          buildtile(Icons.account_circle, 'Profile Settings', () => context.router.pushNamed(profile)),
          buildtile(Icons.account_balance_wallet, 'Payment Method', () => context.router.pushNamed(paymentMethod)),
          buildtile(Icons.lock_open, 'Security', () => context.router.pushNamed(security)),
          buildtile(Icons.headset_mic, 'Help & Support', () => context.router.pushNamed(support)),
          buildtile(Icons.error, 'Terms & Condition', () => context.router.pushNamed(tac)),
          buildtile(Icons.verified, 'Account Verification', () => context.router.pushNamed(verification)),
          const SizedBox(
            height: 54,
          ),
          Padding(
            padding: kDefaultPadding,
            child: CustomIconFilledButton(
                text: 'LOGOUT',
                onTap: () {
                  context.router.pop();
                },
                icon: 'images/logout.png'),
          ),
          const SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Version 0.0.1',
                style:
                    subTitle.copyWith(color: const Color(0XFF242424), fontSize: 13),
              ),
            ),
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
              style: subTitle.copyWith(color: const Color(0XFF242424), fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
