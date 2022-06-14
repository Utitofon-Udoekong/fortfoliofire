import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';

// KeyPad widget
// This widget is reusable and its buttons are customizable (color, size)
class NumPad extends StatelessWidget {
  final double buttonSize;
  final TextEditingController controller;
  final Function onSubmit;
  final Function fingerPrint;

  const NumPad({
    Key? key,
    this.buttonSize = 70,
    required this.onSubmit,
    required this.fingerPrint,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const Color iconColor = kPrimaryColor;
    return Column(
      children: [
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // implement the number keys (from 0 to 9) with the NumberButton widget
          // the NumberButton widget is defined in the bottom of this file
          children: [
            NumberButton(
              number: 1,
              size: buttonSize,
              controller: controller,
            ),
            NumberButton(
              number: 2,
              size: buttonSize,
              controller: controller,
            ),
            NumberButton(
              number: 3,
              size: buttonSize,
              controller: controller,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NumberButton(
              number: 4,
              size: buttonSize,
              controller: controller,
            ),
            NumberButton(
              number: 5,
              size: buttonSize,
              controller: controller,
            ),
            NumberButton(
              number: 6,
              size: buttonSize,
              controller: controller,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            NumberButton(
              number: 7,
              size: buttonSize,
              controller: controller,
            ),
            NumberButton(
              number: 8,
              size: buttonSize,
              controller: controller,
            ),
            NumberButton(
              number: 9,
              size: buttonSize,
              controller: controller,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // this button is used to delete the last number
            IconButton(
              onPressed: () => fingerPrint(),
              icon: const Icon(
                Icons.fingerprint,
                color: iconColor,
              ),
              iconSize: buttonSize,
            ),
            NumberButton(
              number: 0,
              size: buttonSize,
              controller: controller,
            ),
            // this button is used to submit the entered value
            IconButton(
              onPressed: () => onSubmit(),
              icon: const Icon(
                Icons.done_rounded,
                color: iconColor,
              ),
              iconSize: buttonSize,
            ),
          ],
        ),
      ],
    );
  }
}

// define NumberButton widget
// its shape is round
class NumberButton extends StatelessWidget {
  final int number;
  final double size;
  final TextEditingController controller;

  const NumberButton({
    Key? key,
    required this.number,
    required this.size,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: kWhiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(size / 2),
            side: const BorderSide(color: kPrimaryColor)
          ),
        ),
        onPressed: () {
          controller.text += number.toString();
        },
        child: Center(
          child: Text(
            number.toString(),
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: kPrimaryColor, fontSize: 30),
          ),
        ),
      ),
    );
  }
}