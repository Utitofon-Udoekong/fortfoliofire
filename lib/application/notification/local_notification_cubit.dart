import 'dart:async';
import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'local_notification_state.dart';
part 'local_notification_cubit.freezed.dart';

@injectable
class LocalNotificationCubit extends Cubit<LocalNotificationState> {
  final _localNotificationService = FlutterLocalNotificationsPlugin(); 
  LocalNotificationCubit() : super(LocalNotificationState.empty()){
    initialize();
  }
  Future<int> generateOtp() async {
    final otp = Random().nextInt(999999) + 100000;
    return otp;
  }

  Future<void> initialize() async {
    const AndroidInitializationSettings androidInitializationSettings = AndroidInitializationSettings('');
    IOSInitializationSettings iosInitializationSettings = const IOSInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    final InitializationSettings settings = InitializationSettings(android: androidInitializationSettings, iOS: iosInitializationSettings);

    await _localNotificationService.initialize(settings);

  }

  Future<NotificationDetails> _notificationDetails() async {
    const AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails('channelId', 'channelName',
    channelDescription: '', importance: Importance.max, priority: Priority.max, playSound: true);

    const IOSNotificationDetails iosNotificationDetails = IOSNotificationDetails();

    return const NotificationDetails(android: androidNotificationDetails, iOS: iosNotificationDetails);
  }

  Future<Option<int>> showNotification({
    required int id,
  }) async {
    final notificationDetails = await _notificationDetails();
    final otpValue = await generateOtp();
    if (otpValue >= 100000) {
      await _localNotificationService.show(id, "Fortfolio OTP", "$otpValue", notificationDetails);
    }
    return some(otpValue);
  }
}
