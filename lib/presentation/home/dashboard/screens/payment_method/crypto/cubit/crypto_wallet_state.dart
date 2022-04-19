part of 'crypto_wallet_cubit.dart';

@freezed
class CryptoWalletState with _$CryptoWalletState {
  const factory CryptoWalletState({
    required String walletLabel,
    required String coin,
    required String network,
    required String address,
    required String platform,
    required String failure,
    required String success,
    required bool isGeneral,
    required bool isloading,
    required int? selectedNetwork,
    required List<DropdownMenuItem<String>> dropdownItems,
    required List<CryptoWallet> cryptoAddresses,
      required List<CryptoWallet> generalCryptoAddresses,
  }) = _CryptoWalletState;
  const CryptoWalletState._();
  factory CryptoWalletState.empty() => const CryptoWalletState(
        coin: "BTC",
        walletLabel: "",
        network: "",
        address: "",
        platform: "",
        failure: "",
        success: "",
        isGeneral: true,
        isloading: false,
        selectedNetwork: 1,
        cryptoAddresses: [
          CryptoWallet(walletLabel: "walletLabel", address: "address", coin: "BTC", network: "network", platform: "platform", type: "CRYPROWALLET", id: "id", trax: "2345632"),
          CryptoWallet(walletLabel: "walletLabel", address: "address", coin: "BTC", network: "network", platform: "platform", type: "CRYPROWALLET", id: "id", trax: "2345632")
        ],
      generalCryptoAddresses: [
        CryptoWallet(walletLabel: "walletLabel", address: "genaddress", coin: "BTC", network: "network", platform: "platform", type: "GENERALCRYPROWALLET", id: "id", trax: "2345632")
      ],
        dropdownItems: [
          DropdownMenuItem(child: Text("BTC"), value: "BTC"),
          DropdownMenuItem(child: Text("BCH"), value: "BCH"),
          DropdownMenuItem(child: Text("ETH"), value: "ETH"),
          DropdownMenuItem(child: Text("LTC"), value: "LTC"),
          DropdownMenuItem(child: Text("BNB"), value: "BNB"),
          DropdownMenuItem(child: Text("SOL"), value: "SOL"),
          DropdownMenuItem(child: Text("LUNA"), value: "LUNA"),
          DropdownMenuItem(child: Text("ALGO"), value: "ALGO"),
          DropdownMenuItem(child: Text("XRP"), value: "XRP"),
        ],
      );

  bool get isValidState =>
      walletLabel.isNotEmpty &&
      coin.isNotEmpty &&
      network.isNotEmpty &&
      address.isNotEmpty &&
      platform.isNotEmpty;
  bool get emptyWallet => cryptoAddresses.isEmpty && generalCryptoAddresses.isEmpty;
}
