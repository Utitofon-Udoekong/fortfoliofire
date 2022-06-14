import 'package:fortfolio/domain/user/investment.dart';
import 'package:fortfolio/domain/user/withdrawal_item.dart';

class TransactionItem {
// class TransactionItem implements _$TransactionItem {
  WithdrawalItem? withdrawalItem;
  InvestmentItem? investmentItem;
  // const factory TransactionItem({
  //   required String description, //same
  //   required int amount, //same
  //   required String traxId, //same
  //   required String planName, //same
  //   required String status, //same
  //   required DateTime createdat,
  //   required String paymentMethod, //same
  //   required String currency, //same
  //   required int duration, //same
  //   required int roi, //same
  // }) = _TransactionItem;
  TransactionItem({required this.withdrawalItem, required this.investmentItem}) {
    if (withdrawalItem == null && investmentItem == null || withdrawalItem != null && investmentItem != null) throw ArgumentError("only one object is allowed");
  }
}