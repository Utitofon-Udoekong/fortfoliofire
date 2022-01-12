import 'package:flutter/material.dart';
import 'package:fortfolio/constants/theme.dart';

class CustomAuthFilledButton extends StatelessWidget {
  final String text;
  // final Future<void> Function() onTap;
  final onTap;
  final bool disabled;

  CustomAuthFilledButton({Key? key, required this.text, required this.onTap, required this.disabled}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: disabled ? Color.fromRGBO(3, 66, 109, 0.65) : kPrimaryColor,
        ),
        child: Text(text,
        style: textButton.copyWith(color: kWhiteColor),
        ),
        // color: kPrimaryColor,
      ),
    );
  }
}
