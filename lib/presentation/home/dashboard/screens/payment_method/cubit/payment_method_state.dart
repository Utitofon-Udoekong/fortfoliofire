part of 'payment_method_cubit.dart';

@freezed
class PaymentMethodState with _$PaymentMethodState {
  const factory PaymentMethodState({
    required String bankName,
    required String accountNumber,
    required bool isLoading,
    required String failure,
    required PageRouteInfo<dynamic>? nextPage,
    required String success,
    required String walletLabel,
    required String coin,
    required String network,
    required String address,
    required String platform,
    required bool isGeneral,
    required bool isloading,
    required int? selectedNetwork,
    required List<DropdownMenuItem<String>> dropdownItems,
    required List<CryptoWallet> cryptoAddresses,
      required List<CryptoWallet> generalCryptoAddresses,
    required List<BankAddress> bankAddresses,
  }) = _PaymentMethodState;

  const PaymentMethodState._();

  factory PaymentMethodState.initial() => const PaymentMethodState(
    bankName: "",
    accountNumber: "",
    isLoading: false,
    nextPage: null,
    failure: "",
    success: "",
    coin: "BTC",
        walletLabel: "Wallet #1",
        network: "Ethereum (ERC20)",
        address: "",
        platform: "",
        isGeneral: true,
        isloading: false,
        selectedNetwork: 1,
        cryptoAddresses: [
        ],
      generalCryptoAddresses: [
      ],
        dropdownItems: [
          DropdownMenuItem(value: "BTC", child: Text("BTC")),
          DropdownMenuItem(value: "BCH", child: Text("BCH")),
          DropdownMenuItem(value: "ETH", child: Text("ETH")),
          DropdownMenuItem(value: "LTC", child: Text("LTC")),
          DropdownMenuItem(value: "BNB", child: Text("BNB")),
          DropdownMenuItem(value: "SOL", child: Text("SOL")),
          DropdownMenuItem(value: "LUNA", child: Text("LUNA")),
          DropdownMenuItem(value: "ALGO", child: Text("ALGO")),
          DropdownMenuItem(value: "XRP", child: Text("XRP")),
        ],
    bankAddresses: [
    ],
  );

  bool get isValidCryptoState =>
      walletLabel.isNotEmpty &&
      coin.isNotEmpty &&
      network.isNotEmpty &&
      address.isNotEmpty &&
      platform.isNotEmpty;
  bool get emptyWallet => cryptoAddresses.isEmpty && generalCryptoAddresses.isEmpty;
  bool get isValidBankState => bankName.isNotEmpty && accountNumber.isNotEmpty;
  bool get noAccount => bankAddresses.isEmpty;
  bool get noAddress => emptyWallet && noAccount;

}
