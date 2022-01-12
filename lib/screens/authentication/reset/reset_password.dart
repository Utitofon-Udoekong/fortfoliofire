import 'package:flutter/material.dart';
import 'package:fortfolio/constants/theme.dart';
import 'package:fortfolio/screens/authentication/widgets/custom_auth_filled_button.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final AuthController controller = Get.put(AuthController());
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Form(
            child: Padding(
          padding: kDefaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              InkWell(
                child: const Icon(Icons.close),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Create new\nPassword",
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
                autocorrect: false,
                keyboardType: TextInputType.number,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF3F6F8),
                    border: InputBorder.none),
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
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFF3F6F8),
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      onPressed: () {
                      },
                      icon: const Icon(
                              Icons.visibility,
                              color: kPrimaryColor,
                            ),
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Confirm Password",
                style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFF3F6F8),
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                      onPressed: () {
                      },
                      icon: const Icon(
                              Icons.visibility,
                              color: kPrimaryColor,
                            ),
                    )),
                validator: (value) =>
                    'Passwords do not match',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomAuthFilledButton(text: 'CREATE PASSWORD', onTap: () => null, disabled: false,)
            ],
          ),
        )),)
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
