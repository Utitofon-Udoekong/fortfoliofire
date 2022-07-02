import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';

class CustomLoadingButton extends StatelessWidget {
  final String text;
  final Function() onTap;
  final bool loading;

  const CustomLoadingButton(
      {Key? key,
      required this.text,
      required this.onTap,
      required this.loading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isIos = Platform.isIOS;
    return isIos
        ? CupertinoButton(
            onPressed: loading ? null : onTap,
            color: loading
                    ? const Color.fromRGBO(3, 66, 109, 0.65)
                    : kPrimaryColor,
            minSize: 45,
            borderRadius: BorderRadius.circular(10),
            child: loading
                ? const CircularProgressIndicator.adaptive(
                    backgroundColor: kWhiteColor,
                  )
                : Text(
                    text,
                    style: textButton.copyWith(color: kWhiteColor),
                  ))
        : InkWell(
            onTap: loading ? null : onTap,
            child: Container(
              alignment: Alignment.center,
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: loading
                    ? const Color.fromRGBO(3, 66, 109, 0.65)
                    : kPrimaryColor,
              ),
              child: loading
                  ? const CircularProgressIndicator.adaptive(
                      backgroundColor: kWhiteColor,
                    )
                  : Text(
                      text,
                      style: textButton.copyWith(color: kWhiteColor),
                    ),
            ),
          );
  }
}
