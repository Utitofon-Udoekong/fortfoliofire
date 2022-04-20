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
        InvestmentItem( description: "fortdolls inv", currency: "\$", uid: "uid", amount: 30, traxId: "traxId", roi: 0, planName: "fortdollar", paymentDate: DateTime.now(), dueDate: DateTime.now(), duration: 3, status: "Pending", planYield: 6, paymentMethod: "Bank", numberOfDays: 0)
      ],
      fortCryptoInvestments: [
        InvestmentItem( description: "fortcrypto inv", currency: "\$", uid: "uid", amount: 30, traxId: "traxId", roi: 0, planName: "fortcrypto", paymentDate: DateTime.now(), dueDate: DateTime.now(), duration: 6, status: "Successful", planYield: 6, paymentMethod: "Bank", numberOfDays: 0)
      ],
      fortShieldInvestments: [
        InvestmentItem( description: "fortshiled inv", currency: "N", uid: "uid", amount: 30, traxId: "traxId", roi: 0, planName: "fortshield", paymentDate: DateTime.now(), dueDate: DateTime.now(), duration: 12, status: "Cancelled", planYield: 6, paymentMethod: "Bank", numberOfDays: 0)
      ],
      withdrawals: [
        WithdrawalItem( description: "withdrawal", amount: 20, traxId: "traxId", uid: "uid", planName: "fortDollar", currency: "\$", status: "Pending", createdat: DateTime.now(), paymentMethod: "Bank", duration: 6, roi: 15),
        WithdrawalItem( description: "withdrawal", amount: 40, traxId: "traxId", uid: "uid", planName: "FortCrypto", currency: "\$", status: "Successful", createdat: DateTime.now(), paymentMethod: "crypto", duration: 12, roi: 30),
        WithdrawalItem( description: "withdrawal", amount: 60, traxId: "traxId", uid: "uid", planName: "FortShield", currency: "N", status: "Cancelled", createdat: DateTime.now(), paymentMethod: "Bank", duration: 3, roi: 18)
      ],
      exchange: "NGN",
      showDigits: false,
      transactions: [
        
      ]);
  bool get isGeneral =>
      cryptoAddresses.isEmpty && generalCryptoAddresses.isNotEmpty;
  bool get isNotGeneral =>
      cryptoAddresses.isNotEmpty && generalCryptoAddresses.isEmpty;
  bool get paymentMethodExists =>
      cryptoAddresses.isNotEmpty &&
      generalCryptoAddresses.isNotEmpty &&
      bankAddresses.isNotEmpty;
  bool get isFortDollarActive => fortDollarInvestments.isNotEmpty;
  bool get isFortShieldActive => fortShieldInvestments.isNotEmpty;
  bool get isFortCryptoActive => fortCryptoInvestments.isNotEmpty;
}
