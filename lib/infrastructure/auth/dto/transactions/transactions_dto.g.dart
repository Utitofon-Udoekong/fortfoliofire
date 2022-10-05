// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionItemDTO _$$_TransactionItemDTOFromJson(
        Map<String, dynamic> json) =>
    _$_TransactionItemDTO(
      description: json['description'] as String,
      amount: (json['amount'] as num).toDouble(),
      traxId: json['traxId'] as String,
      planName: json['planName'] as String,
      status: json['status'] as String,
      createdat: DateTime.parse(json['createdat'] as String),
      paymentMethod: json['paymentMethod'] as String,
      currency: json['currency'] as String,
      type: json['type'] as String,
      duration: json['duration'] as int,
      roi: json['roi'] as int,
    );

Map<String, dynamic> _$$_TransactionItemDTOToJson(
        _$_TransactionItemDTO instance) =>
    <String, dynamic>{
      'description': instance.description,
      'amount': instance.amount,
      'traxId': instance.traxId,
      'planName': instance.planName,
      'status': instance.status,
      'createdat': instance.createdat.toIso8601String(),
      'paymentMethod': instance.paymentMethod,
      'currency': instance.currency,
      'type': instance.type,
      'duration': instance.duration,
      'roi': instance.roi,
    };
