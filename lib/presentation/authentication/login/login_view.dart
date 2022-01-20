import 'package:flutter/material.dart';

import 'package:fortfolio/constants/theme.dart';
import 'package:fortfolio/controllers/authController.dart';
import 'package:fortfolio/screens/authentication/widgets/custom_auth_filled_button.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final AuthController controller = Get.put(AuthController());
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
                    onTap: () => Get.toNamed('/signup'),
                    child: const Icon(Icons.close),
                  ),
                  InkWell(
                    onTap: () => Get.toNamed('/signup'),
                    child: Text(
                      "Register",
                      style: subTitle.copyWith(color: kPrimaryColor),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Hey, \nWelcome Back",
                style: titleText,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Your Email or Phone Number",
                style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
              ),
              TextFormField(
                decoration: InputDecoration(
                  errorText: controller.phoneErrorText,
                    enabled: controller.isLoading.value == false,
                    filled: true,
                    fillColor: const Color(0xFFF3F6F8),
                    border: InputBorder.none),
                controller: controller.email,
                focusNode: controller.emailFocusNode,
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                // validator: (value) =>
                //     state.isValidEmail ? null : 'Email is invalid',
                onChanged: controller.updateLoginform,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Your Password",
                style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
              ),
              TextFormField(
                obscureText: controller.showPassword.value,
                decoration: InputDecoration(
                  errorText: controller.passwordErrorText,
                    filled: true,
                    fillColor: const Color(0xFFF3F6F8),
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                            onPressed: () => controller.toggle(),
                            icon: controller.showPassword.value
                                ? const Icon(
                                    Icons.visibility,
                                    color: kPrimaryColor,
                                  )
                                : const Icon(
                                    Icons.visibility_off,
                                    color: kPrimaryColor,
                                  ),
                          )),
                controller: controller.password,
                textInputAction: TextInputAction.done,
                focusNode: controller.passwordFocusNode,
                onEditingComplete: controller.login,
                onChanged: controller.updateLoginform
                // validator: (value) =>
                //     state.isValidPassword ? null : 'Password is too short',
              ),
              SizedBox(height: 3.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: (){
                        controller.password.clear();
                        Get.toNamed('/reset');
                      },
                      child: const Text(
                        'Forgot password?',
                        style: TextStyle(fontSize: 13.5, color: kPrimaryColor),
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomAuthFilledButton(text: 'LOGIN', 
                onTap: () => controller.submitEnabled.value == true ? controller.login : null, disabled: controller.submitEnabled.value == false,
              ),
            ],
          ),
        )),)
      ),
    ));
  }
}