import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({ Key? key, required this.title, required this.page }) : super(key: key);
  final String title;
  final PageRouteInfo page;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.push(page),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 15.0),
        decoration: BoxDecoration(
          color: const Color(0XFFF3F6F8),
          borderRadius: BorderRadius.circular(5.0)
        ),
        child: Row(
          children: <Widget>[
            const Icon(Icons.lock, color: kPrimaryColor,),
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