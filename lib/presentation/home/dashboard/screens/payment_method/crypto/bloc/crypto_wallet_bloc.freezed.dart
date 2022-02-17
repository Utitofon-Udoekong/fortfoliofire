// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'crypto_wallet_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CryptoWalletEventTearOff {
  const _$CryptoWalletEventTearOff();

  _coinChanged coinChanged(String coin) {
    return _coinChanged(
      coin,
    );
  }

  _IsGeneralChanged isGeneralChanged(bool isGeneral) {
    return _IsGeneralChanged(
      isGeneral,
    );
  }

  _AddressChanged addressChanged(String address) {
    return _AddressChanged(
      address,
    );
  }

  _NetworkChanged networkChanged(String network) {
    return _NetworkChanged(
      network,
    );
  }

  _PlatformChanged platformChanged(String platform) {
    return _PlatformChanged(
      platform,
    );
  }

  _WalletLabelChanged walletLabelChanged(String walletLabel) {
    return _WalletLabelChanged(
      walletLabel,
    );
  }

  _AddWalletClicked addWalletClicked() {
    return const _AddWalletClicked();
  }
}

/// @nodoc
const $CryptoWalletEvent = _$CryptoWalletEventTearOff();

/// @nodoc
mixin _$CryptoWalletEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String coin) coinChanged,
    required TResult Function(bool isGeneral) isGeneralChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(String network) networkChanged,
    required TResult Function(String platform) platformChanged,
    required TResult Function(String walletLabel) walletLabelChanged,
    required TResult Function() addWalletClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String coin)? coinChanged,
    TResult Function(bool isGeneral)? isGeneralChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(String network)? networkChanged,
    TResult Function(String platform)? platformChanged,
    TResult Function(String walletLabel)? walletLabelChanged,
    TResult Function()? addWalletClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String coin)? coinChanged,
    TResult Function(bool isGeneral)? isGeneralChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(String network)? networkChanged,
    TResult Function(String platform)? platformChanged,
    TResult Function(String walletLabel)? walletLabelChanged,
    TResult Function()? addWalletClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_coinChanged value) coinChanged,
    required TResult Function(_IsGeneralChanged value) isGeneralChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_NetworkChanged value) networkChanged,
    required TResult Function(_PlatformChanged value) platformChanged,
    required TResult Function(_WalletLabelChanged value) walletLabelChanged,
    required TResult Function(_AddWalletClicked value) addWalletClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_coinChanged value)? coinChanged,
    TResult Function(_IsGeneralChanged value)? isGeneralChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_NetworkChanged value)? networkChanged,
    TResult Function(_PlatformChanged value)? platformChanged,
    TResult Function(_WalletLabelChanged value)? walletLabelChanged,
    TResult Function(_AddWalletClicked value)? addWalletClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_coinChanged value)? coinChanged,
    TResult Function(_IsGeneralChanged value)? isGeneralChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_NetworkChanged value)? networkChanged,
    TResult Function(_PlatformChanged value)? platformChanged,
    TResult Function(_WalletLabelChanged value)? walletLabelChanged,
    TResult Function(_AddWalletClicked value)? addWalletClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoWalletEventCopyWith<$Res> {
  factory $CryptoWalletEventCopyWith(
          CryptoWalletEvent value, $Res Function(CryptoWalletEvent) then) =
      _$CryptoWalletEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CryptoWalletEventCopyWithImpl<$Res>
    implements $CryptoWalletEventCopyWith<$Res> {
  _$CryptoWalletEventCopyWithImpl(this._value, this._then);

  final CryptoWalletEvent _value;
  // ignore: unused_field
  final $Res Function(CryptoWalletEvent) _then;
}

/// @nodoc
abstract class _$coinChangedCopyWith<$Res> {
  factory _$coinChangedCopyWith(
          _coinChanged value, $Res Function(_coinChanged) then) =
      __$coinChangedCopyWithImpl<$Res>;
  $Res call({String coin});
}

/// @nodoc
class __$coinChangedCopyWithImpl<$Res>
    extends _$CryptoWalletEventCopyWithImpl<$Res>
    implements _$coinChangedCopyWith<$Res> {
  __$coinChangedCopyWithImpl(
      _coinChanged _value, $Res Function(_coinChanged) _then)
      : super(_value, (v) => _then(v as _coinChanged));

  @override
  _coinChanged get _value => super._value as _coinChanged;

  @override
  $Res call({
    Object? coin = freezed,
  }) {
    return _then(_coinChanged(
      coin == freezed
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_coinChanged implements _coinChanged {
  const _$_coinChanged(this.coin);

  @override
  final String coin;

  @override
  String toString() {
    return 'CryptoWalletEvent.coinChanged(coin: $coin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _coinChanged &&
            const DeepCollectionEquality().equals(other.coin, coin));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(coin));

  @JsonKey(ignore: true)
  @override
  _$coinChangedCopyWith<_coinChanged> get copyWith =>
      __$coinChangedCopyWithImpl<_coinChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String coin) coinChanged,
    required TResult Function(bool isGeneral) isGeneralChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(String network) networkChanged,
    required TResult Function(String platform) platformChanged,
    required TResult Function(String walletLabel) walletLabelChanged,
    required TResult Function() addWalletClicked,
  }) {
    return coinChanged(coin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String coin)? coinChanged,
    TResult Function(bool isGeneral)? isGeneralChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(String network)? networkChanged,
    TResult Function(String platform)? platformChanged,
    TResult Function(String walletLabel)? walletLabelChanged,
    TResult Function()? addWalletClicked,
  }) {
    return coinChanged?.call(coin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String coin)? coinChanged,
    TResult Function(bool isGeneral)? isGeneralChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(String network)? networkChanged,
    TResult Function(String platform)? platformChanged,
    TResult Function(String walletLabel)? walletLabelChanged,
    TResult Function()? addWalletClicked,
    required TResult orElse(),
  }) {
    if (coinChanged != null) {
      return coinChanged(coin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_coinChanged value) coinChanged,
    required TResult Function(_IsGeneralChanged value) isGeneralChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_NetworkChanged value) networkChanged,
    required TResult Function(_PlatformChanged value) platformChanged,
    required TResult Function(_WalletLabelChanged value) walletLabelChanged,
    required TResult Function(_AddWalletClicked value) addWalletClicked,
  }) {
    return coinChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_coinChanged value)? coinChanged,
    TResult Function(_IsGeneralChanged value)? isGeneralChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_NetworkChanged value)? networkChanged,
    TResult Function(_PlatformChanged value)? platformChanged,
    TResult Function(_WalletLabelChanged value)? walletLabelChanged,
    TResult Function(_AddWalletClicked value)? addWalletClicked,
  }) {
    return coinChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_coinChanged value)? coinChanged,
    TResult Function(_IsGeneralChanged value)? isGeneralChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_NetworkChanged value)? networkChanged,
    TResult Function(_PlatformChanged value)? platformChanged,
    TResult Function(_WalletLabelChanged value)? walletLabelChanged,
    TResult Function(_AddWalletClicked value)? addWalletClicked,
    required TResult orElse(),
  }) {
    if (coinChanged != null) {
      return coinChanged(this);
    }
    return orElse();
  }
}

