import 'package:freezed_annotation/freezed_annotation.dart';

part 'investment.freezed.dart';

@freezed
abstract class InvestmentItem implements _$InvestmentItem {
  const InvestmentItem._();
  const factory InvestmentItem({
    required String description,
    required String uid,
    String? coin,
    String? bankAccountType,
    required double amount,
    required String traxId,
    required String fullName,
    required int roi,
    required int numberOfDays,
    required String planName,
    required DateTime paymentDate,
    required DateTime dueDate,
    DateTime? nextHarvestDate,
    required int duration,
    required String status,
    required String currency,
    required double planYield,
    required String paymentMethod,
    required String refId,
  }) = _InvestmentItem;

  factory InvestmentItem.empty() => InvestmentItem(
        amount: 0,
        description: '',
        dueDate: DateTime.fromMillisecondsSinceEpoch(0),
        duration: 0,
        numberOfDays: 0,
        paymentDate: DateTime.now(),
        nextHarvestDate: null,
        planName: '',
        planYield: 0,
        roi: 0,
        status: 'Pending',
        traxId: '',
        fullName: '',
        uid: '',
        coin: 'BTC',
        bankAccountType: 'Naira',
        currency: '\$',
        paymentMethod: '',
        refId: '',
      );
  
}
