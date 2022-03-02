import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/verification/bloc/upload_image_bloc.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:fortfolio/utils/pages.dart';
import 'package:fortfolio/utils/utils.dart';
import 'package:image_picker/image_picker.dart';

class UploadUtilityDoc extends StatelessWidget {
  const UploadUtilityDoc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kDefaultPadding,
          child: BlocProvider.value(
            value: getIt<UploadImageBloc>(),
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
                  height: 40,
                ),
                buildTile(() {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SimpleDialog(
                        title: const Text('Select Image'),
                        children: <Widget>[
                          SimpleDialogOption(
                              padding: const EdgeInsets.all(20),
                              child: const Text('Take a photo'),
                              onPressed: () async {
                                Navigator.pop(context);
                                Uint8List file =
                                    await pickImage(ImageSource.camera);
                                context
                                    .read<UploadImageBloc>()
                                    .add(UploadImageEvent.utitlityPicked(file));
                              }),
                          SimpleDialogOption(
                              padding: const EdgeInsets.all(20),
                              child: const Text('Choose from Gallery'),
                              onPressed: () async {
                                Navigator.of(context).pop();
                                Uint8List file =
                                    await pickImage(ImageSource.gallery);
                                context
                                    .read<UploadImageBloc>()
                                    .add(UploadImageEvent.utitlityPicked(file));
                              }),
                          SimpleDialogOption(
                            padding: const EdgeInsets.all(20),
                            child: const Text("Cancel"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )
                        ],
                      );
                    },
                  );
                }),
                const SizedBox(
                  height: 70,
                ),
                CustomFilledButton(text: 'VERIFY', onTap: () {
                  final bool uploaded = context.read<UploadImageBloc>().state.response.isNotEmpty;
                  if(uploaded){
                    const duration = Duration(seconds: 2);
                    CustomSnackbar.showSnackBar(context, "Documents uploaded successfully", false);
                    Future.delayed(duration).then((_) {
                      context.router.push(const VerificationSuccessRoute());
                    });
                  }
                })
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTile(Function() ontap) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
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
      ),
    );
  }
}
