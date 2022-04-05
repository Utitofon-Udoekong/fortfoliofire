import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';

class CustomFilledButton extends StatelessWidget {
  final String text;
  final Function() onTap;

  const CustomFilledButton({Key? key, required this.text, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        child: Container(
          alignment: Alignment.center,
          height: 48,
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
