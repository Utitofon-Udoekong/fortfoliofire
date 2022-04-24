import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';

class CustomLoadingButton extends StatelessWidget {
  final String text;
  // final Future<void> Function() onTap;
  final Function() onTap;
  final bool loading;

  const CustomLoadingButton({Key? key, required this.text, required this.onTap, required this.loading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: loading ? null : onTap,
      child: Container(
        alignment: Alignment.center,
        height: 48,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: loading ? const Color.fromRGBO(3, 66, 109, 0.65) : kPrimaryColor,
        ),
        child: loading ? const CircularProgressIndicator(color: kWhiteColor,) : Text(text,
        style: textButton.copyWith(color: kWhiteColor),
        ),
        // color: kPrimaryColor,
      ),
    );
  }
}
