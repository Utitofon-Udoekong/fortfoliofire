import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/core/value_objects.dart';
import 'package:fortfolio/domain/user/active_plan_item.dart';
import 'package:fortfolio/domain/user/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/user/investment.dart';
import '../../../domain/user/withdrawal_item.dart';
part 'active_plan_dto.freezed.dart';
part 'active_plan_dto.g.dart';

@freezed
abstract class ActivePlanItemDTO implements _$ActivePlanItemDTO {
  const ActivePlanItemDTO._();
  const factory ActivePlanItemDTO(
      {required String id,
      required int amount,
      required String planName,
      required int accountBalance,
      required int duration,
      required int roi}) = _ActivePlanItemDTO;

  factory ActivePlanItemDTO.fromDomain(ActivePlanItem activePlanItem) {
    return ActivePlanItemDTO(
      amount: activePlanItem.amount,
      planName: activePlanItem.planName,
      id: activePlanItem.id,
      accountBalance: activePlanItem.accountBalance,
      duration: activePlanItem.duration,
      roi: activePlanItem.roi,
    );
  }

  factory ActivePlanItemDTO.empty() =>
      ActivePlanItemDTO.fromDomain(ActivePlanItem.empty());

  factory ActivePlanItemDTO.fromJson(Map<String, dynamic> json) =>
      _$ActivePlanItemDTOFromJson(json);
  
  factory ActivePlanItemDTO.fromFirestore(DocumentSnapshot doc){
    final Map<String, dynamic> docdata = doc.data() as Map<String, dynamic>? ??
        ActivePlanItemDTO.empty().toJson();
    return ActivePlanItemDTO.fromJson(docdata);
  }
}

extension ActivePlanItemDTOX on ActivePlanItemDTO {
  ActivePlanItem toDomain() {
    return ActivePlanItem(
      id: id,
      amount: amount,
      planName: planName,
      accountBalance: accountBalance,
      duration: duration,
      roi: roi,
    );
  }
}
