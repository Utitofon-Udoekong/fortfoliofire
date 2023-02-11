
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_item.freezed.dart';

@freezed
abstract class TransactionItem implements _$TransactionItem {
  const factory TransactionItem({
    required String description,
    required double amount,
    required String traxId,
    required String planName,
    required String status,
    required DateTime createdat,
    required String paymentMethod,
    required String currency,
    required String type,
    required int duration,
    required int roi,
    String? coin
  }) = _TransactionItem;

  factory TransactionItem.initial() => TransactionItem(
        amount: 0,
        createdat: DateTime.now(),
        currency: '',
        type: '',
        description: '',
        traxId: "",
        planName: '',
        status: '',
        paymentMethod: '',
        coin: '',
        duration: 0,
        roi: 0
      );
}
