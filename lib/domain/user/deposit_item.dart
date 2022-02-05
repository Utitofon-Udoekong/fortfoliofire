import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/core/failures.dart';
import 'package:fortfolio/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'value_objects.dart';

part 'deposit_item.freezed.dart';
@freezed
abstract class DepositItem implements _$DepositItem {
  const DepositItem._();
  const factory DepositItem(
      {required UniqueId id,
      required ItemName planName,
    required int amount,
    required bool processed
      }) = _DepositItem;

  factory DepositItem.empty() => DepositItem(
        id: UniqueId(),
        planName: ItemName(''),
        processed: false,
        amount: 0
      );
  Option<ValueFailure<dynamic>> get failureOption {
    return planName.value.fold((f) => some(f), (_) => none());
  }
}
