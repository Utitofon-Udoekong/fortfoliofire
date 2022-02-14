import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';

class CustomIconFilledButton extends StatelessWidget {
  final String text;
  // final Future<void> Function() onTap;
  final onTap;
  final icon;

  const CustomIconFilledButton(
      {Key? key, required this.text, required this.onTap, required this.icon})
      : super(key: key);

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
          color: kPrimaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: textButton.copyWith(color: kWhiteColor, fontSize: 17),
            ),
            SizedBox(width: 20,),
            Image(image: AssetImage(icon), height: 23, width: 23,)
          ],
        ),
      ),
    );
  }
}
