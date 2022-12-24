import 'package:flutter/material.dart';
import 'package:elegant_notification/elegant_notification.dart';

class CustomSnackbar {
  static void showSnackBar(BuildContext context, String message, bool isError) {
    final snackbar = isError ? ElegantNotification.error(
                    title: const Text('Error'),
                    description: Text(message),
                  ) : ElegantNotification.success(
                    title: const Text('Success'),
                    description: Text(message),
                  );
    snackbar.show(context);
  }

}
