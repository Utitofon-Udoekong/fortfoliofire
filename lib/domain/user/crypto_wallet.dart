import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_wallet.freezed.dart';

@freezed
abstract class CryptoWallet implements _$CryptoWallet {
  const CryptoWallet._();
  const factory CryptoWallet({
    required String walletLabel,
    required String address,
    required String coin,
    required String? network,
    required String platform,
    required String type,
  }) = _CryptoWallet;

  factory CryptoWallet.empty() => const CryptoWallet(
      address: '',
      coin: '',
      network: '',
      platform: '',
      type: '',
      walletLabel: '');
}
