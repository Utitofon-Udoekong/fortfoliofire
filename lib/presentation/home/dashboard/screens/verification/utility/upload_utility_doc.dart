import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/verification/cubit/verification_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

import 'package:fortfolio/utils/utils.dart';
import 'package:image_picker/image_picker.dart';

class UploadUtilityDoc extends StatelessWidget {
  const UploadUtilityDoc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiBlocListener(
        listeners: [
          BlocListener<VerificationCubit, VerificationState>(
            listenWhen: (p, c) =>
                p.failure != c.failure && c.failure.isNotEmpty,
            listener: (context, state) {
              CustomSnackbar.showSnackBar(context, state.failure, true);
              context.router.popUntilRouteWithName("UploadDocumentImageRoute");
            },
          ),
          BlocListener<VerificationCubit, VerificationState>(
            listenWhen: (p, c) =>
                p.success != c.success && c.success.isNotEmpty,
            listener: (context, state) {
              CustomSnackbar.showSnackBar(context, state.success, false);
              context.router.replace(const VerificationSuccessRoute());
            },
          ),
        ],
        child: BlocSelector<VerificationCubit, VerificationState, bool>(
          selector: (state) {
            return state.submitting;
          },
          builder: (context, submitting) {
            return LoadingView(
                isLoading: submitting,
                child: SafeArea(
                  child: Padding(
                    padding: kDefaultPadding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {
                            context.router.pop();
                            context.read<VerificationCubit>().reset();
                          },
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
                        BlocBuilder<VerificationCubit, VerificationState>(
                          builder: (context, state) {
                            return buildTile(() {
                              var dialog = SimpleDialog(
                                title: const Text('Select Image'),
                                children: <Widget>[
                                  SimpleDialogOption(
                                      padding: const EdgeInsets.all(20),
                                      child: const Text('Take a photo'),
                                      onPressed: () async {
                                        Navigator.pop(context);
                                        File file =
                                            await pickImage(ImageSource.camera);
                                        context
                                            .read<VerificationCubit>()
                                            .utilityPicked(file: file);
                                      }),
                                  SimpleDialogOption(
                                      padding: const EdgeInsets.all(20),
                                      child: const Text('Choose from Gallery'),
                                      onPressed: () async {
                                        Navigator.of(context).pop();
                                        File file = await pickImage(
                                            ImageSource.gallery);
                                        context
                                            .read<VerificationCubit>()
                                            .utilityPicked(file: file);
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
                            },
                                context
                                    .read<VerificationCubit>()
                                    .state
                                    .utilityFile);
                          },
                        ),
                        const SizedBox(
                          height: 70,
                        ),
                        BlocSelector<VerificationCubit, VerificationState,
                            bool>(
                          selector: (state) {
                            return state.utilityFile.path.isNotEmpty;
                          },
                          builder: (context, utilityExists) {
                            return CustomAuthFilledButton(
                              text: 'SUBMIT DOCUMENTS',
                              onTap: () =>
                                  context.read<VerificationCubit>().submitKYC(),
                              disabled: !utilityExists,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
          },
        ),
      ),
    );
  }

  Widget buildTile(Function() ontap, File previewLink) {
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
              previewLink.path.isEmpty
                  ? 'Select Image'
                  : 'Selected. Click to change',
              style: subTitle.copyWith(color: kgreyColor, fontSize: 13),
            )
          ],
        ),
      ),
    );
  }
}