abstract class _coinChanged implements CryptoWalletEvent {
  const factory _coinChanged(String coin) = _$_coinChanged;

  String get coin;
  @JsonKey(ignore: true)
  _$coinChangedCopyWith<_coinChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$IsGeneralChangedCopyWith<$Res> {
  factory _$IsGeneralChangedCopyWith(
          _IsGeneralChanged value, $Res Function(_IsGeneralChanged) then) =
      __$IsGeneralChangedCopyWithImpl<$Res>;
  $Res call({bool isGeneral});
}

/// @nodoc
class __$IsGeneralChangedCopyWithImpl<$Res>
    extends _$CryptoWalletEventCopyWithImpl<$Res>
    implements _$IsGeneralChangedCopyWith<$Res> {
  __$IsGeneralChangedCopyWithImpl(
      _IsGeneralChanged _value, $Res Function(_IsGeneralChanged) _then)
      : super(_value, (v) => _then(v as _IsGeneralChanged));

  @override
  _IsGeneralChanged get _value => super._value as _IsGeneralChanged;

  @override
  $Res call({
    Object? isGeneral = freezed,
  }) {
    return _then(_IsGeneralChanged(
      isGeneral == freezed
          ? _value.isGeneral
          : isGeneral // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IsGeneralChanged implements _IsGeneralChanged {
  const _$_IsGeneralChanged(this.isGeneral);

  @override
  final bool isGeneral;

  @override
  String toString() {
    return 'CryptoWalletEvent.isGeneralChanged(isGeneral: $isGeneral)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IsGeneralChanged &&
            const DeepCollectionEquality().equals(other.isGeneral, isGeneral));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isGeneral));

  @JsonKey(ignore: true)
  @override
  _$IsGeneralChangedCopyWith<_IsGeneralChanged> get copyWith =>
      __$IsGeneralChangedCopyWithImpl<_IsGeneralChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String coin) coinChanged,
    required TResult Function(bool isGeneral) isGeneralChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(String network) networkChanged,
    required TResult Function(String platform) platformChanged,
    required TResult Function(String walletLabel) walletLabelChanged,
    required TResult Function() addWalletClicked,
  }) {
    return isGeneralChanged(isGeneral);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String coin)? coinChanged,
    TResult Function(bool isGeneral)? isGeneralChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(String network)? networkChanged,
    TResult Function(String platform)? platformChanged,
    TResult Function(String walletLabel)? walletLabelChanged,
    TResult Function()? addWalletClicked,
  }) {
    return isGeneralChanged?.call(isGeneral);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String coin)? coinChanged,
    TResult Function(bool isGeneral)? isGeneralChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(String network)? networkChanged,
    TResult Function(String platform)? platformChanged,
    TResult Function(String walletLabel)? walletLabelChanged,
    TResult Function()? addWalletClicked,
    required TResult orElse(),
  }) {
    if (isGeneralChanged != null) {
      return isGeneralChanged(isGeneral);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_coinChanged value) coinChanged,
    required TResult Function(_IsGeneralChanged value) isGeneralChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_NetworkChanged value) networkChanged,
    required TResult Function(_PlatformChanged value) platformChanged,
    required TResult Function(_WalletLabelChanged value) walletLabelChanged,
    required TResult Function(_AddWalletClicked value) addWalletClicked,
  }) {
    return isGeneralChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_coinChanged value)? coinChanged,
    TResult Function(_IsGeneralChanged value)? isGeneralChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_NetworkChanged value)? networkChanged,
    TResult Function(_PlatformChanged value)? platformChanged,
    TResult Function(_WalletLabelChanged value)? walletLabelChanged,
    TResult Function(_AddWalletClicked value)? addWalletClicked,
  }) {
    return isGeneralChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_coinChanged value)? coinChanged,
    TResult Function(_IsGeneralChanged value)? isGeneralChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_NetworkChanged value)? networkChanged,
    TResult Function(_PlatformChanged value)? platformChanged,
    TResult Function(_WalletLabelChanged value)? walletLabelChanged,
    TResult Function(_AddWalletClicked value)? addWalletClicked,
    required TResult orElse(),
  }) {
    if (isGeneralChanged != null) {
      return isGeneralChanged(this);
    }
    return orElse();
  }
}

