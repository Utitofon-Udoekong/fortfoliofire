// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required UniqueId id,
      required UserName firstName,
      required UserName lastName,
      required EmailAddress email,
      required Phone phone,
      required bool isVerified,
      required List<WithdrawalItem> withdrawals,
      required List<DepositItem> deposits,
      required List<ActivePlanItem> activePlans}) {
    return _User(
      id: id,
      firstName: firstName,
      lastName: lastName,
      email: email,
      phone: phone,
      isVerified: isVerified,
      withdrawals: withdrawals,
      deposits: deposits,
      activePlans: activePlans,
    );
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  UniqueId get id => throw _privateConstructorUsedError;
  UserName get firstName => throw _privateConstructorUsedError;
  UserName get lastName => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  Phone get phone => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  List<WithdrawalItem> get withdrawals => throw _privateConstructorUsedError;
  List<DepositItem> get deposits => throw _privateConstructorUsedError;
  List<ActivePlanItem> get activePlans => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      UserName firstName,
      UserName lastName,
      EmailAddress email,
      Phone phone,
      bool isVerified,
      List<WithdrawalItem> withdrawals,
      List<DepositItem> deposits,
      List<ActivePlanItem> activePlans});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? isVerified = freezed,
    Object? withdrawals = freezed,
    Object? deposits = freezed,
    Object? activePlans = freezed,
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
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      isVerified: isVerified == freezed
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      withdrawals: withdrawals == freezed
          ? _value.withdrawals
          : withdrawals // ignore: cast_nullable_to_non_nullable
              as List<WithdrawalItem>,
      deposits: deposits == freezed
          ? _value.deposits
          : deposits // ignore: cast_nullable_to_non_nullable
              as List<DepositItem>,
      activePlans: activePlans == freezed
          ? _value.activePlans
          : activePlans // ignore: cast_nullable_to_non_nullable
              as List<ActivePlanItem>,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      UserName firstName,
      UserName lastName,
      EmailAddress email,
      Phone phone,
      bool isVerified,
      List<WithdrawalItem> withdrawals,
      List<DepositItem> deposits,
      List<ActivePlanItem> activePlans});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? isVerified = freezed,
    Object? withdrawals = freezed,
    Object? deposits = freezed,
    Object? activePlans = freezed,
  }) {
    return _then(_User(
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
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as Phone,
      isVerified: isVerified == freezed
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      withdrawals: withdrawals == freezed
          ? _value.withdrawals
          : withdrawals // ignore: cast_nullable_to_non_nullable
              as List<WithdrawalItem>,
      deposits: deposits == freezed
          ? _value.deposits
          : deposits // ignore: cast_nullable_to_non_nullable
              as List<DepositItem>,
      activePlans: activePlans == freezed
          ? _value.activePlans
          : activePlans // ignore: cast_nullable_to_non_nullable
              as List<ActivePlanItem>,
    ));
  }
}

/// @nodoc

class _$_User implements _User {
  const _$_User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.phone,
      required this.isVerified,
      required this.withdrawals,
      required this.deposits,
      required this.activePlans});

  @override
  final UniqueId id;
  @override
  final UserName firstName;
  @override
  final UserName lastName;
  @override
  final EmailAddress email;
  @override
  final Phone phone;
  @override
  final bool isVerified;
  @override
  final List<WithdrawalItem> withdrawals;
  @override
  final List<DepositItem> deposits;
  @override
  final List<ActivePlanItem> activePlans;

  @override
  String toString() {
    return 'User(id: $id, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, isVerified: $isVerified, withdrawals: $withdrawals, deposits: $deposits, activePlans: $activePlans)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality()
                .equals(other.isVerified, isVerified) &&
            const DeepCollectionEquality()
                .equals(other.withdrawals, withdrawals) &&
            const DeepCollectionEquality().equals(other.deposits, deposits) &&
            const DeepCollectionEquality()
                .equals(other.activePlans, activePlans));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(isVerified),
      const DeepCollectionEquality().hash(withdrawals),
      const DeepCollectionEquality().hash(deposits),
      const DeepCollectionEquality().hash(activePlans));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {required UniqueId id,
      required UserName firstName,
      required UserName lastName,
      required EmailAddress email,
      required Phone phone,
      required bool isVerified,
      required List<WithdrawalItem> withdrawals,
      required List<DepositItem> deposits,
      required List<ActivePlanItem> activePlans}) = _$_User;

  @override
  UniqueId get id;
  @override
  UserName get firstName;
  @override
  UserName get lastName;
  @override
  EmailAddress get email;
  @override
  Phone get phone;
  @override
  bool get isVerified;
  @override
  List<WithdrawalItem> get withdrawals;
  @override
  List<DepositItem> get deposits;
  @override
  List<ActivePlanItem> get activePlans;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
