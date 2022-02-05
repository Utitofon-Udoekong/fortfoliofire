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
      {required UniqueId id,
      required ItemName planName,
      required int amount,
      required int duration,
      required int accountBalance,
      required int roi}) = _ActivePlanItem;

  factory ActivePlanItem.empty() => ActivePlanItem(
        id: UniqueId(),
        planName: ItemName(''),
        amount: 0,
        accountBalance: 0,
        duration: 0,
        roi: 0,
      );
  Option<ValueFailure<dynamic>> get failureOption {
    return planName.value.fold((f) => some(f), (_) => none());
  }
}
