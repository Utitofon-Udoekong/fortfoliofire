part of 'crypto_wallet_bloc.dart';

@freezed
class CryptoWalletState with _$CryptoWalletState {
  const factory CryptoWalletState({
    required String walletLabel,
    required String coin,
    required String network,
    required String address,
    required String platform,
    required String response,
    required bool isGeneral,
    required bool isloading,
  }) = _CryptoWalletState;
  const CryptoWalletState._();
  factory CryptoWalletState.inital() => const CryptoWalletState(
    coin: "",
    walletLabel: "",
    network: "",
    address: "",
    platform: "",
    response: "",
    isGeneral: false,
    isloading: false
  );

  bool get isValidState => walletLabel.isNotEmpty && coin.isNotEmpty && network.isNotEmpty && address.isNotEmpty && platform.isNotEmpty;
}
