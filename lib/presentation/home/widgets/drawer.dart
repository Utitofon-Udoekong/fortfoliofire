import 'package:flutter/material.dart';
import 'package:fortfolio/constants/theme.dart';
import 'package:fortfolio/controllers/homeController.dart';
import 'package:fortfolio/screens/home/dashboard/screens/payment_method/payment_method.dart';
import 'package:fortfolio/screens/home/dashboard/screens/profile/profile.dart';
import 'package:fortfolio/screens/home/dashboard/screens/security/security.dart';
import 'package:fortfolio/screens/home/dashboard/screens/support/support.dart';
import 'package:fortfolio/screens/home/dashboard/screens/tac/terms_of_service.dart';
import 'package:fortfolio/screens/home/dashboard/screens/verification/verification.dart';
import 'package:fortfolio/screens/home/widgets/custom_icon_filled_button.dart';
import 'package:get/get.dart';

class MainDrawer extends GetWidget<HomeController> {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          buildtile(Icons.account_circle, 'Profile Settings', () => Get.to(const ProfilePage())),
          buildtile(Icons.account_balance_wallet, 'Payment Method', () => Get.to(const PaymentMethod())),
          buildtile(Icons.lock_open, 'Security', () => Get.to(const Security())),
          buildtile(Icons.headset_mic, 'Help & Support', () => Get.to(const SupportPage())),
          buildtile(Icons.error, 'Terms & Condition', () => Get.to(const TACPage())),
          buildtile(Icons.verified, 'Account Verification', () => Get.to(const VerificationPage())),
          const SizedBox(
            height: 54,
          ),
          Padding(
            padding: kDefaultPadding,
            child: CustomIconFilledButton(
                text: 'LOGOUT',
                onTap: () {
                  Get.back();
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
