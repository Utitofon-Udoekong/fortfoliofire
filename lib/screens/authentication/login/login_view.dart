import 'package:flutter/material.dart';

import 'package:fortfolio/constants/theme.dart';
import 'package:fortfolio/screens/authentication/widgets/custom_auth_filled_button.dart';

class Login extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
                  const InkWell(
                    child: Icon(Icons.close),
                  ),
                  InkWell(
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
                decoration: const InputDecoration(
                    enabled: false,
                    filled: true,
                    fillColor: Color(0xFFF3F6F8),
                    border: InputBorder.none),
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                // validator: (value) =>
                //     state.isValidEmail ? null : 'Email is invalid',
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Your Password",
                style: TextStyle(fontSize: 15, color: Color(0xFF656565)),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xFFF3F6F8),
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                            onPressed: () => null,
                            icon: const Icon(
                                    Icons.visibility_off,
                                    color: kPrimaryColor,
                                  ),
                          )),
                textInputAction: TextInputAction.done,
                // validator: (value) =>
                //     state.isValidPassword ? null : 'Password is too short',
              ),
              const SizedBox(height: 3.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: (){
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
                onTap: () => null, disabled: false,
              ),
            ],
          ),
        )),)
      ),
    );
  }
}