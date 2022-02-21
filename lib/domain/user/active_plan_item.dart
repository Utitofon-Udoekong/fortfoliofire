import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/core/failures.dart';
import 'package:fortfolio/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'value_objects.dart';

part 'active_plan_item.freezed.dart';

@freezed
abstract class ActivePlanItem implements _$ActivePlanItem {
  const ActivePlanItem._();
  const factory ActivePlanItem(
      {required String id,
      required String planName,
      required int amount,
      required int duration,
      required int accountBalance,
      required int roi}) = _ActivePlanItem;

  factory ActivePlanItem.empty() => ActivePlanItem(
        id: "",
        planName: "",
        amount: 0,
        accountBalance: 0,
        duration: 0,
        roi: 0,
      );
  
}