abstract class _IsGeneralChanged implements CryptoWalletEvent {
  const factory _IsGeneralChanged(bool isGeneral) = _$_IsGeneralChanged;

  bool get isGeneral;
  @JsonKey(ignore: true)
  _$IsGeneralChangedCopyWith<_IsGeneralChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddressChangedCopyWith<$Res> {
  factory _$AddressChangedCopyWith(
          _AddressChanged value, $Res Function(_AddressChanged) then) =
      __$AddressChangedCopyWithImpl<$Res>;
  $Res call({String address});
}

/// @nodoc
class __$AddressChangedCopyWithImpl<$Res>
    extends _$CryptoWalletEventCopyWithImpl<$Res>
    implements _$AddressChangedCopyWith<$Res> {
  __$AddressChangedCopyWithImpl(
      _AddressChanged _value, $Res Function(_AddressChanged) _then)
      : super(_value, (v) => _then(v as _AddressChanged));

  @override
  _AddressChanged get _value => super._value as _AddressChanged;

  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_AddressChanged(
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddressChanged implements _AddressChanged {
  const _$_AddressChanged(this.address);

  @override
  final String address;

  @override
  String toString() {
    return 'CryptoWalletEvent.addressChanged(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddressChanged &&
            const DeepCollectionEquality().equals(other.address, address));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(address));

  @JsonKey(ignore: true)
  @override
  _$AddressChangedCopyWith<_AddressChanged> get copyWith =>
      __$AddressChangedCopyWithImpl<_AddressChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String coin) coinChanged,
    required TResult Function(bool isGeneral) isGeneralChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(String network) networkChanged,
    required TResult Function(String platform) platformChanged,
    required TResult Function(String walletLabel) walletLabelChanged,
    required TResult Function() addWalletClicked,
  }) {
    return addressChanged(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String coin)? coinChanged,
    TResult Function(bool isGeneral)? isGeneralChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(String network)? networkChanged,
    TResult Function(String platform)? platformChanged,
    TResult Function(String walletLabel)? walletLabelChanged,
    TResult Function()? addWalletClicked,
  }) {
    return addressChanged?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String coin)? coinChanged,
    TResult Function(bool isGeneral)? isGeneralChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(String network)? networkChanged,
    TResult Function(String platform)? platformChanged,
    TResult Function(String walletLabel)? walletLabelChanged,
    TResult Function()? addWalletClicked,
    required TResult orElse(),
  }) {
    if (addressChanged != null) {
      return addressChanged(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_coinChanged value) coinChanged,
    required TResult Function(_IsGeneralChanged value) isGeneralChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_NetworkChanged value) networkChanged,
    required TResult Function(_PlatformChanged value) platformChanged,
    required TResult Function(_WalletLabelChanged value) walletLabelChanged,
    required TResult Function(_AddWalletClicked value) addWalletClicked,
  }) {
    return addressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_coinChanged value)? coinChanged,
    TResult Function(_IsGeneralChanged value)? isGeneralChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_NetworkChanged value)? networkChanged,
    TResult Function(_PlatformChanged value)? platformChanged,
    TResult Function(_WalletLabelChanged value)? walletLabelChanged,
    TResult Function(_AddWalletClicked value)? addWalletClicked,
  }) {
    return addressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_coinChanged value)? coinChanged,
    TResult Function(_IsGeneralChanged value)? isGeneralChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_NetworkChanged value)? networkChanged,
    TResult Function(_PlatformChanged value)? platformChanged,
    TResult Function(_WalletLabelChanged value)? walletLabelChanged,
    TResult Function(_AddWalletClicked value)? addWalletClicked,
    required TResult orElse(),
  }) {
    if (addressChanged != null) {
      return addressChanged(this);
    }
    return orElse();
  }
}

