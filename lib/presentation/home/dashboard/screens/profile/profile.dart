import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/domain/auth/auth_user_model.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/core/validator_helpers.dart';
import 'package:fortfolio/domain/widgets/custom_loading_button.dart';
import 'package:fortfolio/domain/widgets/custom_snackbar.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/profile/cubit/profile_cubit.dart';
import 'package:fortfolio/presentation/routes/router.gr.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:fortfolio/injection.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProfileCubit>(),
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
              },
            ),
            BlocListener<ProfileCubit, ProfileState>(
              listenWhen: (previous, current) =>
                  previous.verificationId != current.verificationId &&
                  current.verificationId.isNotEmpty,
              listener: (context, state) {
                context.router.push(const ConfirmPhoneUpdateRoute());
              },
            ),
          ],
          child: SafeArea(
            child: Padding(
                padding: kDefaultPadding,
                child: BlocSelector<AuthCubit, AuthState, AuthUserModel>(
                  selector: (state) {
                    return state.userModel;
                  },
                  builder: (context, authUserModel) {
                    return Column(
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
                          "Your Profile",
                          style: titleText.copyWith(color: kBlackColor),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0XFFF5F7FA)),
                                child: CircleAvatar(
                                  backgroundColor: const Color(0XFFE7E7E7),
                                  child: Text(authUserModel.displayName,
                                      style: const TextStyle(
                                        fontSize: 25,
                                        color: Color(0XFF242424),
                                      )),
                                ),
                                padding: const EdgeInsets.all(5.0),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              authUserModel.isVerified
                                  ? Text("Account Verified",
                                      style: subTitle.copyWith(
                                          color: kBlackColor,
                                          fontSize: 13,
                                          decoration: TextDecoration.underline))
                                  : TextButton(
                                      onPressed: () => context.router
                                          .push(const VerificationPageRoute()),
                                      child: Text('Account unverified',
                                          style: subTitle.copyWith(
                                              color: kBlackColor,
                                              fontSize: 13,
                                              decoration:
                                                  TextDecoration.underline)),
                                    )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        buildtile(
                            'ID: ${authUserModel.id}',
                            IconButton(
                                onPressed: () {
                                  Clipboard.setData(
                                          ClipboardData(text: authUserModel.id))
                                      .then((_) {
                                    CustomSnackbar.showSnackBar(
                                        context, "Text copied", false);
                                  });
                                },
                                icon: const Icon(
                                  Icons.file_copy_rounded,
                                  color: kPrimaryColor,
                                  size: 15,
                                )),
                            true,
                            () => null),
                        // authUserModel.email
                        BlocBuilder<ProfileCubit, ProfileState>(
                          builder: (context, state) {
                            return buildtile("email", const Spacer(), false,
                                () => showEditEmailModal(context: context));
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        BlocBuilder<ProfileCubit, ProfileState>(
                          builder: (context, state) {
                            return buildtile(
                                "firstName",
                                // authUserModel.firstName,
                                Text(
                                  "lastName",
                                  // authUserModel.lastName,
                                  style: subTitle.copyWith(
                                      color: kBlackColor, fontSize: 15),
                                ),
                                true,
                                () => showEditNameModal(context: context));
                          },
                        ),
                        // authUserModel.phoneNumber,
                        BlocBuilder<ProfileCubit, ProfileState>(
                          builder: (context, state) {
                            return buildtile(
                                "phoneNumber",
                                const Spacer(),
                                false,
                                () => showEditPhoneModal(context: context));
                          },
                        ),
                        const SizedBox(
                          height: 130,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Fortfolio 2021',
                            style: subTitle.copyWith(
                                color: const Color(0XFF242424), fontSize: 13),
                          ),
                        ),
                      ],
                    );
                  },
                )),
          ),
        ),
      ),
    );
  }

  Widget buildtile(
      String leading, Widget trailing, bool trailexist, Function() ontap) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Color(0XFFF3F6F8)))),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                leading,
                style: subTitle.copyWith(color: kBlackColor, fontSize: 15),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                softWrap: false,
              ),
            ),
            const Spacer(),
            trailexist ? trailing : const Spacer()
          ],
        ),
      ),
    );
  }

  showEditEmailModal({required BuildContext context}) {
    var dialog = SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Edit Email Address',
                style: titleText.copyWith(fontSize: 15),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Email address",
                style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
              ),
              TextFormField(
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF3F6F8),
                      border: InputBorder.none),
                  // onChanged: (value) =>
                  //     context.read<ProfileCubit>().emailChanged(email: value),
                  validator: (value) => value!.isEmpty
                      ? "Field cannot be empty"
                      : value.isValidEmail()
                          ? "Invalid email address"
                          : null),
              const SizedBox(
                height: 10,
              ),
              BlocSelector<ProfileCubit, ProfileState, bool>(
                selector: (state) {
                  return state.loading;
                },
                builder: (context, loading) {
                  return CustomLoadingButton(
                      text: "CHANGE EMAIL",
                      onTap: () => context.read<ProfileCubit>().changeEmail(),
                      disabled: loading);
                },
              )
            ],
          )),
    );
    showModalBottomSheet<dynamic>(
        isScrollControlled: true,
        isDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return dialog;
        },
        backgroundColor: kWhiteColor);
  }

  showEditNameModal({required BuildContext context}) {
    var dialog = SizedBox(
      height: MediaQuery.of(context).size.height * 0.40,
      child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Edit User Name',
                style: titleText.copyWith(fontSize: 15),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "First Name",
                style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
              ),
              TextFormField(
                  autocorrect: false,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF3F6F8),
                      border: InputBorder.none),
                  // onChanged: (value) => context
                  //     .read<ProfileCubit>()
                  //     .firstNameChanged(firstName: value),
                  validator: (value) =>
                      value!.isEmpty ? "Field cannot be empty" : null),
              const SizedBox(
                height: 6,
              ),
              const Text(
                "Last Name",
                style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
              ),
              TextFormField(
                  autocorrect: false,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF3F6F8),
                      border: InputBorder.none),
                  // onChanged: (value) => context
                  //     .read<ProfileCubit>()
                  //     .lastNameChanged(lastName: value),
                  validator: (value) =>
                      value!.isEmpty ? "Field cannot be empty" : null),
              const SizedBox(
                height: 10,
              ),
              BlocSelector<ProfileCubit, ProfileState, bool>(
                selector: (state) {
                  return state.loading;
                },
                builder: (context, loading) {
                  return CustomLoadingButton(
                      text: "CHANGE NAME",
                      onTap: () => context.read<ProfileCubit>().changeName(),
                      disabled: loading);
                },
              )
            ],
          )),
    );
    showModalBottomSheet<dynamic>(
        isScrollControlled: true,
        isDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return dialog;
        },
        backgroundColor: kWhiteColor);
  }

  showEditPhoneModal({required BuildContext context}) {
    var dialog = SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Edit Phone Number',
                style: titleText.copyWith(fontSize: 15),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Phone",
                style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
              ),
              IntlPhoneField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  filled: true,
                  fillColor: Color(0xFFF3F6F8),
                ),
                initialCountryCode: 'NG',
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                // onChanged: (value) => context
                //     .read<ProfileCubit>()
                //     .phoneNumberChanged(phoneNumber: value.completeNumber),
              ),
              const SizedBox(
                height: 10,
              ),
              BlocSelector<ProfileCubit, ProfileState, bool>(
                selector: (state) {
                  return state.loading;
                },
                builder: (context, loading) {
                  return CustomLoadingButton(
                      text: "CHANGE PHONE",
                      onTap: () => context.read<ProfileCubit>().changePhone(),
                      disabled: loading);
                },
              )
            ],
          )),
    );
    showModalBottomSheet<dynamic>(
        isScrollControlled: true,
        isDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return dialog;
        },
        backgroundColor: kWhiteColor);
  }
}
