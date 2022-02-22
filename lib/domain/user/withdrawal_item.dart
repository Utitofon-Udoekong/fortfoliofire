import 'package:fortfolio/domain/user/payment_details.dart';
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
    required String status,
    required DateTime createdat,
    required String paymentMethod,
    required PaymentDetails paymentDetails,
  }) = _WithdrawalItem;

  factory WithdrawalItem.empty() => WithdrawalItem(
        amount: 0,
        createdat: DateTime.now(),
        description: '',
        paymentDetails: PaymentDetails.empty(),
        paymentMethod: '',
        planName: '',
        status: '',
        traxId: '',
      );
}
