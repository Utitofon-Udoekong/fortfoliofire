// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$$_UserDTOFromJson(Map<String, dynamic> json) => _$_UserDTO(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      accountBalance: json['accountBalance'] as int,
      withdrawals: (json['withdrawals'] as List<dynamic>)
          .map((e) => WithdrawalItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      deposits: (json['deposits'] as List<dynamic>)
          .map((e) => DepositItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      activePlans: (json['activePlans'] as List<dynamic>)
          .map((e) => ActivePlanItemDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      serverTimeStamp: const ServerTimeStampConverter()
          .fromJson(json['serverTimeStamp'] as Object),
    );

Map<String, dynamic> _$$_UserDTOToJson(_$_UserDTO instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'accountBalance': instance.accountBalance,
      'withdrawals': instance.withdrawals,
      'deposits': instance.deposits,
      'activePlans': instance.activePlans,
      'serverTimeStamp':
          const ServerTimeStampConverter().toJson(instance.serverTimeStamp),
    };

_$_WithdrawalItemDTO _$$_WithdrawalItemDTOFromJson(Map<String, dynamic> json) =>
    _$_WithdrawalItemDTO(
      id: json['id'] as String,
      amount: json['amount'] as int,
      planName: json['planName'] as String,
      processed: json['processed'] as bool,
    );

Map<String, dynamic> _$$_WithdrawalItemDTOToJson(
        _$_WithdrawalItemDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'planName': instance.planName,
      'processed': instance.processed,
    };

_$_DepositItemDTO _$$_DepositItemDTOFromJson(Map<String, dynamic> json) =>
    _$_DepositItemDTO(
      id: json['id'] as String,
      amount: json['amount'] as int,
      planName: json['planName'] as String,
      processed: json['processed'] as bool,
    );

Map<String, dynamic> _$$_DepositItemDTOToJson(_$_DepositItemDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'planName': instance.planName,
      'processed': instance.processed,
    };

_$_ActivePlanItemDTO _$$_ActivePlanItemDTOFromJson(Map<String, dynamic> json) =>
    _$_ActivePlanItemDTO(
      id: json['id'] as String,
      amount: json['amount'] as int,
      planName: json['planName'] as String,
      accountBalance: json['accountBalance'] as int,
      duration: json['duration'] as int,
      roi: json['roi'] as int,
    );

Map<String, dynamic> _$$_ActivePlanItemDTOToJson(
        _$_ActivePlanItemDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'planName': instance.planName,
      'accountBalance': instance.accountBalance,
      'duration': instance.duration,
      'roi': instance.roi,
    };
