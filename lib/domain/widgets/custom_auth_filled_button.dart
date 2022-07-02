import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';

class CustomAuthFilledButton extends StatelessWidget {
  final String text;
  // final Future<void> Function() onTap;
  final Function() onTap;
  final bool disabled;

  const CustomAuthFilledButton(
      {Key? key,
      required this.text,
      required this.onTap,
      required this.disabled})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isIos = Platform.isIOS;
    return isIos
        ? SizedBox(
            width: double.infinity,
            child: CupertinoButton(
              minSize: 45,
              onPressed: disabled ? null : onTap,
              color: kPrimaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              child: Text(
                text,
                style: textButton.copyWith(color: kWhiteColor),
              ),
            ),
          )
        : InkWell(
            onTap: disabled ? null : onTap,
            child: Container(
              alignment: Alignment.center,
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: disabled
                    ? const Color.fromRGBO(3, 66, 109, 0.65)
                    : kPrimaryColor,
              ),
              child: Text(
                text,
                style: textButton.copyWith(color: kWhiteColor),
              ),
            ),
          );
  }
}
