import 'package:freezed_annotation/freezed_annotation.dart';

part 'investment.freezed.dart';

@freezed
abstract class InvestmentItem implements _$InvestmentItem {
  const InvestmentItem._();
  const factory InvestmentItem({
    required String description,
    required String uid,
    required int amount,
    required String traxId,
    required String roi,
    required String planName,
    required DateTime paymentDate,
    required DateTime dueDate,
    required String duration,
    required String status,
    required int planYield,
  }) = _InvestmentItem;

  factory InvestmentItem.empty() => InvestmentItem(
        amount: 0,
        description: '',
        dueDate: DateTime.fromMillisecondsSinceEpoch(0),
        duration: '',
        paymentDate: DateTime.now(),
        planName: '',
        planYield: 0,
        roi: '',
        status: '',
        traxId: '',
        uid: '',
      );
}
