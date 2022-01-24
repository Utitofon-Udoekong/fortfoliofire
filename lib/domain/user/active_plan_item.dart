
import 'package:fortfolio/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'active_plan_item.freezed.dart';
@freezed
class ActivePlanItem with _$ActivePlanItem {
  const factory ActivePlanItem({
    required UniqueId id,
    required int amount,
    required String planName,
    required int duration,
    required int accountBalance,
    required int roi
  }) = _ActivePlanItem;

  factory ActivePlanItem.empty() => ActivePlanItem(
    id: UniqueId(),
    amount: 0,
    planName: "",
    duration: 0,
    accountBalance: 0,
    roi: 0
  );
}