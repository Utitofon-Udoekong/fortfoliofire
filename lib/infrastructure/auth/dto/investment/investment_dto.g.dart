// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InvestmentItemDTO _$$_InvestmentItemDTOFromJson(Map<String, dynamic> json) =>
    _$_InvestmentItemDTO(
      description: json['description'] as String,
      uid: json['uid'] as String,
      coin: json['coin'] as String?,
      bankAccountType: json['bankAccountType'] as String?,
      amount: (json['amount'] as num).toDouble(),
      traxId: json['traxId'] as String,
      roi: json['roi'] as int,
      numberOfDays: json['numberOfDays'] as int,
      planName: json['planName'] as String,
      paymentDate: DateTime.parse(json['paymentDate'] as String),
      dueDate: DateTime.parse(json['dueDate'] as String),
      duration: json['duration'] as int,
      status: json['status'] as String,
      currency: json['currency'] as String,
      planYield: (json['planYield'] as num).toDouble(),
      paymentMethod: json['paymentMethod'] as String,
    );

Map<String, dynamic> _$$_InvestmentItemDTOToJson(
        _$_InvestmentItemDTO instance) =>
    <String, dynamic>{
      'description': instance.description,
      'uid': instance.uid,
      'coin': instance.coin,
      'bankAccountType': instance.bankAccountType,
      'amount': instance.amount,
      'traxId': instance.traxId,
      'roi': instance.roi,
      'numberOfDays': instance.numberOfDays,
      'planName': instance.planName,
      'paymentDate': instance.paymentDate.toIso8601String(),
      'dueDate': instance.dueDate.toIso8601String(),
      'duration': instance.duration,
      'status': instance.status,
      'currency': instance.currency,
      'planYield': instance.planYield,
      'paymentMethod': instance.paymentMethod,
    };