abstract class _AddressChanged implements CryptoWalletEvent {
  const factory _AddressChanged(String address) = _$_AddressChanged;

  String get address;
  @JsonKey(ignore: true)
  _$AddressChangedCopyWith<_AddressChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NetworkChangedCopyWith<$Res> {
  factory _$NetworkChangedCopyWith(
          _NetworkChanged value, $Res Function(_NetworkChanged) then) =
      __$NetworkChangedCopyWithImpl<$Res>;
  $Res call({String network});
}

/// @nodoc
class __$NetworkChangedCopyWithImpl<$Res>
    extends _$CryptoWalletEventCopyWithImpl<$Res>
    implements _$NetworkChangedCopyWith<$Res> {
  __$NetworkChangedCopyWithImpl(
      _NetworkChanged _value, $Res Function(_NetworkChanged) _then)
      : super(_value, (v) => _then(v as _NetworkChanged));

  @override
  _NetworkChanged get _value => super._value as _NetworkChanged;

  @override
  $Res call({
    Object? network = freezed,
  }) {
    return _then(_NetworkChanged(
      network == freezed
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NetworkChanged implements _NetworkChanged {
  const _$_NetworkChanged(this.network);

  @override
  final String network;

  @override
  String toString() {
    return 'CryptoWalletEvent.networkChanged(network: $network)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkChanged &&
            const DeepCollectionEquality().equals(other.network, network));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(network));

  @JsonKey(ignore: true)
  @override
  _$NetworkChangedCopyWith<_NetworkChanged> get copyWith =>
      __$NetworkChangedCopyWithImpl<_NetworkChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String coin) coinChanged,
    required TResult Function(bool isGeneral) isGeneralChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(String network) networkChanged,
    required TResult Function(String platform) platformChanged,
    required TResult Function(String walletLabel) walletLabelChanged,
    required TResult Function() addWalletClicked,
  }) {
    return networkChanged(network);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String coin)? coinChanged,
    TResult Function(bool isGeneral)? isGeneralChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(String network)? networkChanged,
    TResult Function(String platform)? platformChanged,
    TResult Function(String walletLabel)? walletLabelChanged,
    TResult Function()? addWalletClicked,
  }) {
    return networkChanged?.call(network);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String coin)? coinChanged,
    TResult Function(bool isGeneral)? isGeneralChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(String network)? networkChanged,
    TResult Function(String platform)? platformChanged,
    TResult Function(String walletLabel)? walletLabelChanged,
    TResult Function()? addWalletClicked,
    required TResult orElse(),
  }) {
    if (networkChanged != null) {
      return networkChanged(network);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_coinChanged value) coinChanged,
    required TResult Function(_IsGeneralChanged value) isGeneralChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_NetworkChanged value) networkChanged,
    required TResult Function(_PlatformChanged value) platformChanged,
    required TResult Function(_WalletLabelChanged value) walletLabelChanged,
    required TResult Function(_AddWalletClicked value) addWalletClicked,
  }) {
    return networkChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_coinChanged value)? coinChanged,
    TResult Function(_IsGeneralChanged value)? isGeneralChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_NetworkChanged value)? networkChanged,
    TResult Function(_PlatformChanged value)? platformChanged,
    TResult Function(_WalletLabelChanged value)? walletLabelChanged,
    TResult Function(_AddWalletClicked value)? addWalletClicked,
  }) {
    return networkChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_coinChanged value)? coinChanged,
    TResult Function(_IsGeneralChanged value)? isGeneralChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_NetworkChanged value)? networkChanged,
    TResult Function(_PlatformChanged value)? platformChanged,
    TResult Function(_WalletLabelChanged value)? walletLabelChanged,
    TResult Function(_AddWalletClicked value)? addWalletClicked,
    required TResult orElse(),
  }) {
    if (networkChanged != null) {
      return networkChanged(this);
    }
    return orElse();
  }
}

