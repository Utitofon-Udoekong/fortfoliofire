import 'dart:convert';

import 'package:equatable/equatable.dart';

class GeneralCryptoAddress extends Equatable {
  final String walletLabel;
  final String address;
  final String coin;
  final String network;
  final String platform;
  final String type;
  const GeneralCryptoAddress({
    required this.walletLabel,
    required this.address,
    required this.coin,
    required this.network,
    required this.platform,
    required this.type,
  });
  

  GeneralCryptoAddress copyWith({
    String? walletLabel,
    String? address,
    String? coin,
    String? network,
    String? platform,
    String? type,
  }) {
    return GeneralCryptoAddress(
      walletLabel: walletLabel ?? this.walletLabel,
      address: address ?? this.address,
      coin: coin ?? this.coin,
      network: network ?? this.network,
      platform: platform ?? this.platform,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'walletLabel': walletLabel,
      'address': address,
      'coin': coin,
      'network': network,
      'platform': platform,
      'type': type,
    };
  }

  factory GeneralCryptoAddress.fromMap(Map<String, dynamic> map) {
    return GeneralCryptoAddress(
      walletLabel: map['walletLabel'] ?? '',
      address: map['address'] ?? '',
      coin: map['coin'] ?? '',
      network: map['network'] ?? '',
      platform: map['platform'] ?? '',
      type: map['type'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory GeneralCryptoAddress.fromJson(String source) => GeneralCryptoAddress.fromMap(json.decode(source));

  @override
  String toString() {
    return 'GeneralCryptoAddress(walletLabel: $walletLabel, address: $address, coin: $coin, network: $network, platform: $platform, type: $type)';
  }

  @override
  List<Object> get props {
    return [
      walletLabel,
      address,
      coin,
      network,
      platform,
      type,
    ];
  }
}
