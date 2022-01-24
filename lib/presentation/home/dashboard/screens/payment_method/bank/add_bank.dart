import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_auth_filled_button.dart';

class AddBank extends StatelessWidget {
  const AddBank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  // Get.back();
                },
                child: const Icon(Icons.close),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Add New Bank",
                style: titleText.copyWith(color: kBlackColor),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Transfer funds easily to your desired bank account',
                  style: TextStyle(fontSize: 15, color: kgreyColor)),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Account number",
                style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
              ),
              TextFormField(
                // controller: controller.code,
                // focusNode: controller.codeFocusNode,
                autocorrect: false,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    // errorText: controller.codeErrorText,
                    // enabled: controller.isLoading.value == false,
                    filled: true,
                    fillColor: Color(0xFFF3F6F8),
                    border: InputBorder.none),
                // onChanged: (value) => controller.updateResetPasswordform(value),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Bank Name",
                style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
              ),
              TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF3F6F8),
                    border: InputBorder.none),
                // onChanged: (value) => controller.updateResetPasswordform(value),
              ),
              const SizedBox(
                height: 60,
              ),
              CustomAuthFilledButton(
                text: 'ADD BANK',
                onTap: () => {
                  // Get.to(VerifyBank())
                },
                disabled: false,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
