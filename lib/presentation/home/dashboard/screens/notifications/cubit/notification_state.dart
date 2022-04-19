part of 'notification_cubit.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    required List<NotificationItem> notifications,
    required List<NotificationItem> selectedNotifications,
    required bool loading,
    required String type,
    required String title,
    required DateTime createdat,
    required String id,
    required String status,
  }) = _NotificationState;

  factory NotificationState.empty() => NotificationState(
        notifications: [
          // NotificationItem(
          //     id: nanoid(8),
          //     type: "Investment",
          //     title: "Fort Dollar Investment",
          //     createdat: DateTime.now(),
          //     status: "failed"),
          // NotificationItem(
          //     id: nanoid(8),
          //     type: "Withdrawal",
          //     title: "Fort Dollar Withdrawal",
          //     createdat: DateTime.now(),
          //     status: "pending"),
          // NotificationItem(
          //     id: nanoid(8),
          //     type: "Investment",
          //     title: "Fort Dollar Investment",
          //     createdat: DateTime.now(),
          //     status: "successfull"),
          // NotificationItem(
          //     id: nanoid(8),
          //     type: "Withdrawal",
          //     title: "Fort Dollar Withdrawal",
          //     createdat: DateTime.now(),
          //     status: "pending"),
        ],
        // notifications: List<NotificationItem>.empty(growable: true),
        loading: false,
        createdat: DateTime.now(),
        id: "",
        status: "pending",
        title: "",
        type: "",
        selectedNotifications: List<NotificationItem>.empty(growable: true)
      );
}