abstract class _NetworkChanged implements CryptoWalletEvent {
  const factory _NetworkChanged(String network) = _$_NetworkChanged;

  String get network;
  @JsonKey(ignore: true)
  _$NetworkChangedCopyWith<_NetworkChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PlatformChangedCopyWith<$Res> {
  factory _$PlatformChangedCopyWith(
          _PlatformChanged value, $Res Function(_PlatformChanged) then) =
      __$PlatformChangedCopyWithImpl<$Res>;
  $Res call({String platform});
}

/// @nodoc
class __$PlatformChangedCopyWithImpl<$Res>
    extends _$CryptoWalletEventCopyWithImpl<$Res>
    implements _$PlatformChangedCopyWith<$Res> {
  __$PlatformChangedCopyWithImpl(
      _PlatformChanged _value, $Res Function(_PlatformChanged) _then)
      : super(_value, (v) => _then(v as _PlatformChanged));

  @override
  _PlatformChanged get _value => super._value as _PlatformChanged;

  @override
  $Res call({
    Object? platform = freezed,
  }) {
    return _then(_PlatformChanged(
      platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PlatformChanged implements _PlatformChanged {
  const _$_PlatformChanged(this.platform);

  @override
  final String platform;

  @override
  String toString() {
    return 'CryptoWalletEvent.platformChanged(platform: $platform)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlatformChanged &&
            const DeepCollectionEquality().equals(other.platform, platform));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(platform));

  @JsonKey(ignore: true)
  @override
  _$PlatformChangedCopyWith<_PlatformChanged> get copyWith =>
      __$PlatformChangedCopyWithImpl<_PlatformChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String coin) coinChanged,
    required TResult Function(bool isGeneral) isGeneralChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(String network) networkChanged,
    required TResult Function(String platform) platformChanged,
    required TResult Function(String walletLabel) walletLabelChanged,
    required TResult Function() addWalletClicked,
  }) {
    return platformChanged(platform);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String coin)? coinChanged,
    TResult Function(bool isGeneral)? isGeneralChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(String network)? networkChanged,
    TResult Function(String platform)? platformChanged,
    TResult Function(String walletLabel)? walletLabelChanged,
    TResult Function()? addWalletClicked,
  }) {
    return platformChanged?.call(platform);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String coin)? coinChanged,
    TResult Function(bool isGeneral)? isGeneralChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(String network)? networkChanged,
    TResult Function(String platform)? platformChanged,
    TResult Function(String walletLabel)? walletLabelChanged,
    TResult Function()? addWalletClicked,
    required TResult orElse(),
  }) {
    if (platformChanged != null) {
      return platformChanged(platform);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_coinChanged value) coinChanged,
    required TResult Function(_IsGeneralChanged value) isGeneralChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_NetworkChanged value) networkChanged,
    required TResult Function(_PlatformChanged value) platformChanged,
    required TResult Function(_WalletLabelChanged value) walletLabelChanged,
    required TResult Function(_AddWalletClicked value) addWalletClicked,
  }) {
    return platformChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_coinChanged value)? coinChanged,
    TResult Function(_IsGeneralChanged value)? isGeneralChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_NetworkChanged value)? networkChanged,
    TResult Function(_PlatformChanged value)? platformChanged,
    TResult Function(_WalletLabelChanged value)? walletLabelChanged,
    TResult Function(_AddWalletClicked value)? addWalletClicked,
  }) {
    return platformChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_coinChanged value)? coinChanged,
    TResult Function(_IsGeneralChanged value)? isGeneralChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_NetworkChanged value)? networkChanged,
    TResult Function(_PlatformChanged value)? platformChanged,
    TResult Function(_WalletLabelChanged value)? walletLabelChanged,
    TResult Function(_AddWalletClicked value)? addWalletClicked,
    required TResult orElse(),
  }) {
    if (platformChanged != null) {
      return platformChanged(this);
    }
    return orElse();
  }
}

abstract class _PlatformChanged implements CryptoWalletEvent {
  const factory _PlatformChanged(String platform) = _$_PlatformChanged;

