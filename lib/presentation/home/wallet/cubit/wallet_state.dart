part of 'wallet_cubit.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState({
    required String investmentPlan,
    required int walletBalance,
    required int fortDollarInvestmentBalance,
    required int fortCryptoInvestmentBalance,
    required int fortShieldInvestmentBalance,
    required int fortDollarYieldBalance,
    required int fortCryptoYieldBalance,
    required int fortShieldYieldBalance,
    required String withdrawalMethod,
    required String response,
    required Map<String, dynamic> withdrawalDetails,
    required InvestmentItem investmentToBeWithdrawn,
    required List<BankAddress> bankAddresses,
    required List<CryptoWallet> cryptoAddresses,
    required List<CryptoWallet> generalCryptoAddresses,
    required List<InvestmentItem> fortDollarInvestments,
    required List<InvestmentItem> fortCryptoInvestments,
    required List<InvestmentItem> fortShieldInvestments,
    required List<WithdrawalItem> withdrawals,
    required String exchange,
    required bool showDigits
  }) = _WalletState;
  const WalletState._();
  factory WalletState.initial() => WalletState(
    investmentPlan: "",
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
    response: "",
    bankAddresses: [
    ],
    cryptoAddresses: [
    ],
    generalCryptoAddresses: [
    ],
    fortDollarInvestments: [
      InvestmentItem(description: "description", uid: "uid", amount: 30, traxId: "traxId", roi: 0, planName: "fortdollar", paymentDate: DateTime.now(), dueDate: DateTime.now(), duration: 3, status: "status", planYield: 6)
    ],
    fortCryptoInvestments: [
      InvestmentItem(description: "description", uid: "uid", amount: 30, traxId: "traxId", roi: 0, planName: "fortcrypto", paymentDate: DateTime.now(), dueDate: DateTime.now(), duration: 3, status: "status", planYield: 6)
    ],
    fortShieldInvestments: [
      InvestmentItem(description: "description", uid: "uid", amount: 30, traxId: "traxId", roi: 0, planName: "fortshield", paymentDate: DateTime.now(), dueDate: DateTime.now(), duration: 3, status: "status", planYield: 6)
    ],
    withdrawals: [],
    exchange: "NGN",
    showDigits: false
  );
  bool get isGeneral => cryptoAddresses.isEmpty && generalCryptoAddresses.isNotEmpty;
  bool get isNotGeneral => cryptoAddresses.isNotEmpty && generalCryptoAddresses.isEmpty;
  bool get paymentMethodExists => cryptoAddresses.isNotEmpty && generalCryptoAddresses.isNotEmpty && bankAddresses.isNotEmpty;
  bool get isFortDollarActive => fortDollarInvestments.isNotEmpty;
  bool get isFortShieldActive => fortShieldInvestments.isNotEmpty;
  bool get isFortCryptoActive => fortCryptoInvestments.isNotEmpty;
}
