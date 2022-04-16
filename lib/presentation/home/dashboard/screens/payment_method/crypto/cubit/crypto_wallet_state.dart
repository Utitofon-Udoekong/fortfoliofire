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
    required int? selectedNetwork
  }) = _CryptoWalletState;
  const CryptoWalletState._();
  factory CryptoWalletState.empty() => const CryptoWalletState(
    coin: "",
    walletLabel: "",
    network: "",
    address: "",
    platform: "",
    failure: "",
    success: "",
    isGeneral: false,
    isloading: false,
    selectedNetwork: 1
  );

  bool get isValidState => walletLabel.isNotEmpty && coin.isNotEmpty && network.isNotEmpty && address.isNotEmpty && platform.isNotEmpty;
}