  String get platform;
  @JsonKey(ignore: true)
  _$PlatformChangedCopyWith<_PlatformChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$WalletLabelChangedCopyWith<$Res> {
  factory _$WalletLabelChangedCopyWith(
          _WalletLabelChanged value, $Res Function(_WalletLabelChanged) then) =
      __$WalletLabelChangedCopyWithImpl<$Res>;
  $Res call({String walletLabel});
}

/// @nodoc
class __$WalletLabelChangedCopyWithImpl<$Res>
    extends _$CryptoWalletEventCopyWithImpl<$Res>
    implements _$WalletLabelChangedCopyWith<$Res> {
  __$WalletLabelChangedCopyWithImpl(
      _WalletLabelChanged _value, $Res Function(_WalletLabelChanged) _then)
      : super(_value, (v) => _then(v as _WalletLabelChanged));

  @override
  _WalletLabelChanged get _value => super._value as _WalletLabelChanged;

  @override
  $Res call({
    Object? walletLabel = freezed,
  }) {
    return _then(_WalletLabelChanged(
      walletLabel == freezed
          ? _value.walletLabel
          : walletLabel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WalletLabelChanged implements _WalletLabelChanged {
  const _$_WalletLabelChanged(this.walletLabel);

  @override
  final String walletLabel;

  @override
  String toString() {
    return 'CryptoWalletEvent.walletLabelChanged(walletLabel: $walletLabel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WalletLabelChanged &&
            const DeepCollectionEquality()
                .equals(other.walletLabel, walletLabel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(walletLabel));

  @JsonKey(ignore: true)
  @override
  _$WalletLabelChangedCopyWith<_WalletLabelChanged> get copyWith =>
      __$WalletLabelChangedCopyWithImpl<_WalletLabelChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String coin) coinChanged,
    required TResult Function(bool isGeneral) isGeneralChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(String network) networkChanged,
    required TResult Function(String platform) platformChanged,
    required TResult Function(String walletLabel) walletLabelChanged,
    required TResult Function() addWalletClicked,
  }) {
    return walletLabelChanged(walletLabel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String coin)? coinChanged,
    TResult Function(bool isGeneral)? isGeneralChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(String network)? networkChanged,
    TResult Function(String platform)? platformChanged,
    TResult Function(String walletLabel)? walletLabelChanged,
    TResult Function()? addWalletClicked,
  }) {
    return walletLabelChanged?.call(walletLabel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String coin)? coinChanged,
    TResult Function(bool isGeneral)? isGeneralChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(String network)? networkChanged,
    TResult Function(String platform)? platformChanged,
    TResult Function(String walletLabel)? walletLabelChanged,
    TResult Function()? addWalletClicked,
    required TResult orElse(),
  }) {
    if (walletLabelChanged != null) {
      return walletLabelChanged(walletLabel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_coinChanged value) coinChanged,
    required TResult Function(_IsGeneralChanged value) isGeneralChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_NetworkChanged value) networkChanged,
    required TResult Function(_PlatformChanged value) platformChanged,
    required TResult Function(_WalletLabelChanged value) walletLabelChanged,
    required TResult Function(_AddWalletClicked value) addWalletClicked,
  }) {
    return walletLabelChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_coinChanged value)? coinChanged,
    TResult Function(_IsGeneralChanged value)? isGeneralChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_NetworkChanged value)? networkChanged,
    TResult Function(_PlatformChanged value)? platformChanged,
    TResult Function(_WalletLabelChanged value)? walletLabelChanged,
    TResult Function(_AddWalletClicked value)? addWalletClicked,
  }) {
    return walletLabelChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_coinChanged value)? coinChanged,
    TResult Function(_IsGeneralChanged value)? isGeneralChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_NetworkChanged value)? networkChanged,
    TResult Function(_PlatformChanged value)? platformChanged,
    TResult Function(_WalletLabelChanged value)? walletLabelChanged,
    TResult Function(_AddWalletClicked value)? addWalletClicked,
    required TResult orElse(),
  }) {
    if (walletLabelChanged != null) {
      return walletLabelChanged(this);
    }
    return orElse();
  }
}

abstract class _WalletLabelChanged implements CryptoWalletEvent {
  const factory _WalletLabelChanged(String walletLabel) = _$_WalletLabelChanged;

