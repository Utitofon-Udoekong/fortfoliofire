import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortfolio/application/network/network_cubit.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';

class NoInternetPage extends StatelessWidget {
  const NoInternetPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool isIos = Platform.isIOS;
    return isIos ? iosPage(context: context) : androidPage(context: context);
  }

  Widget androidPage({required BuildContext context}) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async => false,
        child: SafeArea(
          child: Padding(
            padding: kDefaultPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset("images/disconnected.svg"),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Oops!",
                  style: titleText,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "No internet connection found. Please check your connection and try again.",
                  style: subTitle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomFilledButton(
                    text: "Try Again",
                    onTap: () => context.read<NetworkCubit>().checkConnection())
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget iosPage({required BuildContext context}) {
    return CupertinoPageScaffold(
        child: WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Padding(
          padding: kDefaultPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset("images/disconnected.svg"),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Oops!",
                style: titleText,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "CONNECTION LOST - Please check your internet connection to continue",
                style: subTitle.copyWith(
                    fontSize: 18, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              CupertinoButton(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(10),
                minSize: 45,
                  child: Text(
                    "Try Again",
                    style: textButton.copyWith(color: kWhiteColor),
                  ),
                  onPressed: () =>
                      context.read<NetworkCubit>().checkConnection())
            ],
          ),
        ),
      ),
    ));
  }
}
