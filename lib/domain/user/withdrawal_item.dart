
import 'package:fortfolio/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'withdrawal_item.freezed.dart';
@freezed
class WithdrawalItem with _$WithdrawalItem {
  const factory WithdrawalItem({
    required UniqueId id,
    required int amount,
    required String planName,
    required bool processed
  }) = _WithdrawalItem;

  factory WithdrawalItem.empty() => WithdrawalItem(
    id: UniqueId(),
    amount: 0,
    planName: "",
    processed: false
  );
}