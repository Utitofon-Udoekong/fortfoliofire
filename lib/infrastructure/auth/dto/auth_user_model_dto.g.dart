// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthUserModelDto _$$_AuthUserModelDtoFromJson(Map<String, dynamic> json) =>
    _$_AuthUserModelDto(
      id: json['id'] as String,
      displayName: json['displayName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      balance: (json['balance'] as num).toDouble(),
      email: json['email'] as String,
      status: json['status'] as String,
      isVerified: json['isVerified'] as bool,
      isAccountActive: json['isAccountActive'] as bool,
      createdat: sendDateTimeFromJson(json['createdat']),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      deleteDate: json['deleteDate'] == null
          ? null
          : DateTime.parse(json['deleteDate'] as String),
    );

Map<String, dynamic> _$$_AuthUserModelDtoToJson(_$_AuthUserModelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displayName': instance.displayName,
      'phoneNumber': instance.phoneNumber,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'balance': instance.balance,
      'email': instance.email,
      'status': instance.status,
      'isVerified': instance.isVerified,
      'isAccountActive': instance.isAccountActive,
      'createdat': sendDateTimeToJson(instance.createdat),
      'startDate': instance.startDate?.toIso8601String(),
      'deleteDate': instance.deleteDate?.toIso8601String(),
    };
