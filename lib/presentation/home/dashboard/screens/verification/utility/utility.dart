import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/utils/pages.dart';

class UtilityPage extends StatelessWidget {
  const UtilityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget svg = SvgPicture.asset(
      'images/blankdocument.svg',
      semanticsLabel: 'Blank',
    );
    return SafeArea(
      child: Scaffold(
        body: Padding(
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
                "Upload Utility Bill",
                style: titleText,
              ),
              const SizedBox(
                height: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  svg,
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Upload your utility bill (electricity, water or bank statement) for verification.',
                    style: subTitle.copyWith(color: kgreyColor),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () => {
                      context.router.pushNamed(verificationUtilUpload)
                    },
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
                          const Icon(
                            Icons.upload,
                            color: kWhiteColor,
                            size: 23,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            'UPLOAD DOCUMENT',
                            style: textButton.copyWith(
                                color: kWhiteColor, fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
