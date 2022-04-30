import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_icon_trailing_button.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/verification/cubit/verification_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
 

class VerificationPage extends StatelessWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<VerificationCubit>().getSubmittedState();
    final bool isVerified = context.select((AuthCubit cubit) => cubit.state.userModel.isVerified);
    final bool isSubmitted = context.select((VerificationCubit cubit) => cubit.state.kycExists);
    final Widget svg = SvgPicture.asset('images/shield.svg',
        width: MediaQuery.of(context).size.width * 0.35);
    return Scaffold(
      body: SafeArea(
      child: Padding(
        padding: isVerified || isSubmitted ? const EdgeInsets.all(0.0) : kDefaultPadding,
        child: isVerified || isSubmitted ? Container(
          decoration: BoxDecoration(color: isVerified ? kGreenColor : const Color.fromARGB(149, 73, 63, 36)),
          padding: kDefaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () => context.router.pop(),
                child: Icon(Icons.close,color: isVerified ? kWhiteColor: kWhiteColor),
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
                  isVerified ? "Account Verified" : "Details submitted. Awaiting review",
                   style: titleText.copyWith(color: isVerified ? kWhiteColor : kWhiteColor, fontSize: 20),
                    textAlign: TextAlign.center
                ),
              ),
              
            ],
          ),
        ) : Column(
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
              "Verify Account",
              style: titleText,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Verify your account using an authentic identification document that belongs to you.', 
              style: subTitle.copyWith(color: kgreyColor),
            ),
            const SizedBox(
              height: 15,
            ),
            Text('Select the type of document you wish to upload for verification:', style: subTitle.copyWith(color: kgreyColor)),
            const SizedBox(
              height: 40,
            ),
            const CustomIconTrailingButton(icon: 'idcard', title: 'National ID Card', page: UploadPageRoute() ),
            const SizedBox(
              height: 20,
            ),
            const CustomIconTrailingButton(icon: 'passport', title: 'International Passport', page: UploadPageRoute() ),
            const SizedBox(
              height: 20,
            ),
            const CustomIconTrailingButton(icon: 'license', title: 'Drivers License', page: UploadPageRoute() ),
          ],
        )
      ),
    ),
    );
  }

}
