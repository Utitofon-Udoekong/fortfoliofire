// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WithdrawalItemDTO _$$_WithdrawalItemDTOFromJson(Map<String, dynamic> json) =>
    _$_WithdrawalItemDTO(
      description: json['description'] as String,
      amount: (json['amount'] as num).toDouble(),
      duration: json['duration'] as int,
      roi: json['roi'] as int,
      traxId: json['traxId'] as String,
      uid: json['uid'] as String,
      status: json['status'] as String,
      createdat: DateTime.parse(json['createdat'] as String),
      paymentMethod: json['paymentMethod'] as String,
      currency: json['currency'] as String,
      refId: json['refId'] as String,
      withdrawalDetails: json['withdrawalDetails'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_WithdrawalItemDTOToJson(
        _$_WithdrawalItemDTO instance) =>
    <String, dynamic>{
      'description': instance.description,
      'amount': instance.amount,
      'duration': instance.duration,
      'roi': instance.roi,
      'traxId': instance.traxId,
      'uid': instance.uid,
      'status': instance.status,
      'createdat': instance.createdat.toIso8601String(),
      'paymentMethod': instance.paymentMethod,
      'currency': instance.currency,
      'refId': instance.refId,
      'withdrawalDetails': instance.withdrawalDetails,
    };
