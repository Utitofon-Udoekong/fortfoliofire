import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:fortfolio/utils/pages.dart';

class UploadDocumentImage extends StatelessWidget {
  const UploadDocumentImage({Key? key}) : super(key: key);

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
              onTap: () => context.router.pop(),
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
              height: 40,
            ),
            buildTile(),
            const SizedBox(
              height: 10,
            ),
            buildTile(),
            const SizedBox(
              height: 60,
            ),
            CustomFilledButton(text: 'NEXT', onTap: () => {
              context.router.pushNamed(verificationUtil)
            })
          ],
        ),
      ),
    ),
    );
  }

  Widget buildTile() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
      decoration: BoxDecoration(
          color: const Color.fromRGBO(228, 228, 228, 0.24),
          borderRadius: BorderRadius.circular(5.0)),
      child: Row(
        children: <Widget>[
          const Icon(
            Icons.upload_file,
            color: kgreyColor,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            'Select Image',
            style: subTitle.copyWith(color: kgreyColor, fontSize: 13),
          )
        ],
      ),
    );
  }
}
