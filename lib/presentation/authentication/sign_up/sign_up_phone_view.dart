import 'package:flutter/material.dart';

import 'package:fortfolio/constants/theme.dart';
import 'package:fortfolio/controllers/authController.dart';
import 'package:fortfolio/screens/authentication/sign_up/sign_up_email_view.dart';
import 'package:fortfolio/screens/authentication/widgets/custom_auth_filled_button.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUpPhoneView extends GetWidget<AuthController> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // final AuthController controller = Get.put(AuthController());
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Obx(() => Form(
            key: _formKey,
            child: Padding(
              padding: kDefaultPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        onTap: () => Get.back(),
                        child: const Icon(Icons.close),
                      ),
                      InkWell(
                        onTap: () => Get.toNamed('/login'),
                        child: Text(
                          "Login",
                          style: subTitle.copyWith(color: kPrimaryColor),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Let\'s\nGet Started',
                    style: titleText,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        "Phone",
                        style:
                            const TextStyle(fontSize: 15, color: const Color(0xFF656565)),
                      ),
                      TextButton(
                        onPressed: () => Get.to(SignUp()),
                        child: const Text(
                          "Register with email",
                          style: TextStyle(fontSize: 15, color: kPrimaryColor),
                        ),
                      )
                    ],
                  ),
                  IntlPhoneField(
                    decoration: InputDecoration(
                      errorText: controller.phoneErrorText,
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Color(0xFFF3F6F8),
                     
                    ),
                    controller: controller.phone,
                    focusNode: controller.phoneFocusNode,
                    initialCountryCode: 'NG',
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                    onChanged: (phone) {
                      print(phone.completeNumber);
                    },
                  ),
                  
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "First Name",
                    style: const TextStyle(fontSize: 15, color: const Color(0xFF656565)),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      errorText: controller.nameErrorText,
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Color(0xFFF3F6F8),
                    ),
                    controller: controller.firstName,
                    focusNode: controller.firstNameFocusNode,
                    autocorrect: false,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    // validator: (value) =>
                    //     state.isValidfirstName ? null : 'Name is too short',
                    onChanged: controller.updateSignupPhoneform,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Last Name",
                    style: const TextStyle(fontSize: 15, color: const Color(0xFF656565)),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      errorText: controller.nameErrorText,
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Color(0xFFF3F6F8),
                    ),
                    controller: controller.lastName,
                    focusNode: controller.lastNameFocusNode,
                    autocorrect: false,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    // validator: (value) =>
                    //     state.isValidlastName ? null : 'Name is too short',
                    onChanged: controller.updateSignupPhoneform,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Password",
                    style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      errorText: controller.passwordErrorText,
                        border: InputBorder.none,
                        filled: true,
                        fillColor: const Color(0xFFF3F6F8),
                        suffixIcon: IconButton(
                          onPressed: () => controller.toggle(),
                          icon: controller.showPassword.value
                              ? const Icon(
                                  Icons.visibility_off,
                                  color: kTextFieldColor,
                                )
                              : const Icon(
                                  Icons.visibility,
                                  color: kPrimaryColor,
                                ),
                        )),
                    controller: controller.password,
                    focusNode: controller.passwordFocusNode,
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    // validator: (value) =>
                    //     state.isValidPassword ? null : 'Password is too short',
                    onChanged: controller.updateSignupPhoneform,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomAuthFilledButton(
                      text: 'REGISTER',
                      onTap: controller.submitEnabled.value
                          ? controller.signup()
                          : null, disabled: !controller.submitEnabled.value,),
                ],
              ),
            )),)
      ),
    ));
  }


}
