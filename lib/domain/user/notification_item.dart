import 'package:freezed_annotation/freezed_annotation.dart';
part 'notification_item.freezed.dart';

@freezed
abstract class NotificationItem implements _$NotificationItem {
  const NotificationItem._();
  const factory NotificationItem({
    required String id,
    required String type,
    required String title,
    required DateTime createdat,
    required String status
  }) = _NotificationItem;
  factory NotificationItem.empty() => NotificationItem(
    id: "",
    type: "",
    title: "",
    createdat: DateTime.now(),
    status: ""

  );
}