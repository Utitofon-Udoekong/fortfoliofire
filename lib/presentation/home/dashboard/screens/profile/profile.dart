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

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                              padding: const EdgeInsets.all(5.0),
                              child: CircleAvatar(
                                backgroundColor: const Color(0XFFE7E7E7),
                                child: Text(authUserModel.displayName,
                                    style: const TextStyle(
                                      fontSize: 25,
                                      color: Color(0XFF242424),
                                    )),
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            authUserModel.isVerified
                                ? Chip(
                                    backgroundColor: Colors.green[100],
                                    label: Text("Account Verified",
                                        style: subTitle.copyWith(
                                            color: Colors.green[600],
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500)),
                                  )
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
                        leading: 'ID: ${authUserModel.id}',
                        trailing: IconButton(
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
                        trailexist: true,
                        ontap: () => null,
                        context: context,
                        isAccountActive: authUserModel.isAccountActive,
                      ),
                      buildtile(
                        leading: authUserModel.email,
                        trailing: const Spacer(),
                        trailexist: false,
                        ontap: () => showEditEmailModal(context: context),
                        context: context,
                        isAccountActive: authUserModel.isAccountActive,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      buildtile(
                          leading:
                              "${authUserModel.firstName} ${authUserModel.lastName}",
                          trailing: authUserModel.isVerified
                              ? Tooltip(
                                  message:
                                      "Username cannot be changed once user account is verified",
                                  triggerMode: TooltipTriggerMode.tap,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: kSecondaryColor),
                                  height: 50,
                                  padding: const EdgeInsets.all(8.0),
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: const Icon(
                                    Icons.keyboard_arrow_right,
                                    color: kgreyColor,
                                  ),
                                )
                              : const Spacer(),
                          trailexist: authUserModel.isVerified ? true : false,
                          ontap: () => authUserModel.isVerified
                              ? null
                              : showEditNameModal(context: context),
                          context: context,
                          isAccountActive: authUserModel.isAccountActive),
                      buildtile(
                          leading: authUserModel.phoneNumber.isNotEmpty ? authUserModel.phoneNumber : "Set phone number",
                          context: context,
                          ontap: () => showEditPhoneModal(context: context),
                          trailexist: false,
                          isAccountActive: authUserModel.isAccountActive,
                          trailing: const Spacer()),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () =>
                            context.router.push(const DisclaimerPageRoute()),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 8),
                            decoration: BoxDecoration(
                                color: const Color(0XFFF3F6F8),
                                borderRadius: BorderRadius.circular(5.0)),
                            child: Text(
                                authUserModel.isAccountActive
                                    ? "Delete Account"
                                    : "Reactivate Account",
                                style: titleText.copyWith(
                                    color: kRedColor, fontSize: 15))),
                      ),
                      const Spacer(),
                      Center(
                        child: Text(
                          'Fortfolio 2021',
                          style: subTitle.copyWith(
                              color: const Color(0XFF242424), fontSize: 13),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  );
                },
              )),
        ),
      ),
    );
  }

  Widget buildtile(
      {required String leading,
      required Widget trailing,
      required bool trailexist,
      required Function() ontap,
      required BuildContext context,
      required bool isAccountActive}) {
    return GestureDetector(
      onTap: isAccountActive ? ontap : null,
      child: Container(
          padding: const EdgeInsets.all(10.0),
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              border: Border(
                  bottom:
                      BorderSide(color: Color.fromARGB(255, 185, 185, 185)))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                leading,
                style: subTitle.copyWith(
                    color: isAccountActive ? kBlackColor : kgreyColor,
                    fontSize: 15),
              ),
              trailexist
                  ? trailing
                  : const Icon(
                      Icons.keyboard_arrow_right,
                      color: kPrimaryColor,
                    )
            ],
          )),
    );
  }

  showEditEmailModal({required BuildContext context}) {
    var dialog = Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Edit Email Address',
            style: titleText.copyWith(fontSize: 15),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Email address",
            style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
          ),
          const SizedBox(
            height: 5,
          ),
          BlocSelector<ProfileCubit, ProfileState, String>(
            selector: (state) => state.email,
            builder: (context, state) {
              return TextFormField(
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF3F6F8),
                      border: InputBorder.none),
                  onChanged: (value) =>
                      context.read<ProfileCubit>().emailChanged(email: value),
                  validator: (value) => value!.isEmpty
                      ? "Field cannot be empty"
                      : value.isValidEmail()
                          ? "Invalid email address"
                          : null);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          BlocSelector<ProfileCubit, ProfileState, bool>(
            selector: (state) {
              return state.loading;
            },
            builder: (context, loading) {
              return CustomLoadingButton(
                  text: "CHANGE EMAIL",
                  onTap: () => context.read<ProfileCubit>().changeEmail(),
                  loading: loading);
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
    showModalBottomSheet<dynamic>(
      isScrollControlled: true,
      isDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: dialog,
        );
      },
    );
  }

  showEditNameModal({required BuildContext context}) {
    var dialog = Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Edit User Name',
            style: titleText.copyWith(fontSize: 15),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "First Name",
            style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
          ),
          const SizedBox(
            height: 5,
          ),
          BlocSelector<ProfileCubit, ProfileState, String>(
            selector: (state) => state.firstName,
            builder: (context, state) {
              return TextFormField(
                  autocorrect: false,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF3F6F8),
                      border: InputBorder.none),
                  onChanged: (value) => context
                      .read<ProfileCubit>()
                      .firstNameChanged(firstName: value),
                  validator: (value) =>
                      value!.isEmpty ? "Field cannot be empty" : null);
            },
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Last Name",
            style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
          ),
          const SizedBox(
            height: 5,
          ),
          BlocSelector<ProfileCubit, ProfileState, String>(
            selector: (state) => state.lastName,
            builder: (context, state) {
              return TextFormField(
                  autocorrect: false,
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF3F6F8),
                      border: InputBorder.none),
                  onChanged: (value) => context
                      .read<ProfileCubit>()
                      .lastNameChanged(lastName: value),
                  validator: (value) =>
                      value!.isEmpty ? "Field cannot be empty" : null);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          BlocSelector<ProfileCubit, ProfileState, bool>(
            selector: (state) {
              return state.loading;
            },
            builder: (context, loading) {
              return CustomLoadingButton(
                  text: "CHANGE NAME",
                  onTap: () => context.read<ProfileCubit>().changeName(),
                  loading: loading);
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
    showModalBottomSheet<dynamic>(
      isScrollControlled: true,
      isDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: dialog,
        );
      },
    );
  }

  showEditPhoneModal({required BuildContext context}) {
    var dialog = Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Edit Phone Number',
              style: titleText.copyWith(fontSize: 15),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Phone",
              style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
            ),
            const SizedBox(
              height: 5,
            ),
            BlocSelector<ProfileCubit, ProfileState, String>(
              selector: (state) => state.phoneNumber,
              builder: (context, state) {
                return IntlPhoneField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: Color(0xFFF3F6F8),
                  ),
                  initialCountryCode: 'NG',
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) => context
                      .read<ProfileCubit>()
                      .phoneNumberChanged(phoneNumber: value.completeNumber),
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            BlocSelector<ProfileCubit, ProfileState, bool>(
              selector: (state) {
                return state.loading;
              },
              builder: (context, loading) {
                return CustomLoadingButton(
                    text: "CHANGE PHONE",
                    onTap: () => context.read<ProfileCubit>().changePhone(),
                    loading: loading);
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ));
    showModalBottomSheet<dynamic>(
      isScrollControlled: true,
      isDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: dialog,
        );
      },
    );
  }
}
