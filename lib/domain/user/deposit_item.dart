
import 'package:fortfolio/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'deposit_item.freezed.dart';
@freezed
class DepositItem with _$DepositItem {
  const factory DepositItem({
    required UniqueId id,
    required int amount,
    required String planName,
    required bool processed,
  }) = _DepositItem;

  factory DepositItem.empty() => DepositItem(
    id: UniqueId(),
    amount: 0,
    planName: "",
    processed: false
  );
}