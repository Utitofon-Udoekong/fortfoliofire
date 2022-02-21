// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_plan_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
