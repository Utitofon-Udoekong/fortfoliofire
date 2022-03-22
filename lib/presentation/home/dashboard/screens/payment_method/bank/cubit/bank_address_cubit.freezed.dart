// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bank_address_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BankAddressStateTearOff {
  const _$BankAddressStateTearOff();

  _BankAddressState call(
      {required String userName,
      required String bankName,
      required String accountNumber,
      required bool isLoading,
      required String response}) {
    return _BankAddressState(
      userName: userName,
      bankName: bankName,
      accountNumber: accountNumber,
      isLoading: isLoading,
      response: response,
    );
  }
}

/// @nodoc
const $BankAddressState = _$BankAddressStateTearOff();

/// @nodoc
mixin _$BankAddressState {
  String get userName => throw _privateConstructorUsedError;
  String get bankName => throw _privateConstructorUsedError;
  String get accountNumber => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get response => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BankAddressStateCopyWith<BankAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankAddressStateCopyWith<$Res> {
  factory $BankAddressStateCopyWith(
          BankAddressState value, $Res Function(BankAddressState) then) =
      _$BankAddressStateCopyWithImpl<$Res>;
  $Res call(
      {String userName,
      String bankName,
      String accountNumber,
      bool isLoading,
      String response});
}

/// @nodoc
class _$BankAddressStateCopyWithImpl<$Res>
    implements $BankAddressStateCopyWith<$Res> {
  _$BankAddressStateCopyWithImpl(this._value, this._then);

  final BankAddressState _value;
  // ignore: unused_field
  final $Res Function(BankAddressState) _then;

  @override
  $Res call({
    Object? userName = freezed,
    Object? bankName = freezed,
    Object? accountNumber = freezed,
    Object? isLoading = freezed,
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: bankName == freezed
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BankAddressStateCopyWith<$Res>
    implements $BankAddressStateCopyWith<$Res> {
  factory _$BankAddressStateCopyWith(
          _BankAddressState value, $Res Function(_BankAddressState) then) =
      __$BankAddressStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userName,
      String bankName,
      String accountNumber,
      bool isLoading,
      String response});
}

/// @nodoc
class __$BankAddressStateCopyWithImpl<$Res>
    extends _$BankAddressStateCopyWithImpl<$Res>
    implements _$BankAddressStateCopyWith<$Res> {
  __$BankAddressStateCopyWithImpl(
      _BankAddressState _value, $Res Function(_BankAddressState) _then)
      : super(_value, (v) => _then(v as _BankAddressState));

  @override
  _BankAddressState get _value => super._value as _BankAddressState;

  @override
  $Res call({
    Object? userName = freezed,
    Object? bankName = freezed,
    Object? accountNumber = freezed,
    Object? isLoading = freezed,
    Object? response = freezed,
  }) {
    return _then(_BankAddressState(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: bankName == freezed
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BankAddressState extends _BankAddressState {
  const _$_BankAddressState(
      {required this.userName,
      required this.bankName,
      required this.accountNumber,
      required this.isLoading,
      required this.response})
      : super._();

  @override
  final String userName;
  @override
  final String bankName;
  @override
  final String accountNumber;
  @override
  final bool isLoading;
  @override
  final String response;

  @override
  String toString() {
    return 'BankAddressState(userName: $userName, bankName: $bankName, accountNumber: $accountNumber, isLoading: $isLoading, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BankAddressState &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.bankName, bankName) &&
            const DeepCollectionEquality()
                .equals(other.accountNumber, accountNumber) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(bankName),
      const DeepCollectionEquality().hash(accountNumber),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$BankAddressStateCopyWith<_BankAddressState> get copyWith =>
      __$BankAddressStateCopyWithImpl<_BankAddressState>(this, _$identity);
}

abstract class _BankAddressState extends BankAddressState {
  const factory _BankAddressState(
      {required String userName,
      required String bankName,
      required String accountNumber,
      required bool isLoading,
      required String response}) = _$_BankAddressState;
  const _BankAddressState._() : super._();

  @override
  String get userName;
  @override
  String get bankName;
  @override
  String get accountNumber;
  @override
  bool get isLoading;
  @override
  String get response;
  @override
  @JsonKey(ignore: true)
  _$BankAddressStateCopyWith<_BankAddressState> get copyWith =>
      throw _privateConstructorUsedError;
}
