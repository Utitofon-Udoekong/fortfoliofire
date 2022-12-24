// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PaymentMethodState {
  String get bankName => throw _privateConstructorUsedError;
  String get accountNumber => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get failure => throw _privateConstructorUsedError;
  String get success => throw _privateConstructorUsedError;
  String get walletLabel => throw _privateConstructorUsedError;
  String get coin => throw _privateConstructorUsedError;
  String get network => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;
  String get accountType => throw _privateConstructorUsedError;
  bool get isGeneral => throw _privateConstructorUsedError;
  bool get isloading => throw _privateConstructorUsedError;
  int? get selectedNetwork => throw _privateConstructorUsedError;
  List<DropdownMenuItem<String>> get dropdownItems =>
      throw _privateConstructorUsedError;
  List<CryptoWallet> get cryptoAddresses => throw _privateConstructorUsedError;
  List<CryptoWallet> get generalCryptoAddresses =>
      throw _privateConstructorUsedError;
  List<BankAddress> get bankAddresses => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentMethodStateCopyWith<PaymentMethodState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodStateCopyWith<$Res> {
  factory $PaymentMethodStateCopyWith(
          PaymentMethodState value, $Res Function(PaymentMethodState) then) =
      _$PaymentMethodStateCopyWithImpl<$Res, PaymentMethodState>;
  @useResult
  $Res call(
      {String bankName,
      String accountNumber,
      bool isLoading,
      String failure,
      String success,
      String walletLabel,
      String coin,
      String network,
      String address,
      String platform,
      String accountType,
      bool isGeneral,
      bool isloading,
      int? selectedNetwork,
      List<DropdownMenuItem<String>> dropdownItems,
      List<CryptoWallet> cryptoAddresses,
      List<CryptoWallet> generalCryptoAddresses,
      List<BankAddress> bankAddresses});
}

