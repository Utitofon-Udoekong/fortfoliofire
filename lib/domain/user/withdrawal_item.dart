import 'package:fortfolio/domain/auth/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'withdrawal_item.freezed.dart';

@freezed
abstract class WithdrawalItem implements _$WithdrawalItem {
  const WithdrawalItem._();
  const factory WithdrawalItem({
    required String description,
    required int amount,
    required String traxId,
    required String planName,
    required Status status,
    required DateTime createdat,
    required String paymentMethod,
    // add duration
    // add roi
  }) = _WithdrawalItem;

  factory WithdrawalItem.empty() => WithdrawalItem(
        amount: 0,
        createdat: DateTime.now(),
        description: '',
        paymentMethod: '',
        planName: '',
        status: Status.processing,
        traxId: '',
      );
  String get statusString => status.toCustomString();
}
