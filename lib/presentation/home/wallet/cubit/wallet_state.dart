part of 'wallet_cubit.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState({
    required String investmentPlan,
    required int amountToBeWithdrawn,
    required int investmentBalance,
    required int yieldBalance,
    required String withdrawalMethod,
    required String response,
    required Map<String, dynamic> withdrawalDetails,
    required List<BankAddress> bankAddresses,
    required List<CryptoWallet> cryptoAddresses,
    required List<CryptoWallet> generalCryptoAddresses,
  }) = _WalletState;
  const WalletState._();
  factory WalletState.initial() => const WalletState(
    investmentPlan: "",
    amountToBeWithdrawn: 0,
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
    ]
  );
  bool get isGeneral => cryptoAddresses.isEmpty && generalCryptoAddresses.isNotEmpty;
  bool get isNotGeneral => cryptoAddresses.isNotEmpty && generalCryptoAddresses.isEmpty;
  bool get paymentMethodExists => cryptoAddresses.isNotEmpty && generalCryptoAddresses.isNotEmpty && bankAddresses.isNotEmpty;
}
