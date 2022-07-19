part of 'local_notification_cubit.dart';

@freezed
class LocalNotificationState with _$LocalNotificationState {
  const factory LocalNotificationState({
    required bool sent
  }) = _LocalNotificationState;
  factory LocalNotificationState.empty() => const LocalNotificationState(
    sent: false
  );
}

