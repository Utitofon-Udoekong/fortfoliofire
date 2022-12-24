import 'package:flutter/material.dart';

class CustomSnackbar {
  static void showSnackBar(BuildContext context, String message, bool isError) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 1),
      content: Row(
        children: <Widget>[
          Icon(
            isError ? Icons.error : Icons.check_circle,
            color: Colors.white,
          ),
          const SizedBox(
            width: 3,
          ),
          Text(message),
        ],
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: isError ? Colors.red : Colors.green,
      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height / 2.5, horizontal: 10),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

}
