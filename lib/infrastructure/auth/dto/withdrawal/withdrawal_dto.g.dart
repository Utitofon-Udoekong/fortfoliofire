// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WithdrawalItemDTO _$$_WithdrawalItemDTOFromJson(Map<String, dynamic> json) =>
    _$_WithdrawalItemDTO(
      description: json['description'] as String,
      amount: json['amount'] as int,
      traxId: json['traxId'] as String,
      planName: json['planName'] as String,
      status: json['status'] as String,
      createdat: DateTime.parse(json['createdat'] as String),
      paymentMethod: json['paymentMethod'] as String,
      paymentDetails: json['paymentDetails'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_WithdrawalItemDTOToJson(
        _$_WithdrawalItemDTO instance) =>
    <String, dynamic>{
      'description': instance.description,
      'amount': instance.amount,
      'traxId': instance.traxId,
      'planName': instance.planName,
      'status': instance.status,
      'createdat': instance.createdat.toIso8601String(),
      'paymentMethod': instance.paymentMethod,
      'paymentDetails': instance.paymentDetails,
    };
