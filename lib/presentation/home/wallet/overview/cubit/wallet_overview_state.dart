part of 'wallet_overview_cubit.dart';

@freezed
class WalletOverviewState with _$WalletOverviewState {
  const factory WalletOverviewState({
    required String exchange,
    required int balance,
    required Map<String, dynamic> activePlans
  }) = _WalletOverviewState;
  const WalletOverviewState._();

  factory WalletOverviewState.initial() => const WalletOverviewState(
    exchange: "NGN",
    balance: 0,
    activePlans: {
    }
  );
}