/// @nodoc
class _$PaymentMethodStateCopyWithImpl<$Res, $Val extends PaymentMethodState>
    implements $PaymentMethodStateCopyWith<$Res> {
  _$PaymentMethodStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankName = null,
    Object? accountNumber = null,
    Object? isLoading = null,
    Object? failure = null,
    Object? success = null,
    Object? walletLabel = null,
    Object? coin = null,
    Object? network = null,
    Object? address = null,
    Object? platform = null,
    Object? accountType = null,
    Object? isGeneral = null,
    Object? isloading = null,
    Object? selectedNetwork = freezed,
    Object? dropdownItems = null,
    Object? cryptoAddresses = null,
    Object? generalCryptoAddresses = null,
    Object? bankAddresses = null,
  }) {
    return _then(_value.copyWith(
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      walletLabel: null == walletLabel
          ? _value.walletLabel
          : walletLabel // ignore: cast_nullable_to_non_nullable
              as String,
      coin: null == coin
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String,
      isGeneral: null == isGeneral
          ? _value.isGeneral
          : isGeneral // ignore: cast_nullable_to_non_nullable
              as bool,
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedNetwork: freezed == selectedNetwork
          ? _value.selectedNetwork
          : selectedNetwork // ignore: cast_nullable_to_non_nullable
              as int?,
      dropdownItems: null == dropdownItems
          ? _value.dropdownItems
          : dropdownItems // ignore: cast_nullable_to_non_nullable
              as List<DropdownMenuItem<String>>,
      cryptoAddresses: null == cryptoAddresses
          ? _value.cryptoAddresses
          : cryptoAddresses // ignore: cast_nullable_to_non_nullable
              as List<CryptoWallet>,
      generalCryptoAddresses: null == generalCryptoAddresses
          ? _value.generalCryptoAddresses
          : generalCryptoAddresses // ignore: cast_nullable_to_non_nullable
              as List<CryptoWallet>,
      bankAddresses: null == bankAddresses
          ? _value.bankAddresses
          : bankAddresses // ignore: cast_nullable_to_non_nullable
              as List<BankAddress>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentMethodStateCopyWith<$Res>
    implements $PaymentMethodStateCopyWith<$Res> {
  factory _$$_PaymentMethodStateCopyWith(_$_PaymentMethodState value,
          $Res Function(_$_PaymentMethodState) then) =
      __$$_PaymentMethodStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String bankName,
      String accountNumber,
      bool isLoading,
      String failure,
      String success,
      String walletLabel,
      String coin,
      String network,
      String address,
      String platform,
      String accountType,
      bool isGeneral,
      bool isloading,
      int? selectedNetwork,
      List<DropdownMenuItem<String>> dropdownItems,
      List<CryptoWallet> cryptoAddresses,
      List<CryptoWallet> generalCryptoAddresses,
      List<BankAddress> bankAddresses});
}

/// @nodoc
class __$$_PaymentMethodStateCopyWithImpl<$Res>
    extends _$PaymentMethodStateCopyWithImpl<$Res, _$_PaymentMethodState>
    implements _$$_PaymentMethodStateCopyWith<$Res> {
  __$$_PaymentMethodStateCopyWithImpl(
      _$_PaymentMethodState _value, $Res Function(_$_PaymentMethodState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankName = null,
    Object? accountNumber = null,
    Object? isLoading = null,
    Object? failure = null,
    Object? success = null,
    Object? walletLabel = null,
    Object? coin = null,
    Object? network = null,
    Object? address = null,
    Object? platform = null,
    Object? accountType = null,
    Object? isGeneral = null,
    Object? isloading = null,
    Object? selectedNetwork = freezed,
    Object? dropdownItems = null,
    Object? cryptoAddresses = null,
    Object? generalCryptoAddresses = null,
    Object? bankAddresses = null,
  }) {
    return _then(_$_PaymentMethodState(
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      walletLabel: null == walletLabel
          ? _value.walletLabel
          : walletLabel // ignore: cast_nullable_to_non_nullable
              as String,
      coin: null == coin
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String,
      isGeneral: null == isGeneral
          ? _value.isGeneral
          : isGeneral // ignore: cast_nullable_to_non_nullable
              as bool,
      isloading: null == isloading
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedNetwork: freezed == selectedNetwork
          ? _value.selectedNetwork
          : selectedNetwork // ignore: cast_nullable_to_non_nullable
              as int?,
      dropdownItems: null == dropdownItems
          ? _value._dropdownItems
          : dropdownItems // ignore: cast_nullable_to_non_nullable
              as List<DropdownMenuItem<String>>,
      cryptoAddresses: null == cryptoAddresses
          ? _value._cryptoAddresses
          : cryptoAddresses // ignore: cast_nullable_to_non_nullable
              as List<CryptoWallet>,
      generalCryptoAddresses: null == generalCryptoAddresses
          ? _value._generalCryptoAddresses
          : generalCryptoAddresses // ignore: cast_nullable_to_non_nullable
              as List<CryptoWallet>,
      bankAddresses: null == bankAddresses
          ? _value._bankAddresses
          : bankAddresses // ignore: cast_nullable_to_non_nullable
              as List<BankAddress>,
    ));
  }
}

/// @nodoc

class _$_PaymentMethodState extends _PaymentMethodState {
  const _$_PaymentMethodState(
      {required this.bankName,
      required this.accountNumber,
      required this.isLoading,
      required this.failure,
      required this.success,
      required this.walletLabel,
      required this.coin,
      required this.network,
      required this.address,
      required this.platform,
      required this.accountType,
      required this.isGeneral,
      required this.isloading,
      required this.selectedNetwork,
      required final List<DropdownMenuItem<String>> dropdownItems,
      required final List<CryptoWallet> cryptoAddresses,
      required final List<CryptoWallet> generalCryptoAddresses,
      required final List<BankAddress> bankAddresses})
      : _dropdownItems = dropdownItems,
        _cryptoAddresses = cryptoAddresses,
        _generalCryptoAddresses = generalCryptoAddresses,
        _bankAddresses = bankAddresses,
        super._();

  @override
  final String bankName;
  @override
  final String accountNumber;
  @override
  final bool isLoading;
  @override
  final String failure;
  @override
  final String success;
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
  final String accountType;
  @override
  final bool isGeneral;
  @override
  final bool isloading;
  @override
  final int? selectedNetwork;
  final List<DropdownMenuItem<String>> _dropdownItems;
  @override
  List<DropdownMenuItem<String>> get dropdownItems {
    if (_dropdownItems is EqualUnmodifiableListView) return _dropdownItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dropdownItems);
  }

  final List<CryptoWallet> _cryptoAddresses;
  @override
  List<CryptoWallet> get cryptoAddresses {
    if (_cryptoAddresses is EqualUnmodifiableListView) return _cryptoAddresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cryptoAddresses);
  }

  final List<CryptoWallet> _generalCryptoAddresses;
  @override
  List<CryptoWallet> get generalCryptoAddresses {
    if (_generalCryptoAddresses is EqualUnmodifiableListView)
      return _generalCryptoAddresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_generalCryptoAddresses);
  }

  final List<BankAddress> _bankAddresses;
  @override
  List<BankAddress> get bankAddresses {
    if (_bankAddresses is EqualUnmodifiableListView) return _bankAddresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bankAddresses);
  }

  @override
  String toString() {
    return 'PaymentMethodState(bankName: $bankName, accountNumber: $accountNumber, isLoading: $isLoading, failure: $failure, success: $success, walletLabel: $walletLabel, coin: $coin, network: $network, address: $address, platform: $platform, accountType: $accountType, isGeneral: $isGeneral, isloading: $isloading, selectedNetwork: $selectedNetwork, dropdownItems: $dropdownItems, cryptoAddresses: $cryptoAddresses, generalCryptoAddresses: $generalCryptoAddresses, bankAddresses: $bankAddresses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentMethodState &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.walletLabel, walletLabel) ||
                other.walletLabel == walletLabel) &&
            (identical(other.coin, coin) || other.coin == coin) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType) &&
            (identical(other.isGeneral, isGeneral) ||
                other.isGeneral == isGeneral) &&
            (identical(other.isloading, isloading) ||
                other.isloading == isloading) &&
            (identical(other.selectedNetwork, selectedNetwork) ||
                other.selectedNetwork == selectedNetwork) &&
            const DeepCollectionEquality()
                .equals(other._dropdownItems, _dropdownItems) &&
            const DeepCollectionEquality()
                .equals(other._cryptoAddresses, _cryptoAddresses) &&
            const DeepCollectionEquality().equals(
                other._generalCryptoAddresses, _generalCryptoAddresses) &&
            const DeepCollectionEquality()
                .equals(other._bankAddresses, _bankAddresses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      bankName,
      accountNumber,
      isLoading,
      failure,
      success,
      walletLabel,
      coin,
      network,
      address,
      platform,
      accountType,
      isGeneral,
      isloading,
      selectedNetwork,
      const DeepCollectionEquality().hash(_dropdownItems),
      const DeepCollectionEquality().hash(_cryptoAddresses),
      const DeepCollectionEquality().hash(_generalCryptoAddresses),
      const DeepCollectionEquality().hash(_bankAddresses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentMethodStateCopyWith<_$_PaymentMethodState> get copyWith =>
      __$$_PaymentMethodStateCopyWithImpl<_$_PaymentMethodState>(
          this, _$identity);
}

abstract class _PaymentMethodState extends PaymentMethodState {
  const factory _PaymentMethodState(
      {required final String bankName,
      required final String accountNumber,
      required final bool isLoading,
      required final String failure,
      required final String success,
      required final String walletLabel,
      required final String coin,
      required final String network,
      required final String address,
      required final String platform,
      required final String accountType,
      required final bool isGeneral,
      required final bool isloading,
      required final int? selectedNetwork,
      required final List<DropdownMenuItem<String>> dropdownItems,
      required final List<CryptoWallet> cryptoAddresses,
      required final List<CryptoWallet> generalCryptoAddresses,
      required final List<BankAddress> bankAddresses}) = _$_PaymentMethodState;
  const _PaymentMethodState._() : super._();

  @override
  String get bankName;
  @override
  String get accountNumber;
  @override
  bool get isLoading;
  @override
  String get failure;
  @override
  String get success;
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
  String get accountType;
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
  List<BankAddress> get bankAddresses;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentMethodStateCopyWith<_$_PaymentMethodState> get copyWith =>
      throw _privateConstructorUsedError;
}
