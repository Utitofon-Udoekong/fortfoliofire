// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CryptoWalletDTO _$CryptoWalletDTOFromJson(Map<String, dynamic> json) {
  return _CryptoWalletDTO.fromJson(json);
}

/// @nodoc
mixin _$CryptoWalletDTO {
  String get walletLabel => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get coin => throw _privateConstructorUsedError;
  String? get network => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get trax => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CryptoWalletDTOCopyWith<CryptoWalletDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoWalletDTOCopyWith<$Res> {
  factory $CryptoWalletDTOCopyWith(
          CryptoWalletDTO value, $Res Function(CryptoWalletDTO) then) =
      _$CryptoWalletDTOCopyWithImpl<$Res, CryptoWalletDTO>;
  @useResult
  $Res call(
      {String walletLabel,
      String address,
      String coin,
      String? network,
      String platform,
      String id,
      String trax,
      String type});
}

/// @nodoc
class _$CryptoWalletDTOCopyWithImpl<$Res, $Val extends CryptoWalletDTO>
    implements $CryptoWalletDTOCopyWith<$Res> {
  _$CryptoWalletDTOCopyWithImpl(this._value, this._then);

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
    Object? id = null,
    Object? trax = null,
    Object? type = null,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      trax: null == trax
          ? _value.trax
          : trax // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CryptoWalletDTOCopyWith<$Res>
    implements $CryptoWalletDTOCopyWith<$Res> {
  factory _$$_CryptoWalletDTOCopyWith(
          _$_CryptoWalletDTO value, $Res Function(_$_CryptoWalletDTO) then) =
      __$$_CryptoWalletDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String walletLabel,
      String address,
      String coin,
      String? network,
      String platform,
      String id,
      String trax,
      String type});
}

/// @nodoc
class __$$_CryptoWalletDTOCopyWithImpl<$Res>
    extends _$CryptoWalletDTOCopyWithImpl<$Res, _$_CryptoWalletDTO>
    implements _$$_CryptoWalletDTOCopyWith<$Res> {
  __$$_CryptoWalletDTOCopyWithImpl(
      _$_CryptoWalletDTO _value, $Res Function(_$_CryptoWalletDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletLabel = null,
    Object? address = null,
    Object? coin = null,
    Object? network = freezed,
    Object? platform = null,
    Object? id = null,
    Object? trax = null,
    Object? type = null,
  }) {
    return _then(_$_CryptoWalletDTO(
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      trax: null == trax
          ? _value.trax
          : trax // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CryptoWalletDTO extends _CryptoWalletDTO {
  const _$_CryptoWalletDTO(
      {required this.walletLabel,
      required this.address,
      required this.coin,
      required this.network,
      required this.platform,
      required this.id,
      required this.trax,
      required this.type})
      : super._();

  factory _$_CryptoWalletDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CryptoWalletDTOFromJson(json);

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
  final String id;
  @override
  final String trax;
  @override
  final String type;

  @override
  String toString() {
    return 'CryptoWalletDTO(walletLabel: $walletLabel, address: $address, coin: $coin, network: $network, platform: $platform, id: $id, trax: $trax, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CryptoWalletDTO &&
            (identical(other.walletLabel, walletLabel) ||
                other.walletLabel == walletLabel) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.coin, coin) || other.coin == coin) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.trax, trax) || other.trax == trax) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, walletLabel, address, coin,
      network, platform, id, trax, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CryptoWalletDTOCopyWith<_$_CryptoWalletDTO> get copyWith =>
      __$$_CryptoWalletDTOCopyWithImpl<_$_CryptoWalletDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CryptoWalletDTOToJson(
      this,
    );
  }
}

abstract class _CryptoWalletDTO extends CryptoWalletDTO {
  const factory _CryptoWalletDTO(
      {required final String walletLabel,
      required final String address,
      required final String coin,
      required final String? network,
      required final String platform,
      required final String id,
      required final String trax,
      required final String type}) = _$_CryptoWalletDTO;
  const _CryptoWalletDTO._() : super._();

  factory _CryptoWalletDTO.fromJson(Map<String, dynamic> json) =
      _$_CryptoWalletDTO.fromJson;

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
  String get id;
  @override
  String get trax;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_CryptoWalletDTOCopyWith<_$_CryptoWalletDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
