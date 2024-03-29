import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_icon_trailing_function_button.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/verification/cubit/verification_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<VerificationCubit>().getSubmittedState();
    final bool isVerified =
        context.select((AuthCubit cubit) => cubit.state.userModel.isVerified);
    final bool isSubmitted =
        context.select((VerificationCubit cubit) => cubit.state.kycExists);
    final bool isRejected =
        context.select((VerificationCubit cubit) => cubit.state.isRejected);
    final String rejectionReason =
        context.select((VerificationCubit cubit) => cubit.state.rejectionReason);
    final Widget svg = SvgPicture.asset('images/shield.svg',
        width: MediaQuery.of(context).size.width * 0.35);
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: isVerified || isSubmitted
                ? const EdgeInsets.all(0.0)
                : kDefaultPadding,
            child: isVerified || isSubmitted
                ? Container(
                    decoration: BoxDecoration(
                        color: isVerified
                            ? kGreenColor
                            : const Color.fromARGB(149, 73, 63, 36)),
                    padding: kDefaultPadding,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () => context.router.pop(),
                          child: Icon(Icons.close,
                              color: isVerified ? kWhiteColor : kWhiteColor),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        Center(child: svg),
                        const SizedBox(
                          height: 30,
                        ),
                        Center(
                          child: Text(
                              isVerified
                                  ? "Your account has been successfully verified."
                                  : "We are processing your verification, this may take a few minutes.",
                              style: titleText.copyWith(
                                  color: isVerified ? kWhiteColor : kWhiteColor,
                                  fontSize: 20),
                              textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 20,
                      ),
                      InkWell(
                        onTap: () => context.router.pop(),
                        child: const Icon(Icons.close),
                      ),
                      Visibility(
                        visible: isRejected,
                        child: Container(
                          padding: const EdgeInsets.all(12.0),
                          margin: const EdgeInsets.symmetric(vertical: 10.0),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: const Color.fromARGB(76, 218, 102, 102)),
                          child: Tooltip(
                            message: rejectionReason,
                            triggerMode: TooltipTriggerMode.tap,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: kSecondaryColor),
                            height: 50,
                            padding: const EdgeInsets.all(8.0),
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Verification documents were rejected.(Click here to see why)",
                              style: subTitle.copyWith(
                                  color: kRedColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.dashed),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        isRejected
                            ? "Verify Again"
                            : "Verify Account",
                        style: titleText,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        'To verify your account, please upload a photo or scan of your government issued identification document.',
                        style: subTitle.copyWith(color: kgreyColor),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                          'Select an identification document to upload for verification.',
                          style: subTitle.copyWith(color: kgreyColor)),
                      const SizedBox(
                        height: 40,
                      ),
                      CustomIconTrailingFunctionButton(
                        icon: 'idcard',
                        title: 'National ID Card',
                        ontap: () {
                          context.read<VerificationCubit>().documentTypeChanged(
                              documentType: "National ID card");
                          context.router.push(const UploadPageRoute());
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomIconTrailingFunctionButton(
                        icon: 'passport',
                        title: 'International Passport',
                        ontap: () {
                          context.read<VerificationCubit>().documentTypeChanged(
                              documentType: "International Passport");
                          context.router.push(const UploadPageRoute());
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomIconTrailingFunctionButton(
                        icon: 'license',
                        title: 'Drivers License',
                        ontap: () {
                          context.read<VerificationCubit>().documentTypeChanged(
                              documentType: "Drivers License");
                          context.router.push(const UploadPageRoute());
                        },
                      ),
                    ],
                  )),
      ),
    );
  }
}