  String get walletLabel;
  @JsonKey(ignore: true)
  _$WalletLabelChangedCopyWith<_WalletLabelChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddWalletClickedCopyWith<$Res> {
  factory _$AddWalletClickedCopyWith(
          _AddWalletClicked value, $Res Function(_AddWalletClicked) then) =
      __$AddWalletClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddWalletClickedCopyWithImpl<$Res>
    extends _$CryptoWalletEventCopyWithImpl<$Res>
    implements _$AddWalletClickedCopyWith<$Res> {
  __$AddWalletClickedCopyWithImpl(
      _AddWalletClicked _value, $Res Function(_AddWalletClicked) _then)
      : super(_value, (v) => _then(v as _AddWalletClicked));

  @override
  _AddWalletClicked get _value => super._value as _AddWalletClicked;
}

/// @nodoc

class _$_AddWalletClicked implements _AddWalletClicked {
  const _$_AddWalletClicked();

  @override
  String toString() {
    return 'CryptoWalletEvent.addWalletClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _AddWalletClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String coin) coinChanged,
    required TResult Function(bool isGeneral) isGeneralChanged,
    required TResult Function(String address) addressChanged,
    required TResult Function(String network) networkChanged,
    required TResult Function(String platform) platformChanged,
    required TResult Function(String walletLabel) walletLabelChanged,
    required TResult Function() addWalletClicked,
  }) {
    return addWalletClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String coin)? coinChanged,
    TResult Function(bool isGeneral)? isGeneralChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(String network)? networkChanged,
    TResult Function(String platform)? platformChanged,
    TResult Function(String walletLabel)? walletLabelChanged,
    TResult Function()? addWalletClicked,
  }) {
    return addWalletClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String coin)? coinChanged,
    TResult Function(bool isGeneral)? isGeneralChanged,
    TResult Function(String address)? addressChanged,
    TResult Function(String network)? networkChanged,
    TResult Function(String platform)? platformChanged,
    TResult Function(String walletLabel)? walletLabelChanged,
    TResult Function()? addWalletClicked,
    required TResult orElse(),
  }) {
    if (addWalletClicked != null) {
      return addWalletClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_coinChanged value) coinChanged,
    required TResult Function(_IsGeneralChanged value) isGeneralChanged,
    required TResult Function(_AddressChanged value) addressChanged,
    required TResult Function(_NetworkChanged value) networkChanged,
    required TResult Function(_PlatformChanged value) platformChanged,
    required TResult Function(_WalletLabelChanged value) walletLabelChanged,
    required TResult Function(_AddWalletClicked value) addWalletClicked,
  }) {
    return addWalletClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_coinChanged value)? coinChanged,
    TResult Function(_IsGeneralChanged value)? isGeneralChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_NetworkChanged value)? networkChanged,
    TResult Function(_PlatformChanged value)? platformChanged,
    TResult Function(_WalletLabelChanged value)? walletLabelChanged,
    TResult Function(_AddWalletClicked value)? addWalletClicked,
  }) {
    return addWalletClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_coinChanged value)? coinChanged,
    TResult Function(_IsGeneralChanged value)? isGeneralChanged,
    TResult Function(_AddressChanged value)? addressChanged,
    TResult Function(_NetworkChanged value)? networkChanged,
    TResult Function(_PlatformChanged value)? platformChanged,
    TResult Function(_WalletLabelChanged value)? walletLabelChanged,
    TResult Function(_AddWalletClicked value)? addWalletClicked,
    required TResult orElse(),
  }) {
    if (addWalletClicked != null) {
      return addWalletClicked(this);
    }
    return orElse();
  }
}

abstract class _AddWalletClicked implements CryptoWalletEvent {
  const factory _AddWalletClicked() = _$_AddWalletClicked;
}

/// @nodoc
class _$CryptoWalletStateTearOff {
  const _$CryptoWalletStateTearOff();

  _CryptoWalletState call(
      {required String walletLabel,
      required String coin,
      required String network,
      required String address,
      required String platform,
      required String response,
      required bool isGeneral,
      required bool isloading}) {
    return _CryptoWalletState(
      walletLabel: walletLabel,
      coin: coin,
      network: network,
      address: address,
      platform: platform,
      response: response,
      isGeneral: isGeneral,
      isloading: isloading,
    );
  }
}

/// @nodoc
const $CryptoWalletState = _$CryptoWalletStateTearOff();

