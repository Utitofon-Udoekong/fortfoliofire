// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$CryptoWalletCopyWithImpl<$Res, CryptoWallet>;
  @useResult
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
class _$CryptoWalletCopyWithImpl<$Res, $Val extends CryptoWallet>
    implements $CryptoWalletCopyWith<$Res> {
  _$CryptoWalletCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletLabel = null,
    Object? address = null,
    Object? coin = null,
    Object? network = freezed,
    Object? platform = null,
    Object? type = null,
    Object? id = null,
    Object? trax = null,
  }) {
    return _then(_value.copyWith(
      walletLabel: null == walletLabel
          ? _value.walletLabel
          : walletLabel // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      coin: null == coin
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String,
      network: freezed == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      trax: null == trax
          ? _value.trax
          : trax // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CryptoWalletCopyWith<$Res>
    implements $CryptoWalletCopyWith<$Res> {
  factory _$$_CryptoWalletCopyWith(
          _$_CryptoWallet value, $Res Function(_$_CryptoWallet) then) =
      __$$_CryptoWalletCopyWithImpl<$Res>;
  @override
  @useResult
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
    extends _$CryptoWalletCopyWithImpl<$Res, _$_CryptoWallet>
    implements _$$_CryptoWalletCopyWith<$Res> {
  __$$_CryptoWalletCopyWithImpl(
      _$_CryptoWallet _value, $Res Function(_$_CryptoWallet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletLabel = null,
    Object? address = null,
    Object? coin = null,
    Object? network = freezed,
    Object? platform = null,
    Object? type = null,
    Object? id = null,
    Object? trax = null,
  }) {
    return _then(_$_CryptoWallet(
      walletLabel: null == walletLabel
          ? _value.walletLabel
          : walletLabel // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      coin: null == coin
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String,
      network: freezed == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String?,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      trax: null == trax
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
            (identical(other.walletLabel, walletLabel) ||
                other.walletLabel == walletLabel) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.coin, coin) || other.coin == coin) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.trax, trax) || other.trax == trax));
  }

  @override
  int get hashCode => Object.hash(runtimeType, walletLabel, address, coin,
      network, platform, type, id, trax);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
