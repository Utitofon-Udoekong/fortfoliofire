import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'local_notification_state.dart';

@injectable
class LocalNotificationCubit extends Cubit<LocalNotificationState> {
  final _localNotificationService = FlutterLocalNotificationsPlugin();
  LocalNotificationCubit() : super(LocalNotificationInitial()){
    initialize();
  }

  Future<void> initialize() async {
    const AndroidInitializationSettings androidInitializationSettings = AndroidInitializationSettings('');
    IOSInitializationSettings iosInitializationSettings = IOSInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
      onDidReceiveLocalNotification: _onDidReceiveLocalNotification(body: "", id: 0, title: '', payload: '')
    );

    final InitializationSettings settings = InitializationSettings(android: androidInitializationSettings, iOS: iosInitializationSettings);

    await _localNotificationService.initialize(settings, onSelectNotification: onSelectNotification);

  }

  Future<NotificationDetails> _notificationDetails() async {
    const AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails('channelId', 'channelName',
    channelDescription: '', importance: Importance.max, priority: Priority.max, playSound: true);

    const IOSNotificationDetails iosNotificationDetails = IOSNotificationDetails();

    return const NotificationDetails(android: androidNotificationDetails, iOS: iosNotificationDetails);
  }

  Future<void> showNotification({
    required int id,
    required String title,
    required String body
  }) async {
    final notificationDetails = await _notificationDetails();
    await _localNotificationService.show(id, title, body, notificationDetails);
  }

  _onDidReceiveLocalNotification({
    required int id, required String? title, required String? body, required String? payload
  }){

  }

  onSelectNotification(String? payload){

  }
}
