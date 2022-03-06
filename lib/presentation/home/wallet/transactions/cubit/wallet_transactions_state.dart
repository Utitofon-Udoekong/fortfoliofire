part of 'wallet_transactions_cubit.dart';

@freezed
class WalletTransactionsState with _$WalletTransactionsState {
  const factory WalletTransactionsState({
    required List<WithdrawalItem> withdrawals
  }) = _WalletTransactionsState;
  factory WalletTransactionsState.empty() => WalletTransactionsState(
    withdrawals: List<WithdrawalItem>.empty()
  );
}
