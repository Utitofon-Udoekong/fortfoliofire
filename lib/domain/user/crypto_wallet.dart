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
    required String id,
  }) = _CryptoWallet;

  factory CryptoWallet.empty() => const CryptoWallet(
      address: '',
      coin: '',
      network: '',
      platform: '',
      type: '',
      id: '',
      walletLabel: '');
  Map<String, dynamic> toMap() {
    return {
      'walletLabel': walletLabel,
      'address': address,
      'coin': coin,
      'network': network,
      'platform': platform,
      'type': type,
      'id': id,
    };
  }
}
