import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_icon_trailing_button.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({Key? key}) : super(key: key);

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  @override
  void initState() {
    super.initState();
  }

  Future<void> _launchInBrowser(String url) async {
    if (!await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    )) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    const String toLaunchIG =
        'https://instagram.com/fortfoliolimited_?igshid=YmMyMTA2M2Y=';
    const String toLaunchTwitter = 'https://twitter.com/Fortfolioltd';
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
                onTap: () => context.router.pop(),
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
              const CustomIconTrailingButton(
                  icon: 'faq', title: 'FAQ', page: FAQPageRoute()),
              const SizedBox(
                height: 10,
              ),
              const CustomIconTrailingButton(
                  icon: 'mail', title: 'Send an email', page: FAQPageRoute()),
              const SizedBox(
                height: 10,
              ),
              const CustomIconTrailingButton(
                  icon: 'livechat', title: 'Live Chat', page: FAQPageRoute()),
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  buildicon('images/instagram.svg', 'instagram',
                      toLaunchIG),
                  buildicon('images/facebook.svg', 'facebook', "https://www.google.com"),
                  buildicon('images/twitter.svg', 'twitter',
                      toLaunchTwitter),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildicon(String icon, String title, String link) {
    final Widget svg = SvgPicture.asset(
      icon,
      semanticsLabel: title,
    );
    return Link(
      uri: Uri.parse(link),
      target: LinkTarget.blank,
      builder: (context, followLink) {
        return GestureDetector(
          onTap: followLink,
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0XFFF3F6F8),
              shape: BoxShape.circle,
            ),
            width: 40,
            height: 40,
            alignment: Alignment.center,
            child: svg,
          ),
        );
      },
    );
  }
}
