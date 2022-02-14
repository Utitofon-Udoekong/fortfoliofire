import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  final void Function() onTap;

  const CustomOutlinedButton({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kWhiteColor,
          border: Border.all(
            style: BorderStyle.solid,
            color: kPrimaryColor
          )
        ),
        child: Text(text,
        style: textButton.copyWith(color: kPrimaryColor),
        ),
      ),
    );
  }
}
