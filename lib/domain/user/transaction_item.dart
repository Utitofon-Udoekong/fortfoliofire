import 'package:fortfolio/domain/user/investment.dart';
import 'package:fortfolio/domain/user/withdrawal_item.dart';

class TransactionItem {
  WithdrawalItem? withdrawalItem;
  InvestmentItem? investmentItem;
  TransactionItem({required this.withdrawalItem, required this.investmentItem}) {
    if (withdrawalItem == null && investmentItem == null || withdrawalItem != null && investmentItem != null) throw ArgumentError("only one object is allowed");
  }
}