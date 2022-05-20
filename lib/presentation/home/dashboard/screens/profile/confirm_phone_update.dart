import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/countdown_timer.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/profile/cubit/profile_cubit.dart';
import 'package:fortfolio/domain/widgets/otp_field/otp_box_style.dart';
import 'package:fortfolio/domain/widgets/otp_field/otp_field_style.dart';
import 'package:fortfolio/domain/widgets/otp_field/otp_text_field.dart';
import 'package:auto_route/auto_route.dart';

class ConfirmPhoneUpdate extends StatelessWidget {
  final int smsCodeTimeoutSeconds = 60;

  const ConfirmPhoneUpdate({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final phoneNumber = context
        .select((ProfileCubit phoneCubit) => phoneCubit.state.phoneNumber);
    return Scaffold(
      body: MultiBlocListener(
        listeners: [
          BlocListener<ProfileCubit, ProfileState>(
            listenWhen: (previous, current) =>
                previous.failure != current.failure &&
                current.failure.isNotEmpty,
            listener: (context, state) {
              CustomSnackbar.showSnackBar(context, state.failure, true);
            },
          ),
          BlocListener<ProfileCubit, ProfileState>(
            listenWhen: (previous, current) =>
                previous.success != current.success &&
                current.success.isNotEmpty,
            listener: (context, state) {
              CustomSnackbar.showSnackBar(context, state.success, false);
              context.router.pop();
              context.read<ProfileCubit>().toggleEditState();
            },
          ),
        ],
        child: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            if (state.loading) {
              return const LoadingView();
            } else {
              return SafeArea(
                  child: SingleChildScrollView(
                child: Padding(
                  padding: kDefaultPadding,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
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
                          'We sent an OTP to the number $phoneNumber',
                          style: titleText.copyWith(fontSize: 20),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        BlocBuilder<ProfileCubit, ProfileState>(
                          builder: (context, state) {
                            return OTPTextField(
                              length: 6,
                              width: MediaQuery.of(context).size.width,
                              fieldWidth: 38,
                              fieldHeight: 42,
                              style: subTitle.copyWith(color: kPrimaryColor),
                              textFieldAlignment: MainAxisAlignment.spaceAround,
                              fieldStyle: FieldStyle.box,
                              otpFieldStyle: OtpFieldStyle(
                                  backgroundColor: Colors.white,
                                  borderColor: kgreyColor,
                                  focusBorderColor: kPrimaryColor),
                              keyboardType: TextInputType.number,
                              onCompleted: (value) => context
                                  .read<ProfileCubit>()
                                  .smsCodeChanged(smsCode: value),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomFilledButton(
                          text: 'VERIFY',
                          onTap: () =>
                              context.read<ProfileCubit>().verifySmsCode(),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            TextButton(onPressed: () => context
                              .read<ProfileCubit>()
                              .changePhone(), child: Text("Resend", style: subTitle.copyWith(fontSize: 13, color: kBlackColor),)),
                            const Spacer(),
                            CountDownTimer(
                              smsCodeTimeoutSeconds: smsCodeTimeoutSeconds,
                              onTimerCompleted: () {
                                CustomSnackbar.showSnackBar(
                                    context, "SMS Code Timeout!", true);
                                context.read<ProfileCubit>().reset();
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ));
            }
          },
        ),
      ),
    );
  }
}
