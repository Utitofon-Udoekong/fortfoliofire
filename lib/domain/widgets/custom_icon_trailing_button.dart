import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortfolio/constants/theme.dart';
import 'package:get/get.dart';

class CustomIconTrailingButton extends StatelessWidget {
  const CustomIconTrailingButton({ Key? key, required this.icon, required this.title, required this.page }) : super(key: key);
  final String icon;
  final String title;
  final page;
  @override
  Widget build(BuildContext context) {
    final Widget svg = SvgPicture.asset(
      'images/$icon.svg',
      semanticsLabel: title,
    );
    return GestureDetector(
      onTap: () => Get.to(page),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
        decoration: BoxDecoration(
          color: const Color(0XFFF3F6F8),
          borderRadius: BorderRadius.circular(5.0)
        ),
        child: Row(
          children: <Widget>[
            svg,
            const SizedBox(width: 20,),
            Text(title, style: subTitle.copyWith(color: kBlackColor, fontWeight: FontWeight.w600, fontSize: 15),),
            const Spacer(),
            const Icon(Icons.keyboard_arrow_right, color: kPrimaryColor,)
          ],
        ),
      ),
    );
  }
}