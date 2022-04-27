part of 'wallet_cubit.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState(
      {required String investmentPlan,
      required int walletBalance,
      required bool loading,
      required int fortDollarInvestmentBalance,
      required int fortCryptoInvestmentBalance,
      required int fortShieldInvestmentBalance,
      required int fortDollarYieldBalance,
      required int fortCryptoYieldBalance,
      required int fortShieldYieldBalance,
      required String withdrawalMethod,
      required String failure,
      required String success,
      required Map<String, dynamic> withdrawalDetails,
      required InvestmentItem investmentToBeWithdrawn,
      required List<BankAddress> bankAddresses,
      required List<CryptoWallet> cryptoAddresses,
      required List<CryptoWallet> generalCryptoAddresses,
      required List<InvestmentItem> fortDollarInvestments,
      required List<InvestmentItem> fortCryptoInvestments,
      required List<InvestmentItem> fortShieldInvestments,
      required List<WithdrawalItem> withdrawals,
      required List<TransactionItem> transactions,
      required String exchange,
      required bool showDigits}) = _WalletState;
  const WalletState._();
  factory WalletState.initial() => WalletState(
      investmentPlan: "",
      loading: false,
      walletBalance: 0,
      fortDollarInvestmentBalance: 0,
      fortCryptoInvestmentBalance: 0,
      fortShieldInvestmentBalance: 0,
      fortDollarYieldBalance: 0,
      fortCryptoYieldBalance: 0,
      fortShieldYieldBalance: 0,
      withdrawalMethod: "",
      investmentToBeWithdrawn: InvestmentItem.empty(),
      withdrawalDetails: {},
      failure: "",
      success: "",
      bankAddresses: [],
      cryptoAddresses: [],
      generalCryptoAddresses: [],
      fortDollarInvestments: [
      ],
      fortCryptoInvestments: [
      ],
      fortShieldInvestments: [
      ],
      withdrawals: [
      ],
      exchange: "NGN",
      showDigits: false,
      transactions: [
        
      ]);
  bool get investmentDoesNotExist => !isFortDollarActive && !isFortShieldActive && !isFortCryptoActive;
  bool get paymentMethodExists =>
      cryptoAddresses.isNotEmpty &&
      generalCryptoAddresses.isNotEmpty &&
      bankAddresses.isNotEmpty;
  bool get isFortDollarActive => fortDollarInvestments.isNotEmpty;
  bool get isFortShieldActive => fortShieldInvestments.isNotEmpty;
  bool get isFortCryptoActive => fortCryptoInvestments.isNotEmpty;
}
