import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fortfolio/domain/constants/theme.dart';

class CustomOtpField extends StatelessWidget {
  final String pin;
  const CustomOtpField({ Key? key, required this.pin }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String fullPin = pin;
    return Form(child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(
          height: 42,
          width: 38,
          child: TextFormField(
            style: Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: _getBorder(kgreyColor),
              focusedBorder: _getBorder(kPrimaryColor),
              enabledBorder: _getBorder(kgreyColor),
              disabledBorder: _getBorder(kgreyColor),
              errorBorder: _getBorder(kRedColor)
            ),
            inputFormatters: [LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly],
            onChanged: (value){
              if(value.length == 1){
                FocusScope.of(context).nextFocus();
              }
            },
            onSaved: (pin1){
              fullPin += pin1!;
            },
          ),
        ),
        SizedBox(
          height: 42,
          width: 38,
          child: TextFormField(
            style: Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: _getBorder(kgreyColor),
              focusedBorder: _getBorder(kPrimaryColor),
              enabledBorder: _getBorder(kgreyColor),
              disabledBorder: _getBorder(kgreyColor),
              errorBorder: _getBorder(kRedColor)
            ),
            inputFormatters: [LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly],
            onChanged: (value){
              if(value.length == 1){
                FocusScope.of(context).nextFocus();
              }
            },
            onSaved: (pin1){
              fullPin += pin1!;
            },
          ),
        ),
        SizedBox(
          height: 42,
          width: 38,
          child: TextFormField(
            style: Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: _getBorder(kgreyColor),
              focusedBorder: _getBorder(kPrimaryColor),
              enabledBorder: _getBorder(kgreyColor),
              disabledBorder: _getBorder(kgreyColor),
              errorBorder: _getBorder(kRedColor)
            ),
            inputFormatters: [LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly],
            onChanged: (value){
              if(value.length == 1){
                FocusScope.of(context).nextFocus();
              }
            },
            onSaved: (pin1){
              fullPin += pin1!;
            },
          ),
        ),
        SizedBox(
          height: 42,
          width: 38,
          child: TextFormField(
            style: Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: _getBorder(kgreyColor),
              focusedBorder: _getBorder(kPrimaryColor),
              enabledBorder: _getBorder(kgreyColor),
              disabledBorder: _getBorder(kgreyColor),
              errorBorder: _getBorder(kRedColor)
            ),
            inputFormatters: [LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly],
            onChanged: (value){
              if(value.length == 1){
                FocusScope.of(context).nextFocus();
              }
            },
            onSaved: (pin1){
              fullPin += pin1!;
            },
          ),
        ),
        SizedBox(
          height: 42,
          width: 38,
          child: TextFormField(
            style: Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: _getBorder(kgreyColor),
              focusedBorder: _getBorder(kPrimaryColor),
              enabledBorder: _getBorder(kgreyColor),
              disabledBorder: _getBorder(kgreyColor),
              errorBorder: _getBorder(kRedColor)
            ),
            inputFormatters: [LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly],
            onChanged: (value){
              if(value.length == 1){
                FocusScope.of(context).nextFocus();
              }
            },
            onSaved: (pin1){
              fullPin += pin1!;
            },
          ),
        ),
        SizedBox(
          height: 42,
          width: 38,
          child: TextFormField(
            style: Theme.of(context).textTheme.headline6,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: _getBorder(kgreyColor),
              focusedBorder: _getBorder(kPrimaryColor),
              enabledBorder: _getBorder(kgreyColor),
              disabledBorder: _getBorder(kgreyColor),
              errorBorder: _getBorder(kRedColor)
            ),
            inputFormatters: [LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly],
            onChanged: (value){
              if(value.length == 1){
                FocusScope.of(context).nextFocus();
              }
            },
            onSaved: (pin1){
              fullPin += pin1!;
            },
          ),
        ),
      ],
    ));
  }

  InputBorder _getBorder(Color color) {
    return OutlineInputBorder(
            borderSide: BorderSide(color: color),
            borderRadius: BorderRadius.circular(10));
  }
}