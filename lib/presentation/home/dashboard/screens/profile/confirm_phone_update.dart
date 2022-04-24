import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/application/auth/sign_up_form/phone/sign_up_form_phone_cubit.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/countdown_timer.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/domain/widgets/loading_view.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/profile/cubit/profile_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:auto_route/auto_route.dart';


class ConfirmPhoneUpdate extends StatelessWidget {
  final int smsCodeTimeoutSeconds = 60;

  const ConfirmPhoneUpdate({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final phoneNumber = context.select((ProfileCubit phoneCubit) =>
        phoneCubit.state.phoneNumber);
    return BlocProvider.value(
      value: getIt<ProfileCubit>(),
      child: Scaffold(
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            onPressed: () => context.router.pop(),
                            icon: const Icon(Icons.close),
                            iconSize: 18,
                            color: kBlackColor,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'We sent an OTP to the number $phoneNumber',
                            style: titleText,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          BlocBuilder<ProfileCubit,
                              ProfileState>(
                            builder: (context, state) {
                              return OTPTextField(
                                length: 6,
                                width: MediaQuery.of(context).size.width - 34,
                                fieldWidth: 58,
                                style: titleText,
                                textFieldAlignment:
                                    MainAxisAlignment.spaceAround,
                                fieldStyle: FieldStyle.box,
                                otpFieldStyle: OtpFieldStyle(
                                    backgroundColor: Colors.white,
                                    borderColor: kgreyColor,
                                    focusBorderColor: kPrimaryColor),
                                keyboardType: TextInputType.number,
                                onChanged: (value) => context
                                    .read<ProfileCubit>()
                                    .smsCodeChanged(smsCode: value),
                              );
                            },
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          BlocSelector<ProfileCubit,
                              ProfileState, bool>(
                            selector: (state) {
                              return state.loading;
                            },
                            builder: (context, loading) {
                              return CustomAuthFilledButton(
                                text: loading ? 'VERIFYING' : 'VERIFY',
                                onTap: () => context
                                    .read<ProfileCubit>()
                                    .verifySmsCode(),
                                disabled: loading,
                              );
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 0),
                            child: Row(
                              children: [
                                const Spacer(),
                                CountDownTimer(
                                  smsCodeTimeoutSeconds: smsCodeTimeoutSeconds,
                                  onTimerCompleted: () {
                                    CustomSnackbar.showSnackBar(
                                        context, "SMS Code Timeout!", true);
                                    context
                                        .read<ProfileCubit>()
                                        .reset();
                                  },
                                ),
                              ],
                            ),
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
      ),
    );
  }
}
