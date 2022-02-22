// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_user_model_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthUserModelDto _$AuthUserModelDtoFromJson(Map<String, dynamic> json) {
  return _AuthUserModelDto.fromJson(json);
}

/// @nodoc
class _$AuthUserModelDtoTearOff {
  const _$AuthUserModelDtoTearOff();

  _AuthUserModelDto call(
      {required String id,
      required String displayName,
      required String phoneNumber,
      required String firstName,
      required String lastName,
      required double balance,
      required String email,
      required bool isVerified,
      @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
          required DateTime createdat}) {
    return _AuthUserModelDto(
      id: id,
      displayName: displayName,
      phoneNumber: phoneNumber,
      firstName: firstName,
      lastName: lastName,
      balance: balance,
      email: email,
      isVerified: isVerified,
      createdat: createdat,
    );
  }

  AuthUserModelDto fromJson(Map<String, Object?> json) {
    return AuthUserModelDto.fromJson(json);
  }
}

/// @nodoc
const $AuthUserModelDto = _$AuthUserModelDtoTearOff();

/// @nodoc
mixin _$AuthUserModelDto {
  String get id => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
  DateTime get createdat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthUserModelDtoCopyWith<AuthUserModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserModelDtoCopyWith<$Res> {
  factory $AuthUserModelDtoCopyWith(
          AuthUserModelDto value, $Res Function(AuthUserModelDto) then) =
      _$AuthUserModelDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String displayName,
      String phoneNumber,
      String firstName,
      String lastName,
      double balance,
      String email,
      bool isVerified,
      @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
          DateTime createdat});
}

/// @nodoc
class _$AuthUserModelDtoCopyWithImpl<$Res>
    implements $AuthUserModelDtoCopyWith<$Res> {
  _$AuthUserModelDtoCopyWithImpl(this._value, this._then);

  final AuthUserModelDto _value;
  // ignore: unused_field
  final $Res Function(AuthUserModelDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? displayName = freezed,
    Object? phoneNumber = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? balance = freezed,
    Object? email = freezed,
    Object? isVerified = freezed,
    Object? createdat = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: isVerified == freezed
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      createdat: createdat == freezed
          ? _value.createdat
          : createdat // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$AuthUserModelDtoCopyWith<$Res>
    implements $AuthUserModelDtoCopyWith<$Res> {
  factory _$AuthUserModelDtoCopyWith(
          _AuthUserModelDto value, $Res Function(_AuthUserModelDto) then) =
      __$AuthUserModelDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String displayName,
      String phoneNumber,
      String firstName,
      String lastName,
      double balance,
      String email,
      bool isVerified,
      @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
          DateTime createdat});
}

/// @nodoc
class __$AuthUserModelDtoCopyWithImpl<$Res>
    extends _$AuthUserModelDtoCopyWithImpl<$Res>
    implements _$AuthUserModelDtoCopyWith<$Res> {
  __$AuthUserModelDtoCopyWithImpl(
      _AuthUserModelDto _value, $Res Function(_AuthUserModelDto) _then)
      : super(_value, (v) => _then(v as _AuthUserModelDto));

  @override
  _AuthUserModelDto get _value => super._value as _AuthUserModelDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? displayName = freezed,
    Object? phoneNumber = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? balance = freezed,
    Object? email = freezed,
    Object? isVerified = freezed,
    Object? createdat = freezed,
  }) {
    return _then(_AuthUserModelDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: isVerified == freezed
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      createdat: createdat == freezed
          ? _value.createdat
          : createdat // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthUserModelDto implements _AuthUserModelDto {
  _$_AuthUserModelDto(
      {required this.id,
      required this.displayName,
      required this.phoneNumber,
      required this.firstName,
      required this.lastName,
      required this.balance,
      required this.email,
      required this.isVerified,
      @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
          required this.createdat});

  factory _$_AuthUserModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_AuthUserModelDtoFromJson(json);

  @override
  final String id;
  @override
  final String displayName;
  @override
  final String phoneNumber;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final double balance;
  @override
  final String email;
  @override
  final bool isVerified;
  @override
  @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
  final DateTime createdat;

  @override
  String toString() {
    return 'AuthUserModelDto(id: $id, displayName: $displayName, phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName, balance: $balance, email: $email, isVerified: $isVerified, createdat: $createdat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthUserModelDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.isVerified, isVerified) &&
            const DeepCollectionEquality().equals(other.createdat, createdat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(isVerified),
      const DeepCollectionEquality().hash(createdat));

  @JsonKey(ignore: true)
  @override
  _$AuthUserModelDtoCopyWith<_AuthUserModelDto> get copyWith =>
      __$AuthUserModelDtoCopyWithImpl<_AuthUserModelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthUserModelDtoToJson(this);
  }
}

abstract class _AuthUserModelDto implements AuthUserModelDto {
  factory _AuthUserModelDto(
      {required String id,
      required String displayName,
      required String phoneNumber,
      required String firstName,
      required String lastName,
      required double balance,
      required String email,
      required bool isVerified,
      @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
          required DateTime createdat}) = _$_AuthUserModelDto;

  factory _AuthUserModelDto.fromJson(Map<String, dynamic> json) =
      _$_AuthUserModelDto.fromJson;

  @override
  String get id;
  @override
  String get displayName;
  @override
  String get phoneNumber;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  double get balance;
  @override
  String get email;
  @override
  bool get isVerified;
  @override
  @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
  DateTime get createdat;
  @override
  @JsonKey(ignore: true)
  _$AuthUserModelDtoCopyWith<_AuthUserModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
