import 'package:elegant_notification/resources/arrays.dart';
import 'package:flutter/material.dart';
import 'package:elegant_notification/elegant_notification.dart';

class CustomSnackbar {
  static void showSnackBar(BuildContext context, String message, bool isError) {
    final snackbar = isError ? ElegantNotification.error(
                    animation: AnimationType.fromLeft,
                    notificationPosition: NotificationPosition.topLeft,
                    width: MediaQuery.of(context).size.width,
                    title: const Text('Error'),
                    description: Text(message),
                  ) : ElegantNotification.success(
                    animation: AnimationType.fromLeft,
                    notificationPosition: NotificationPosition.topLeft,
                    width: MediaQuery.of(context).size.width,
                    title: const Text('Success'),
                    description: Text(message),
                  );
    snackbar.show(context);
  }

}
