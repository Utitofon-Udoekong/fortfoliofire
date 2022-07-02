import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortfolio/domain/constants/theme.dart';

class CustomIconTrailingButton extends StatelessWidget {
  const CustomIconTrailingButton(
      {Key? key, required this.icon, required this.title, required this.page})
      : super(key: key);
  final String icon;
  final String title;
  final PageRouteInfo page;
  @override
  Widget build(BuildContext context) {
    final Widget svg = SvgPicture.asset(
      'images/$icon.svg',
      semanticsLabel: title,
    );
    bool isIos = Platform.isIOS;
    return isIos
        ? CupertinoButton(
            color: const Color(0XFFF3F6F8),
            borderRadius: BorderRadius.circular(5.0),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
            child: Row(
              children: <Widget>[
                svg,
                const SizedBox(
                  width: 20,
                ),
                Text(
                  title,
                  style: subTitle.copyWith(
                      color: kBlackColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
                const Spacer(),
                const Icon(
                  Icons.keyboard_arrow_right,
                  color: kPrimaryColor,
                )
              ],
            ),
            onPressed: () => context.router.push(page))
        : InkWell(
            onTap: () => context.router.push(page),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
              decoration: BoxDecoration(
                  color: const Color(0XFFF3F6F8),
                  borderRadius: BorderRadius.circular(5.0)),
              child: Row(
                children: <Widget>[
                  svg,
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    title,
                    style: subTitle.copyWith(
                        color: kBlackColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.keyboard_arrow_right,
                    color: kPrimaryColor,
                  )
                ],
              ),
            ),
          );
  }
}
