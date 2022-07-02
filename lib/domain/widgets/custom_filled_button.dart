import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';

class CustomFilledButton extends StatelessWidget {
  final String text;
  final Function() onTap;

  const CustomFilledButton({Key? key, required this.text, required this.onTap}) : super(key: key);

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
      child: Ink(
        child: Container(
          alignment: Alignment.center,
          height: 45,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kPrimaryColor,
          ),
          child: Text(text,
          style: textButton.copyWith(color: kWhiteColor),
          ),
        ),
      ),
    );
  }
}
