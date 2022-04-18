import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

import 'package:fortfolio/utils/utils.dart';
import 'package:image_picker/image_picker.dart';

import 'cubit/verification_cubit.dart';

class UploadDocumentImage extends StatelessWidget {
  const UploadDocumentImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<VerificationCubit>(),
      child: Scaffold(
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
                BlocBuilder<VerificationCubit, VerificationState>(
                  builder: (context, state) {
                    return buildTile(() {
                      var dialog = SimpleDialog(
                        title: const Text('Select Front Image'),
                        children: <Widget>[
                          SimpleDialogOption(
                              padding: const EdgeInsets.all(20),
                              child: const Text('Take a photo'),
                              onPressed: () async {
                                Navigator.pop(context);
                                Uint8List file =
                                    await pickImage(ImageSource.camera);
                                context
                                    .read<VerificationCubit>()
                                    .frontPicked(file: file);
                              }),
                          SimpleDialogOption(
                              padding: const EdgeInsets.all(20),
                              child: const Text('Choose from Gallery'),
                              onPressed: () async {
                                Navigator.of(context).pop();
                                Uint8List file =
                                    await pickImage(ImageSource.gallery);
                                context
                                    .read<VerificationCubit>()
                                    .frontPicked(file: file);
                              }),
                          SimpleDialogOption(
                            padding: const EdgeInsets.all(20),
                            child: const Text(
                              "Cancel",
                              style: TextStyle(color: kRedColor),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )
                        ],
                      );
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return dialog;
                        },
                      );
                    }, context.read<VerificationCubit>().state.frontFile);
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                BlocBuilder<VerificationCubit, VerificationState>(
                  builder: (context, state) {
                    return buildTile(() {
                      var dialog = SimpleDialog(
                        title: const Text('Select Back Image'),
                        children: <Widget>[
                          SimpleDialogOption(
                              padding: const EdgeInsets.all(20),
                              child: const Text('Take a photo'),
                              onPressed: () async {
                                Navigator.pop(context);
                                Uint8List file =
                                    await pickImage(ImageSource.camera);
                                context
                                    .read<VerificationCubit>()
                                    .backPicked(file: file);
                              }),
                          SimpleDialogOption(
                              padding: const EdgeInsets.all(20),
                              child: const Text('Choose from Gallery'),
                              onPressed: () async {
                                Navigator.of(context).pop();
                                Uint8List file =
                                    await pickImage(ImageSource.gallery);
                                context
                                    .read<VerificationCubit>()
                                    .backPicked(file: file);
                              }),
                          SimpleDialogOption(
                            padding: const EdgeInsets.all(20),
                            child: const Text("Cancel",
                                style: TextStyle(color: kRedColor)),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )
                        ],
                      );
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return dialog;
                        },
                      );
                    }, context.read<VerificationCubit>().state.backFile);
                  },
                ),
                const SizedBox(
                  height: 60,
                ),
                BlocSelector<VerificationCubit, VerificationState, bool>(
                  selector: (state) {
                    return state.isValidState;
                  },
                  builder: (context, isValidState) {
                    return CustomAuthFilledButton(
                      text: 'NEXT',
                      onTap: () =>
                          context.router.push(const UtilityPageRoute()),
                      disabled: !isValidState,
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTile(Function() ontap, Uint8List previewLink) {
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
              previewLink.isEmpty ? 'Select Image' : 'Selected. Click to change',
              style: subTitle.copyWith(color: kgreyColor, fontSize: 13),
            )
          ],
        ),
      ),
    );
  }
}
