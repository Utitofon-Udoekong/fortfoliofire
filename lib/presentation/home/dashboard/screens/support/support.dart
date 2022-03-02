import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_icon_trailing_button.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:fortfolio/utils/pages.dart';

import 'faq.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Padding(
        padding: kDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () => {},
              child: const Icon(Icons.close),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Get Our Help &\nSupport",
              style: titleText.copyWith(color: kBlackColor),
            ),
            const SizedBox(
              height: 40,
            ),
            const CustomIconTrailingButton(icon: 'faq', title: 'FAQ', page: FAQPageRoute()),
            const SizedBox(
              height: 10,
            ),
            const CustomIconTrailingButton(icon: 'mail', title: 'Send an email', page: FAQPageRoute()),
            const SizedBox(
              height: 10,
            ),
            const CustomIconTrailingButton(icon: 'livechat', title: 'Live Chat', page: FAQPageRoute()),
            const SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                buildicon('images/instagram.svg', 'instagram'),
                buildicon('images/facebook.svg', 'facebook'),
                buildicon('images/twitter.svg', 'twitter'),
              ],
            )
          ],
        ),
      ),
    ),
    );
  }

  Widget buildicon(String icon, String title) {
    final Widget svg = SvgPicture.asset(
      icon,
      semanticsLabel: title,
    );
    return Container(
      // padding: EdgeInsets.all(3.0),
      decoration: const BoxDecoration(
        color: const Color(0XFFF3F6F8),
        shape: BoxShape.circle,
      ),
      width: 40,
      height: 40,
      alignment: Alignment.center,
      child: svg,
    );
  }

}
