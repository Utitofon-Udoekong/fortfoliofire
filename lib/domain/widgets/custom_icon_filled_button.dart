import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';

class CustomIconFilledButton extends StatelessWidget {
  final String text;
  // final Future<void> Function() onTap;
  final Function() onTap;
  final String icon;

  const CustomIconFilledButton(
      {Key? key, required this.text, required this.onTap, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isIos = Platform.isIOS;
    return isIos
        ? CupertinoButton(
            borderRadius: BorderRadius.circular(10),
            color: kPrimaryColor,
            onPressed: onTap,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: textButton.copyWith(color: kWhiteColor, fontSize: 17),
                ),
                const SizedBox(
                  width: 20,
                ),
                Image(
                  image: AssetImage(icon),
                  height: 23,
                  width: 23,
                )
              ],
            ))
        : InkWell(
            onTap: onTap,
            child: Container(
              alignment: Alignment.center,
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kPrimaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style:
                        textButton.copyWith(color: kWhiteColor, fontSize: 17),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Image(
                    image: AssetImage(icon),
                    height: 23,
                    width: 23,
                  )
                ],
              ),
            ),
          );
  }
}
