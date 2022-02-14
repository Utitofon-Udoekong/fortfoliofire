// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppUserTearOff {
  const _$AppUserTearOff();

  _AppUser call(
      {required UniqueId id,
      required UserName firstName,
      required UserName lastName,
      required EmailAddress emailAddress,
      required Phone phone,
      required int accountBalance,
      required bool isVerified,
      required ItemList<WithdrawalItem> withdrawals,
      required ItemList<DepositItem> deposits,
      required ItemList<ActivePlanItem> activeplans}) {
    return _AppUser(
      id: id,
      firstName: firstName,
      lastName: lastName,
      emailAddress: emailAddress,
      phone: phone,
      accountBalance: accountBalance,
      isVerified: isVerified,
      withdrawals: withdrawals,
      deposits: deposits,
      activeplans: activeplans,
    );
  }
}

/// @nodoc
const $AppUser = _$AppUserTearOff();

/// @nodoc
mixin _$AppUser {
  UniqueId get id => throw _privateConstructorUsedError;
  UserName get firstName => throw _privateConstructorUsedError;
  UserName get lastName => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Phone get phone => throw _privateConstructorUsedError;
  int get accountBalance => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  ItemList<WithdrawalItem> get withdrawals =>
      throw _privateConstructorUsedError;
  ItemList<DepositItem> get deposits => throw _privateConstructorUsedError;
  ItemList<ActivePlanItem> get activeplans =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppUserCopyWith<AppUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) then) =
      _$AppUserCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UserName firstName,
      UserName lastName,
      EmailAddress emailAddress,
      Phone phone,
      int accountBalance,
      bool isVerified,
      ItemList<WithdrawalItem> withdrawals,
      ItemList<DepositItem> deposits,
      ItemList<ActivePlanItem> activeplans});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res> implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._value, this._then);

  final AppUser _value;
  // ignore: unused_field
  final $Res Function(AppUser) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? emailAddress = freezed,
    Object? phone = freezed,
    Object? accountBalance = freezed,
    Object? isVerified = freezed,
    Object? withdrawals = freezed,
    Object? deposits = freezed,
    Object? activeplans = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as UserName,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as UserName,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      accountBalance: accountBalance == freezed
          ? _value.accountBalance
          : accountBalance // ignore: cast_nullable_to_non_nullable
              as int,
      isVerified: isVerified == freezed
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      withdrawals: withdrawals == freezed
          ? _value.withdrawals
          : withdrawals // ignore: cast_nullable_to_non_nullable
              as ItemList<WithdrawalItem>,
      deposits: deposits == freezed
          ? _value.deposits
          : deposits // ignore: cast_nullable_to_non_nullable
              as ItemList<DepositItem>,
      activeplans: activeplans == freezed
          ? _value.activeplans
          : activeplans // ignore: cast_nullable_to_non_nullable
              as ItemList<ActivePlanItem>,
    ));
  }
}

/// @nodoc
abstract class _$AppUserCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$AppUserCopyWith(_AppUser value, $Res Function(_AppUser) then) =
      __$AppUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UserName firstName,
      UserName lastName,
      EmailAddress emailAddress,
      Phone phone,
      int accountBalance,
      bool isVerified,
      ItemList<WithdrawalItem> withdrawals,
      ItemList<DepositItem> deposits,
      ItemList<ActivePlanItem> activeplans});
}

