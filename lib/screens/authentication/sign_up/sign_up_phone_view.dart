import 'package:flutter/material.dart';

import 'package:fortfolio/constants/theme.dart';
import 'package:fortfolio/screens/authentication/sign_up/sign_up_email_view.dart';
import 'package:fortfolio/screens/authentication/widgets/custom_auth_filled_button.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUpPhoneView extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // final AuthController controller = Get.put(AuthController());
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Form(
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
                        child: const Icon(Icons.close),
                      ),
                      InkWell(
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
                        onPressed: () => {},
                        child: const Text(
                          "Register with email",
                          style: TextStyle(fontSize: 15, color: kPrimaryColor),
                        ),
                      )
                    ],
                  ),
                  IntlPhoneField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Color(0xFFF3F6F8),
                     
                    ),
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
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Color(0xFFF3F6F8),
                    ),
                    autocorrect: false,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    // validator: (value) =>
                    //     state.isValidfirstName ? null : 'Name is too short',
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
                      border: InputBorder.none,
                      filled: true,
                      fillColor: Color(0xFFF3F6F8),
                    ),
                    autocorrect: false,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    // validator: (value) =>
                    //     state.isValidlastName ? null : 'Name is too short',
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
                        border: InputBorder.none,
                        filled: true,
                        fillColor: const Color(0xFFF3F6F8),
                        suffixIcon: IconButton(
                          onPressed: () => {},
                          icon: const Icon(
                                  Icons.visibility,
                                  color: kPrimaryColor,
                                ),
                        )),
                    autocorrect: false,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    // validator: (value) =>
                    //     state.isValidPassword ? null : 'Password is too short',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomAuthFilledButton(
                      text: 'REGISTER',
                      onTap:  null, disabled: false),
                ],
              ),
            )),)
      ),
    );
  }


}
