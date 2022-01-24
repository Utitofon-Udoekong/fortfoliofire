import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortfolio/domain/constants/theme.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget svg = SvgPicture.asset(
      'images/blankdocument.svg',
      semanticsLabel: 'Blank',
    );
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
              "Upload Document",
              style: titleText,
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                svg,
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Upload your identification document for verification (upload front & back where available)',
                  style: subTitle.copyWith(color: kgreyColor),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () => {
                    // Get.to(UploadImage())
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
                        Icon(
                          Icons.upload,
                          color: kWhiteColor,
                          size: 23,
                        ),
                        SizedBox(
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
