// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'crypto_wallet_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CryptoWalletStateTearOff {
  const _$CryptoWalletStateTearOff();

  _CryptoWalletState call(
      {required String walletLabel,
      required String coin,
      required String network,
      required String address,
      required String platform,
      required String failure,
      required String success,
      required bool isGeneral,
      required bool isloading,
      required int? selectedNetwork,
      required List<DropdownMenuItem<String>> dropdownItems,
      required List<CryptoWallet> cryptoAddresses,
      required List<CryptoWallet> generalCryptoAddresses}) {
    return _CryptoWalletState(
      walletLabel: walletLabel,
      coin: coin,
      network: network,
      address: address,
      platform: platform,
      failure: failure,
      success: success,
      isGeneral: isGeneral,
      isloading: isloading,
      selectedNetwork: selectedNetwork,
      dropdownItems: dropdownItems,
      cryptoAddresses: cryptoAddresses,
      generalCryptoAddresses: generalCryptoAddresses,
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
  String get failure => throw _privateConstructorUsedError;
  String get success => throw _privateConstructorUsedError;
  bool get isGeneral => throw _privateConstructorUsedError;
  bool get isloading => throw _privateConstructorUsedError;
  int? get selectedNetwork => throw _privateConstructorUsedError;
  List<DropdownMenuItem<String>> get dropdownItems =>
      throw _privateConstructorUsedError;
  List<CryptoWallet> get cryptoAddresses => throw _privateConstructorUsedError;
  List<CryptoWallet> get generalCryptoAddresses =>
      throw _privateConstructorUsedError;

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
      String failure,
      String success,
      bool isGeneral,
      bool isloading,
      int? selectedNetwork,
      List<DropdownMenuItem<String>> dropdownItems,
      List<CryptoWallet> cryptoAddresses,
      List<CryptoWallet> generalCryptoAddresses});
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
    Object? failure = freezed,
    Object? success = freezed,
    Object? isGeneral = freezed,
    Object? isloading = freezed,
    Object? selectedNetwork = freezed,
    Object? dropdownItems = freezed,
    Object? cryptoAddresses = freezed,
    Object? generalCryptoAddresses = freezed,
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
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      isGeneral: isGeneral == freezed
          ? _value.isGeneral
          : isGeneral // ignore: cast_nullable_to_non_nullable
              as bool,
      isloading: isloading == freezed
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedNetwork: selectedNetwork == freezed
          ? _value.selectedNetwork
          : selectedNetwork // ignore: cast_nullable_to_non_nullable
              as int?,
      dropdownItems: dropdownItems == freezed
          ? _value.dropdownItems
          : dropdownItems // ignore: cast_nullable_to_non_nullable
              as List<DropdownMenuItem<String>>,
      cryptoAddresses: cryptoAddresses == freezed
          ? _value.cryptoAddresses
          : cryptoAddresses // ignore: cast_nullable_to_non_nullable
              as List<CryptoWallet>,
      generalCryptoAddresses: generalCryptoAddresses == freezed
          ? _value.generalCryptoAddresses
          : generalCryptoAddresses // ignore: cast_nullable_to_non_nullable
              as List<CryptoWallet>,
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
      String failure,
      String success,
      bool isGeneral,
      bool isloading,
      int? selectedNetwork,
      List<DropdownMenuItem<String>> dropdownItems,
      List<CryptoWallet> cryptoAddresses,
      List<CryptoWallet> generalCryptoAddresses});
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
    Object? failure = freezed,
    Object? success = freezed,
    Object? isGeneral = freezed,
    Object? isloading = freezed,
    Object? selectedNetwork = freezed,
    Object? dropdownItems = freezed,
    Object? cryptoAddresses = freezed,
    Object? generalCryptoAddresses = freezed,
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
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      isGeneral: isGeneral == freezed
          ? _value.isGeneral
          : isGeneral // ignore: cast_nullable_to_non_nullable
              as bool,
      isloading: isloading == freezed
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedNetwork: selectedNetwork == freezed
          ? _value.selectedNetwork
          : selectedNetwork // ignore: cast_nullable_to_non_nullable
              as int?,
      dropdownItems: dropdownItems == freezed
          ? _value.dropdownItems
          : dropdownItems // ignore: cast_nullable_to_non_nullable
              as List<DropdownMenuItem<String>>,
      cryptoAddresses: cryptoAddresses == freezed
          ? _value.cryptoAddresses
          : cryptoAddresses // ignore: cast_nullable_to_non_nullable
              as List<CryptoWallet>,
      generalCryptoAddresses: generalCryptoAddresses == freezed
          ? _value.generalCryptoAddresses
          : generalCryptoAddresses // ignore: cast_nullable_to_non_nullable
              as List<CryptoWallet>,
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
      required this.failure,
      required this.success,
      required this.isGeneral,
      required this.isloading,
      required this.selectedNetwork,
      required this.dropdownItems,
      required this.cryptoAddresses,
      required this.generalCryptoAddresses})
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
  final String failure;
  @override
  final String success;
  @override
  final bool isGeneral;
  @override
  final bool isloading;
  @override
  final int? selectedNetwork;
  @override
  final List<DropdownMenuItem<String>> dropdownItems;
  @override
  final List<CryptoWallet> cryptoAddresses;
  @override
  final List<CryptoWallet> generalCryptoAddresses;

  @override
  String toString() {
    return 'CryptoWalletState(walletLabel: $walletLabel, coin: $coin, network: $network, address: $address, platform: $platform, failure: $failure, success: $success, isGeneral: $isGeneral, isloading: $isloading, selectedNetwork: $selectedNetwork, dropdownItems: $dropdownItems, cryptoAddresses: $cryptoAddresses, generalCryptoAddresses: $generalCryptoAddresses)';
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
            const DeepCollectionEquality().equals(other.failure, failure) &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.isGeneral, isGeneral) &&
            const DeepCollectionEquality().equals(other.isloading, isloading) &&
            const DeepCollectionEquality()
                .equals(other.selectedNetwork, selectedNetwork) &&
            const DeepCollectionEquality()
                .equals(other.dropdownItems, dropdownItems) &&
            const DeepCollectionEquality()
                .equals(other.cryptoAddresses, cryptoAddresses) &&
            const DeepCollectionEquality()
                .equals(other.generalCryptoAddresses, generalCryptoAddresses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(walletLabel),
      const DeepCollectionEquality().hash(coin),
      const DeepCollectionEquality().hash(network),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(platform),
      const DeepCollectionEquality().hash(failure),
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(isGeneral),
      const DeepCollectionEquality().hash(isloading),
      const DeepCollectionEquality().hash(selectedNetwork),
      const DeepCollectionEquality().hash(dropdownItems),
      const DeepCollectionEquality().hash(cryptoAddresses),
      const DeepCollectionEquality().hash(generalCryptoAddresses));

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
          required String failure,
          required String success,
          required bool isGeneral,
          required bool isloading,
          required int? selectedNetwork,
          required List<DropdownMenuItem<String>> dropdownItems,
          required List<CryptoWallet> cryptoAddresses,
          required List<CryptoWallet> generalCryptoAddresses}) =
      _$_CryptoWalletState;
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
  String get failure;
  @override
  String get success;
  @override
  bool get isGeneral;
  @override
  bool get isloading;
  @override
  int? get selectedNetwork;
  @override
  List<DropdownMenuItem<String>> get dropdownItems;
  @override
  List<CryptoWallet> get cryptoAddresses;
  @override
  List<CryptoWallet> get generalCryptoAddresses;
  @override
  @JsonKey(ignore: true)
  _$CryptoWalletStateCopyWith<_CryptoWalletState> get copyWith =>
      throw _privateConstructorUsedError;
}