/// @nodoc
mixin _$CryptoWalletState {
  String get walletLabel => throw _privateConstructorUsedError;
  String get coin => throw _privateConstructorUsedError;
  String get network => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;
  String get response => throw _privateConstructorUsedError;
  bool get isGeneral => throw _privateConstructorUsedError;
  bool get isloading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CryptoWalletStateCopyWith<CryptoWalletState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoWalletStateCopyWith<$Res> {
  factory $CryptoWalletStateCopyWith(
          CryptoWalletState value, $Res Function(CryptoWalletState) then) =
      _$CryptoWalletStateCopyWithImpl<$Res>;
  $Res call(
      {String walletLabel,
      String coin,
      String network,
      String address,
      String platform,
      String response,
      bool isGeneral,
      bool isloading});
}

/// @nodoc
class _$CryptoWalletStateCopyWithImpl<$Res>
    implements $CryptoWalletStateCopyWith<$Res> {
  _$CryptoWalletStateCopyWithImpl(this._value, this._then);

  final CryptoWalletState _value;
  // ignore: unused_field
  final $Res Function(CryptoWalletState) _then;

  @override
  $Res call({
    Object? walletLabel = freezed,
    Object? coin = freezed,
    Object? network = freezed,
    Object? address = freezed,
    Object? platform = freezed,
    Object? response = freezed,
    Object? isGeneral = freezed,
    Object? isloading = freezed,
  }) {
    return _then(_value.copyWith(
      walletLabel: walletLabel == freezed
          ? _value.walletLabel
          : walletLabel // ignore: cast_nullable_to_non_nullable
              as String,
      coin: coin == freezed
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String,
      network: network == freezed
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      platform: platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      isGeneral: isGeneral == freezed
          ? _value.isGeneral
          : isGeneral // ignore: cast_nullable_to_non_nullable
              as bool,
      isloading: isloading == freezed
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$CryptoWalletStateCopyWith<$Res>
    implements $CryptoWalletStateCopyWith<$Res> {
  factory _$CryptoWalletStateCopyWith(
          _CryptoWalletState value, $Res Function(_CryptoWalletState) then) =
      __$CryptoWalletStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String walletLabel,
      String coin,
      String network,
      String address,
      String platform,
      String response,
      bool isGeneral,
      bool isloading});
}

/// @nodoc
class __$CryptoWalletStateCopyWithImpl<$Res>
    extends _$CryptoWalletStateCopyWithImpl<$Res>
    implements _$CryptoWalletStateCopyWith<$Res> {
  __$CryptoWalletStateCopyWithImpl(
      _CryptoWalletState _value, $Res Function(_CryptoWalletState) _then)
      : super(_value, (v) => _then(v as _CryptoWalletState));

  @override
  _CryptoWalletState get _value => super._value as _CryptoWalletState;

  @override
  $Res call({
    Object? walletLabel = freezed,
    Object? coin = freezed,
    Object? network = freezed,
    Object? address = freezed,
    Object? platform = freezed,
    Object? response = freezed,
    Object? isGeneral = freezed,
    Object? isloading = freezed,
  }) {
    return _then(_CryptoWalletState(
      walletLabel: walletLabel == freezed
          ? _value.walletLabel
          : walletLabel // ignore: cast_nullable_to_non_nullable
              as String,
      coin: coin == freezed
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String,
      network: network == freezed
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      platform: platform == freezed
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      isGeneral: isGeneral == freezed
          ? _value.isGeneral
          : isGeneral // ignore: cast_nullable_to_non_nullable
              as bool,
      isloading: isloading == freezed
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CryptoWalletState extends _CryptoWalletState {
  const _$_CryptoWalletState(
      {required this.walletLabel,
      required this.coin,
      required this.network,
      required this.address,
      required this.platform,
      required this.response,
      required this.isGeneral,
      required this.isloading})
      : super._();

  @override
  final String walletLabel;
  @override
  final String coin;
  @override
  final String network;
  @override
  final String address;
  @override
  final String platform;
  @override
  final String response;
  @override
  final bool isGeneral;
  @override
  final bool isloading;

  @override
  String toString() {
    return 'CryptoWalletState(walletLabel: $walletLabel, coin: $coin, network: $network, address: $address, platform: $platform, response: $response, isGeneral: $isGeneral, isloading: $isloading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CryptoWalletState &&
            const DeepCollectionEquality()
                .equals(other.walletLabel, walletLabel) &&
            const DeepCollectionEquality().equals(other.coin, coin) &&
            const DeepCollectionEquality().equals(other.network, network) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.platform, platform) &&
            const DeepCollectionEquality().equals(other.response, response) &&
            const DeepCollectionEquality().equals(other.isGeneral, isGeneral) &&
            const DeepCollectionEquality().equals(other.isloading, isloading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(walletLabel),
      const DeepCollectionEquality().hash(coin),
      const DeepCollectionEquality().hash(network),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(platform),
      const DeepCollectionEquality().hash(response),
      const DeepCollectionEquality().hash(isGeneral),
      const DeepCollectionEquality().hash(isloading));

  @JsonKey(ignore: true)
  @override
  _$CryptoWalletStateCopyWith<_CryptoWalletState> get copyWith =>
      __$CryptoWalletStateCopyWithImpl<_CryptoWalletState>(this, _$identity);
}

abstract class _CryptoWalletState extends CryptoWalletState {
  const factory _CryptoWalletState(
      {required String walletLabel,
      required String coin,
      required String network,
      required String address,
      required String platform,
      required String response,
      required bool isGeneral,
      required bool isloading}) = _$_CryptoWalletState;
  const _CryptoWalletState._() : super._();

  @override
  String get walletLabel;
  @override
  String get coin;
  @override
  String get network;
  @override
  String get address;
  @override
  String get platform;
  @override
  String get response;
  @override
  bool get isGeneral;
  @override
  bool get isloading;
  @override
  @JsonKey(ignore: true)
  _$CryptoWalletStateCopyWith<_CryptoWalletState> get copyWith =>
      throw _privateConstructorUsedError;
}
