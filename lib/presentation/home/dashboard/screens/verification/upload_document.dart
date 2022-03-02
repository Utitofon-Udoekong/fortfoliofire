import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:fortfolio/utils/pages.dart';
import 'package:fortfolio/utils/utils.dart';
import 'package:image_picker/image_picker.dart';

import 'bloc/upload_image_bloc.dart';

class UploadDocumentImage extends StatelessWidget {
  const UploadDocumentImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: kDefaultPadding,
          child: BlocProvider(
            create: (context) => getIt<UploadImageBloc>(),
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
                                    .add(UploadImageEvent.frontPicked(file));
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
                                    .add(UploadImageEvent.frontPicked(file));
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
                }, context.read<UploadImageBloc>().state.response),
                const SizedBox(
                  height: 10,
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
                                    .add(UploadImageEvent.backPicked(file));
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
                                    .add(UploadImageEvent.backPicked(file));
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
                }, context.read<UploadImageBloc>().state.response),
                const SizedBox(
                  height: 60,
                ),
                CustomFilledButton(
                    text: 'NEXT',
                    onTap: () => {context.router.push(const UtilityPageRoute())})
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTile(Function() ontap, String previewLink) {
    return GestureDetector(
      onTap: previewLink.isEmpty ? ontap : null,
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
              previewLink.isEmpty ? 'Select Image' : 'Selected',
              style: subTitle.copyWith(color: kgreyColor, fontSize: 13),
            )
          ],
        ),
      ),
    );
  }
}
