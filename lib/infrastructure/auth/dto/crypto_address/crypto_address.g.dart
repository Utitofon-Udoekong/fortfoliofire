// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CryptoWalletDTO _$$_CryptoWalletDTOFromJson(Map<String, dynamic> json) =>
    _$_CryptoWalletDTO(
      walletLabel: json['walletLabel'] as String,
      address: json['address'] as String,
      coin: json['coin'] as String,
      network: json['network'] as String?,
      platform: json['platform'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_CryptoWalletDTOToJson(_$_CryptoWalletDTO instance) =>
    <String, dynamic>{
      'walletLabel': instance.walletLabel,
      'address': instance.address,
      'coin': instance.coin,
      'network': instance.network,
      'platform': instance.platform,
      'type': instance.type,
    };
