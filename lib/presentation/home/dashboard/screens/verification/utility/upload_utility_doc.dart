import 'package:flutter/material.dart';
import 'package:fortfolio/constants/theme.dart';
import 'package:fortfolio/widgets/custom_filled_button.dart';
import 'package:get/get.dart';

class UploadUtilityDoc extends StatelessWidget {
  const UploadUtilityDoc({Key? key}) : super(key: key);

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
              onTap: () => Get.back(),
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
              height: 40,
            ),
            buildTile(),
            const SizedBox(
              height: 70,
            ),
            CustomFilledButton(text: 'VERIFY', onTap: (){})
          ],
        ),
      ),
    ),
    );
  }

  Widget buildTile() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 8),
      decoration: BoxDecoration(
          color: Color.fromRGBO(228, 228, 228, 0.24),
          borderRadius: BorderRadius.circular(5.0)),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.upload_file,
            color: kgreyColor,
          ),
          SizedBox(
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
