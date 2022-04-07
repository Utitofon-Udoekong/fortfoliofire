import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:fortfolio/domain/user/crypto_wallet.dart';

part 'crypto_address.freezed.dart';
part 'crypto_address.g.dart';

@freezed
abstract class CryptoWalletDTO implements _$CryptoWalletDTO {
  const CryptoWalletDTO._();
  const factory CryptoWalletDTO({
    required String walletLabel,
    required String address,
    required String coin,
    required String? network,
    required String platform,
    required String id,
    required String type,
  }) = _CryptoWalletDTO;

  factory CryptoWalletDTO.fromDomain(CryptoWallet cryptoWallet) {
    return CryptoWalletDTO(
        address: cryptoWallet.address,
        coin: cryptoWallet.coin,
        network: cryptoWallet.network,
        platform: cryptoWallet.platform,
        type: cryptoWallet.type,
        id: cryptoWallet.id,
        walletLabel: cryptoWallet.walletLabel);
  }

  factory CryptoWalletDTO.empty() =>
      CryptoWalletDTO.fromDomain(CryptoWallet.empty());

  factory CryptoWalletDTO.fromJson(Map<String, dynamic> json) =>
      _$CryptoWalletDTOFromJson(json);

  factory CryptoWalletDTO.fromFirestore(DocumentSnapshot doc) {
    final Map<String, dynamic> docdata =
        doc.data() as Map<String, dynamic>? ?? CryptoWalletDTO.empty().toJson();
    return CryptoWalletDTO.fromJson(docdata);
  }
}

extension CryptoWalletDTOX on CryptoWalletDTO {
  CryptoWallet toDomain() {
    return CryptoWallet(
        address: address,
        walletLabel: walletLabel,
        coin: coin,
        network: network,
        platform: platform,
        type: type,
        id: id);
  }
}
