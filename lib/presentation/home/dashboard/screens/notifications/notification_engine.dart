import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/notifications/cubit/notification_cubit.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/notifications/notifications.dart';

class NotificationEngine extends StatefulWidget {
  const NotificationEngine({ Key? key }) : super(key: key);

  @override
  State<NotificationEngine> createState() => _NotificationEngineState();
}

class _NotificationEngineState extends State<NotificationEngine> {
  @override
  void initState() {
    context.read<NotificationCubit>().initNotifications();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const NotificationsPage();
  }
}