import 'dart:convert';

import 'package:equatable/equatable.dart';

class CryptoAddress extends Equatable {
  final String walletLabel;
  final String address;
  final String coin;
  final String? network;
  final String platform;
  final String type;
  const CryptoAddress({
    required this.walletLabel,
    required this.address,
    required this.coin,
    this.network,
    required this.platform,
    required this.type,
  });
  

  CryptoAddress copyWith({
    String? walletLabel,
    String? address,
    String? coin,
    String? network,
    String? platform,
    String? type,
  }) {
    return CryptoAddress(
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

  factory CryptoAddress.fromMap(Map<String, dynamic> map) {
    return CryptoAddress(
      walletLabel: map['walletLabel'] ?? '',
      address: map['address'] ?? '',
      coin: map['coin'] ?? '',
      network: map['network'],
      platform: map['platform'] ?? '',
      type: map['type'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CryptoAddress.fromJson(String source) => CryptoAddress.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CryptoAddress(walletLabel: $walletLabel, address: $address, coin: $coin, network: $network, platform: $platform, type: $type)';
  }

  @override
  List<Object> get props {
    return [
      walletLabel,
      address,
      coin,
      network.toString(),
      platform,
      type,
    ];
  }
}
