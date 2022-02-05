import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/core/failures.dart';
import 'package:fortfolio/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'value_objects.dart';

part 'withdrawal_item.freezed.dart';
@freezed
abstract class WithdrawalItem implements _$WithdrawalItem {
  const WithdrawalItem._();
  const factory WithdrawalItem(
      {required UniqueId id,
      required ItemName planName,
    required int amount,
    required bool processed
      }) = _WithdrawalItem;

  factory WithdrawalItem.empty() => WithdrawalItem(
        id: UniqueId(),
        planName: ItemName(''),
        processed: false,
        amount: 0
      );
  Option<ValueFailure<dynamic>> get failureOption {
    return planName.value.fold((f) => some(f), (_) => none());
  }
}
