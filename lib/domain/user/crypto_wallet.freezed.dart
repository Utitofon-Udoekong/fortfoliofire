// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'crypto_wallet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CryptoWallet {
  String get walletLabel => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get coin => throw _privateConstructorUsedError;
  String? get network => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get trax => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CryptoWalletCopyWith<CryptoWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoWalletCopyWith<$Res> {
  factory $CryptoWalletCopyWith(
          CryptoWallet value, $Res Function(CryptoWallet) then) =
      _$CryptoWalletCopyWithImpl<$Res>;
  $Res call(
      {String walletLabel,
      String address,
      String coin,
      String? network,
      String platform,
      String type,
      String id,
      String trax});
}

/// @nodoc
class _$CryptoWalletCopyWithImpl<$Res> implements $CryptoWalletCopyWith<$Res> {
  _$CryptoWalletCopyWithImpl(this._value, this._then);

  final CryptoWallet _value;
  // ignore: unused_field
  final $Res Function(CryptoWallet) _then;

  @override
  $Res call({
    Object? walletLabel = freezed,
    Object? address = freezed,
    Object? coin = freezed,
    Object? network = freezed,
    Object? platform = freezed,
    Object? type = freezed,
    Object? id = freezed,
    Object? trax = freezed,
  }) {
    return _then(_value.copyWith(
      walletLabel: walletLabel == freezed
          ? _value.walletLabel
          : walletLabel // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      coin: coin == freezed
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String,
      network: network == freezed
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      trax: trax == freezed
          ? _value.trax
          : trax // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CryptoWalletCopyWith<$Res>
    implements $CryptoWalletCopyWith<$Res> {
  factory _$$_CryptoWalletCopyWith(
          _$_CryptoWallet value, $Res Function(_$_CryptoWallet) then) =
      __$$_CryptoWalletCopyWithImpl<$Res>;
  @override
  $Res call(
      {String walletLabel,
      String address,
      String coin,
      String? network,
      String platform,
      String type,
      String id,
      String trax});
}

/// @nodoc
class __$$_CryptoWalletCopyWithImpl<$Res>
    extends _$CryptoWalletCopyWithImpl<$Res>
    implements _$$_CryptoWalletCopyWith<$Res> {
  __$$_CryptoWalletCopyWithImpl(
      _$_CryptoWallet _value, $Res Function(_$_CryptoWallet) _then)
      : super(_value, (v) => _then(v as _$_CryptoWallet));

  @override
  _$_CryptoWallet get _value => super._value as _$_CryptoWallet;

  @override
  $Res call({
    Object? walletLabel = freezed,
    Object? address = freezed,
    Object? coin = freezed,
    Object? network = freezed,
    Object? platform = freezed,
    Object? type = freezed,
    Object? id = freezed,
    Object? trax = freezed,
  }) {
    return _then(_$_CryptoWallet(
      walletLabel: walletLabel == freezed
          ? _value.walletLabel
          : walletLabel // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      coin: coin == freezed
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String,
      network: network == freezed
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      trax: trax == freezed
          ? _value.trax
          : trax // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CryptoWallet extends _CryptoWallet {
  const _$_CryptoWallet(
      {required this.walletLabel,
      required this.address,
      required this.coin,
      required this.network,
      required this.platform,
      required this.type,
      required this.id,
      required this.trax})
      : super._();

  @override
  final String walletLabel;
  @override
  final String address;
  @override
  final String coin;
  @override
  final String? network;
  @override
  final String platform;
  @override
  final String type;
  @override
  final String id;
  @override
  final String trax;

  @override
  String toString() {
    return 'CryptoWallet(walletLabel: $walletLabel, address: $address, coin: $coin, network: $network, platform: $platform, type: $type, id: $id, trax: $trax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CryptoWallet &&
            const DeepCollectionEquality()
                .equals(other.walletLabel, walletLabel) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.coin, coin) &&
            const DeepCollectionEquality().equals(other.network, network) &&
            const DeepCollectionEquality().equals(other.platform, platform) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.trax, trax));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(walletLabel),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(coin),
      const DeepCollectionEquality().hash(network),
      const DeepCollectionEquality().hash(platform),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(trax));

  @JsonKey(ignore: true)
  @override
  _$$_CryptoWalletCopyWith<_$_CryptoWallet> get copyWith =>
      __$$_CryptoWalletCopyWithImpl<_$_CryptoWallet>(this, _$identity);
}

abstract class _CryptoWallet extends CryptoWallet {
  const factory _CryptoWallet(
      {required final String walletLabel,
      required final String address,
      required final String coin,
      required final String? network,
      required final String platform,
      required final String type,
      required final String id,
      required final String trax}) = _$_CryptoWallet;
  const _CryptoWallet._() : super._();

  @override
  String get walletLabel;
  @override
  String get address;
  @override
  String get coin;
  @override
  String? get network;
  @override
  String get platform;
  @override
  String get type;
  @override
  String get id;
  @override
  String get trax;
  @override
  @JsonKey(ignore: true)
  _$$_CryptoWalletCopyWith<_$_CryptoWallet> get copyWith =>
      throw _privateConstructorUsedError;
}
