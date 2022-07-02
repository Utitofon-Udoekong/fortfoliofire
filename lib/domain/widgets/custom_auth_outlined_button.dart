import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:fortfolio/domain/constants/theme.dart';

class CustomAuthOutlinedButton extends StatelessWidget {
  final String text;
  final void Function() onTap;

  const CustomAuthOutlinedButton({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isIos = Platform.isIOS;
    return isIos
        ? SizedBox(
            width: double.infinity,
            child: CupertinoButton(
              minSize: 45,
              onPressed: onTap,
              color: kPrimaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              child: Text(
                text,
                style: textButton.copyWith(color: kWhiteColor),
              ),
            ),
          )
        : InkWell(
            onTap: onTap,
            child: Container(
              alignment: Alignment.center,
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kWhiteColor,
                  border: Border.all(
                      style: BorderStyle.solid, color: kPrimaryColor)),
              child: Text(
                text,
                style: textButton.copyWith(color: kPrimaryColor),
              ),
            ),
          );
  }
}
