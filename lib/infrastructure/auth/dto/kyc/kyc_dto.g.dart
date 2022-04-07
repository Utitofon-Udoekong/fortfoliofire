// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kyc_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KYCItemDTO _$$_KYCItemDTOFromJson(Map<String, dynamic> json) =>
    _$_KYCItemDTO(
      fullName: json['fullName'] as String,
      id: json['id'] as String,
      downloadUrl: json['downloadUrl'] as String,
      documents: json['documents'] as Map<String, dynamic>,
      submitted: DateTime.parse(json['submitted'] as String),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_KYCItemDTOToJson(_$_KYCItemDTO instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'id': instance.id,
      'downloadUrl': instance.downloadUrl,
      'documents': instance.documents,
      'submitted': instance.submitted.toIso8601String(),
      'status': instance.status,
    };
