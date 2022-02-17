part of 'crypto_wallet_bloc.dart';

@freezed
class CryptoWalletEvent with _$CryptoWalletEvent {
  const factory CryptoWalletEvent.coinChanged(String coin) = _coinChanged;
  const factory CryptoWalletEvent.isGeneralChanged(bool isGeneral) = _IsGeneralChanged;
  const factory CryptoWalletEvent.addressChanged(String address) = _AddressChanged;
  const factory CryptoWalletEvent.networkChanged(String network) = _NetworkChanged;
  const factory CryptoWalletEvent.platformChanged(String platform) = _PlatformChanged;
  const factory CryptoWalletEvent.walletLabelChanged(String walletLabel) = _WalletLabelChanged;
  const factory CryptoWalletEvent.addWalletClicked() = _AddWalletClicked;
}