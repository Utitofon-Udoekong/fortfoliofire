import 'package:flutter/material.dart';
import 'package:fortfolio/constants/theme.dart';
import 'package:fortfolio/controllers/authController.dart';
import 'package:fortfolio/screens/authentication/widgets/custom_auth_filled_button.dart';
import 'package:get/get.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthController controller = Get.put(AuthController());
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Obx(() => Form(
            child: Padding(
          padding: kDefaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () => Get.back(),
                child: const Icon(Icons.close),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Change Password",
                style: titleText,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "A password recovery code was sent to your phone number",
                style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Recovery code",
                style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
              ),
              TextFormField(
                controller: controller.code,
                focusNode: controller.codeFocusNode,
                autocorrect: false,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  errorText: controller.codeErrorText,
                    enabled: controller.isLoading.value == false,
                    filled: true,
                    fillColor: Color(0xFFF3F6F8),
                    border: InputBorder.none),
                onChanged: (value) => controller.updateResetPasswordform(value),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Old Password",
                style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
              ),
              TextFormField(
                obscureText: true,
                controller: controller.password,
                focusNode: controller.passwordFocusNode,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  errorText: controller.passwordErrorText,
                    filled: true,
                    fillColor: const Color(0xFFF3F6F8),
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      onPressed: () {
                        controller.toggle();
                      },
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
                onChanged: controller.updateResetPasswordform,
              ),
              const SizedBox(
                height: 5,
              ),
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
                height: 30,
              ),
              const Text(
                "New Password",
                style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
              ),
              TextFormField(
                obscureText: true,
                // controller: controller.password,
                // focusNode: controller.passwordFocusNode,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  errorText: controller.passwordErrorText,
                    filled: true,
                    fillColor: const Color(0xFFF3F6F8),
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      onPressed: () {
                        controller.toggle();
                      },
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
                // onChanged: controller.updateResetPasswordform,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomAuthFilledButton(text: 'CHANGE PASSWORD', onTap: () => controller.confirmResetPassword(), disabled: !controller.submitEnabled.value,),
            ],
          ),
        )),)
      ),
    ));
  }
}
