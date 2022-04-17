// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bank_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BankAddressTearOff {
  const _$BankAddressTearOff();

  _BankAddress call(
      {required String bankName,
      required String accountNumber,
      required String userName,
      required String id,
      required String trax,
      required String type}) {
    return _BankAddress(
      bankName: bankName,
      accountNumber: accountNumber,
      userName: userName,
      id: id,
      trax: trax,
      type: type,
    );
  }
}

/// @nodoc
const $BankAddress = _$BankAddressTearOff();

/// @nodoc
mixin _$BankAddress {
  String get bankName => throw _privateConstructorUsedError;
  String get accountNumber => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get trax => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BankAddressCopyWith<BankAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankAddressCopyWith<$Res> {
  factory $BankAddressCopyWith(
          BankAddress value, $Res Function(BankAddress) then) =
      _$BankAddressCopyWithImpl<$Res>;
  $Res call(
      {String bankName,
      String accountNumber,
      String userName,
      String id,
      String trax,
      String type});
}

/// @nodoc
class _$BankAddressCopyWithImpl<$Res> implements $BankAddressCopyWith<$Res> {
  _$BankAddressCopyWithImpl(this._value, this._then);

  final BankAddress _value;
  // ignore: unused_field
  final $Res Function(BankAddress) _then;

  @override
  $Res call({
    Object? bankName = freezed,
    Object? accountNumber = freezed,
    Object? userName = freezed,
    Object? id = freezed,
    Object? trax = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      bankName: bankName == freezed
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      trax: trax == freezed
          ? _value.trax
          : trax // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BankAddressCopyWith<$Res>
    implements $BankAddressCopyWith<$Res> {
  factory _$BankAddressCopyWith(
          _BankAddress value, $Res Function(_BankAddress) then) =
      __$BankAddressCopyWithImpl<$Res>;
  @override
  $Res call(
      {String bankName,
      String accountNumber,
      String userName,
      String id,
      String trax,
      String type});
}

/// @nodoc
class __$BankAddressCopyWithImpl<$Res> extends _$BankAddressCopyWithImpl<$Res>
    implements _$BankAddressCopyWith<$Res> {
  __$BankAddressCopyWithImpl(
      _BankAddress _value, $Res Function(_BankAddress) _then)
      : super(_value, (v) => _then(v as _BankAddress));

  @override
  _BankAddress get _value => super._value as _BankAddress;

  @override
  $Res call({
    Object? bankName = freezed,
    Object? accountNumber = freezed,
    Object? userName = freezed,
    Object? id = freezed,
    Object? trax = freezed,
    Object? type = freezed,
  }) {
    return _then(_BankAddress(
      bankName: bankName == freezed
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      trax: trax == freezed
          ? _value.trax
          : trax // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BankAddress extends _BankAddress {
  const _$_BankAddress(
      {required this.bankName,
      required this.accountNumber,
      required this.userName,
      required this.id,
      required this.trax,
      required this.type})
      : super._();

  @override
  final String bankName;
  @override
  final String accountNumber;
  @override
  final String userName;
  @override
  final String id;
  @override
  final String trax;
  @override
  final String type;

  @override
  String toString() {
    return 'BankAddress(bankName: $bankName, accountNumber: $accountNumber, userName: $userName, id: $id, trax: $trax, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BankAddress &&
            const DeepCollectionEquality().equals(other.bankName, bankName) &&
            const DeepCollectionEquality()
                .equals(other.accountNumber, accountNumber) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.trax, trax) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bankName),
      const DeepCollectionEquality().hash(accountNumber),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(trax),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$BankAddressCopyWith<_BankAddress> get copyWith =>
      __$BankAddressCopyWithImpl<_BankAddress>(this, _$identity);
}

abstract class _BankAddress extends BankAddress {
  const factory _BankAddress(
      {required String bankName,
      required String accountNumber,
      required String userName,
      required String id,
      required String trax,
      required String type}) = _$_BankAddress;
  const _BankAddress._() : super._();

  @override
  String get bankName;
  @override
  String get accountNumber;
  @override
  String get userName;
  @override
  String get id;
  @override
  String get trax;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$BankAddressCopyWith<_BankAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
