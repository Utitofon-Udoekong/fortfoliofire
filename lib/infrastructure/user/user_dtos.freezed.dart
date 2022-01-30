// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserDtoTearOff {
  const _$UserDtoTearOff();

  _UserDto call(
      {required UserName firstName,
      required UserName lastName,
      required EmailAddress email,
      required Phone phone,
      required bool isVerified,
      required List<WithdrawalItem> withdrawals,
      required List<DepositItem> deposits,
      required List<ActivePlanItem> activePlans}) {
    return _UserDto(
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
const $UserDto = _$UserDtoTearOff();

/// @nodoc
mixin _$UserDto {
  UserName get firstName => throw _privateConstructorUsedError;
  UserName get lastName => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  Phone get phone => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  List<WithdrawalItem> get withdrawals => throw _privateConstructorUsedError;
  List<DepositItem> get deposits => throw _privateConstructorUsedError;
  List<ActivePlanItem> get activePlans => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res>;
  $Res call(
      {UserName firstName,
      UserName lastName,
      EmailAddress email,
      Phone phone,
      bool isVerified,
      List<WithdrawalItem> withdrawals,
      List<DepositItem> deposits,
      List<ActivePlanItem> activePlans});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res> implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  final UserDto _value;
  // ignore: unused_field
  final $Res Function(UserDto) _then;

  @override
  $Res call({
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
abstract class _$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$UserDtoCopyWith(_UserDto value, $Res Function(_UserDto) then) =
      __$UserDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserName firstName,
      UserName lastName,
      EmailAddress email,
      Phone phone,
      bool isVerified,
      List<WithdrawalItem> withdrawals,
      List<DepositItem> deposits,
      List<ActivePlanItem> activePlans});
}

/// @nodoc
class __$UserDtoCopyWithImpl<$Res> extends _$UserDtoCopyWithImpl<$Res>
    implements _$UserDtoCopyWith<$Res> {
  __$UserDtoCopyWithImpl(_UserDto _value, $Res Function(_UserDto) _then)
      : super(_value, (v) => _then(v as _UserDto));

  @override
  _UserDto get _value => super._value as _UserDto;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? isVerified = freezed,
    Object? withdrawals = freezed,
    Object? deposits = freezed,
    Object? activePlans = freezed,
  }) {
    return _then(_UserDto(
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

class _$_UserDto implements _UserDto {
  const _$_UserDto(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.phone,
      required this.isVerified,
      required this.withdrawals,
      required this.deposits,
      required this.activePlans});

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
    return 'UserDto(firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, isVerified: $isVerified, withdrawals: $withdrawals, deposits: $deposits, activePlans: $activePlans)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDto &&
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
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      __$UserDtoCopyWithImpl<_UserDto>(this, _$identity);
}

abstract class _UserDto implements UserDto {
  const factory _UserDto(
      {required UserName firstName,
      required UserName lastName,
      required EmailAddress email,
      required Phone phone,
      required bool isVerified,
      required List<WithdrawalItem> withdrawals,
      required List<DepositItem> deposits,
      required List<ActivePlanItem> activePlans}) = _$_UserDto;

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
  _$UserDtoCopyWith<_UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
