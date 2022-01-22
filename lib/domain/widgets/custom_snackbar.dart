import 'package:flutter/material.dart';

class CustomSnackbar {
  static void showSnackBar(BuildContext context, String message, bool error) {
    final snackBar = SnackBar(
      content: Row(
        children: <Widget>[
          Icon(
            error ? Icons.error : Icons.check_circle,
            color: Colors.white,
          ),
          const SizedBox(
            width: 3,
          ),
          Text(message),
        ],
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: error ? Colors.red : Colors.green,
      margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height / 2.5, horizontal: 10),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

}
