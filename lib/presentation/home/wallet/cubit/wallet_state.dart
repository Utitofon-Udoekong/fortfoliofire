part of 'wallet_cubit.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState({
    required String investmentPlan,
    required int amountToBeWithdrawn,
    required int walletBalance,
    required int investmentBalance,
    required String investmentView,
    required int yieldBalance,
    required String withdrawalMethod,
    required String response,
    required Map<String, dynamic> withdrawalDetails,
    required List<BankAddress> bankAddresses,
    required List<CryptoWallet> cryptoAddresses,
    required List<CryptoWallet> generalCryptoAddresses,
    required List<InvestmentItem> fortDollarInvestments,
    required List<InvestmentItem> fortCryptoInvestments,
    required List<InvestmentItem> fortShieldInvestments,
    required List<WithdrawalItem> withdrawals,
  }) = _WalletState;
  const WalletState._();
  factory WalletState.initial() => const WalletState(
    investmentPlan: "",
    investmentView: "",
    amountToBeWithdrawn: 0,
    walletBalance: 0,
    investmentBalance: 0,
    yieldBalance: 0,
    withdrawalMethod: "",
    withdrawalDetails: {},
    response: "",
    bankAddresses: [
    ],
    cryptoAddresses: [
    ],
    generalCryptoAddresses: [
    ],
    fortDollarInvestments: [],
    fortCryptoInvestments: [],
    fortShieldInvestments: [],
    withdrawals: []
  );
  bool get isGeneral => cryptoAddresses.isEmpty && generalCryptoAddresses.isNotEmpty;
  bool get isNotGeneral => cryptoAddresses.isNotEmpty && generalCryptoAddresses.isEmpty;
  bool get paymentMethodExists => cryptoAddresses.isNotEmpty && generalCryptoAddresses.isNotEmpty && bankAddresses.isNotEmpty;
  bool get isFortDollarActive => fortDollarInvestments.isNotEmpty;
  bool get isFortShieldActive => fortShieldInvestments.isNotEmpty;
  bool get isFortCryptoActive => fortCryptoInvestments.isNotEmpty;
}
