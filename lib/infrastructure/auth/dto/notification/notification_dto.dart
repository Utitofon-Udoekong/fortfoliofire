
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fortfolio/domain/user/notification_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_dto.freezed.dart';
part 'notification_dto.g.dart';

@freezed
abstract class NotificationItemDTO implements _$NotificationItemDTO {
  const NotificationItemDTO._();
  const factory NotificationItemDTO({
    required String type,
    required String id,
    required String title,
    required DateTime createdat,
    required String status
  }) = _NotificationItemDTO;

  factory NotificationItemDTO.fromDomain(NotificationItem notificationItem) {
    return NotificationItemDTO(
      id: notificationItem.id,
      type: notificationItem.type,
    title: notificationItem.title,
    createdat: notificationItem.createdat,
    status: notificationItem.status
    );
  }

  factory NotificationItemDTO.empty() =>
      NotificationItemDTO.fromDomain(NotificationItem.empty());

  factory NotificationItemDTO.fromJson(Map<String, dynamic> json) =>
      _$NotificationItemDTOFromJson(json);
  
  factory NotificationItemDTO.fromFirestore(DocumentSnapshot doc){
    final Map<String, dynamic> docdata = doc.data() as Map<String, dynamic>? ??
        NotificationItemDTO.empty().toJson();
    return NotificationItemDTO.fromJson(docdata);
  }
}

extension NotificationItemDTOX on NotificationItemDTO {
  NotificationItem toDomain() {
    return NotificationItem(
    id: id,
    title: title,
    type: type,
    createdat: createdat,
    status: status
    );
  }
}