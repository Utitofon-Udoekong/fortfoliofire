// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kyc_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_KYCItemDTO _$$_KYCItemDTOFromJson(Map<String, dynamic> json) =>
    _$_KYCItemDTO(
      fullName: json['fullName'] as String,
      id: json['id'] as String,
      documentType: json['documentType'] as String,
      documents: (json['documents'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      submitted: DateTime.parse(json['submitted'] as String),
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_KYCItemDTOToJson(_$_KYCItemDTO instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'id': instance.id,
      'documentType': instance.documentType,
      'documents': instance.documents,
      'submitted': instance.submitted.toIso8601String(),
      'status': instance.status,
    };
