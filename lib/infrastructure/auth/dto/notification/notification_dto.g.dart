// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationItemDTO _$$_NotificationItemDTOFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationItemDTO(
      type: json['type'] as String,
      id: json['id'] as String,
      title: json['title'] as String,
      createdat: DateTime.parse(json['createdat'] as String),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_NotificationItemDTOToJson(
        _$_NotificationItemDTO instance) =>
    <String, dynamic>{
      'type': instance.type,
      'id': instance.id,
      'title': instance.title,
      'createdat': instance.createdat.toIso8601String(),
      'status': instance.status,
    };