/// @nodoc
class __$AppUserCopyWithImpl<$Res> extends _$AppUserCopyWithImpl<$Res>
    implements _$AppUserCopyWith<$Res> {
  __$AppUserCopyWithImpl(_AppUser _value, $Res Function(_AppUser) _then)
      : super(_value, (v) => _then(v as _AppUser));

  @override
  _AppUser get _value => super._value as _AppUser;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? emailAddress = freezed,
    Object? phone = freezed,
    Object? accountBalance = freezed,
    Object? isVerified = freezed,
    Object? withdrawals = freezed,
    Object? deposits = freezed,
    Object? activeplans = freezed,
  }) {
    return _then(_AppUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as UserName,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as UserName,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      accountBalance: accountBalance == freezed
          ? _value.accountBalance
          : accountBalance // ignore: cast_nullable_to_non_nullable
              as int,
      isVerified: isVerified == freezed
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      withdrawals: withdrawals == freezed
          ? _value.withdrawals
          : withdrawals // ignore: cast_nullable_to_non_nullable
              as ItemList<WithdrawalItem>,
      deposits: deposits == freezed
          ? _value.deposits
          : deposits // ignore: cast_nullable_to_non_nullable
              as ItemList<DepositItem>,
      activeplans: activeplans == freezed
          ? _value.activeplans
          : activeplans // ignore: cast_nullable_to_non_nullable
              as ItemList<ActivePlanItem>,
    ));
  }
}

/// @nodoc

class _$_AppUser extends _AppUser {
  const _$_AppUser(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.emailAddress,
      required this.phone,
      required this.accountBalance,
      required this.isVerified,
      required this.withdrawals,
      required this.deposits,
      required this.activeplans})
      : super._();

  @override
  final UniqueId id;
  @override
  final UserName firstName;
  @override
  final UserName lastName;
  @override
  final EmailAddress emailAddress;
  @override
  final Phone phone;
  @override
  final int accountBalance;
  @override
  final bool isVerified;
  @override
  final ItemList<WithdrawalItem> withdrawals;
  @override
  final ItemList<DepositItem> deposits;
  @override
  final ItemList<ActivePlanItem> activeplans;

  @override
  String toString() {
    return 'AppUser(id: $id, firstName: $firstName, lastName: $lastName, emailAddress: $emailAddress, phone: $phone, accountBalance: $accountBalance, isVerified: $isVerified, withdrawals: $withdrawals, deposits: $deposits, activeplans: $activeplans)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppUser &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality()
                .equals(other.accountBalance, accountBalance) &&
            const DeepCollectionEquality()
                .equals(other.isVerified, isVerified) &&
            const DeepCollectionEquality()
                .equals(other.withdrawals, withdrawals) &&
            const DeepCollectionEquality().equals(other.deposits, deposits) &&
            const DeepCollectionEquality()
                .equals(other.activeplans, activeplans));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(accountBalance),
      const DeepCollectionEquality().hash(isVerified),
      const DeepCollectionEquality().hash(withdrawals),
      const DeepCollectionEquality().hash(deposits),
      const DeepCollectionEquality().hash(activeplans));

  @JsonKey(ignore: true)
  @override
  _$AppUserCopyWith<_AppUser> get copyWith =>
      __$AppUserCopyWithImpl<_AppUser>(this, _$identity);
}

abstract class _AppUser extends AppUser {
  const factory _AppUser(
      {required UniqueId id,
      required UserName firstName,
      required UserName lastName,
      required EmailAddress emailAddress,
      required Phone phone,
      required int accountBalance,
      required bool isVerified,
      required ItemList<WithdrawalItem> withdrawals,
      required ItemList<DepositItem> deposits,
      required ItemList<ActivePlanItem> activeplans}) = _$_AppUser;
  const _AppUser._() : super._();

  @override
  UniqueId get id;
  @override
  UserName get firstName;
  @override
  UserName get lastName;
  @override
  EmailAddress get emailAddress;
  @override
  Phone get phone;
  @override
  int get accountBalance;
  @override
  bool get isVerified;
  @override
  ItemList<WithdrawalItem> get withdrawals;
  @override
  ItemList<DepositItem> get deposits;
  @override
  ItemList<ActivePlanItem> get activeplans;
  @override
  @JsonKey(ignore: true)
  _$AppUserCopyWith<_AppUser> get copyWith =>
      throw _privateConstructorUsedError;
}
