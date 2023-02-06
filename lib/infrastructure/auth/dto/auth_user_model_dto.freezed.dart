// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_user_model_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthUserModelDto _$AuthUserModelDtoFromJson(Map<String, dynamic> json) {
  return _AuthUserModelDto.fromJson(json);
}

/// @nodoc
mixin _$AuthUserModelDto {
  String get id => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  bool get isVerified => throw _privateConstructorUsedError;
  bool get isAccountActive =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
  DateTime get createdat => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get deleteDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthUserModelDtoCopyWith<AuthUserModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserModelDtoCopyWith<$Res> {
  factory $AuthUserModelDtoCopyWith(
          AuthUserModelDto value, $Res Function(AuthUserModelDto) then) =
      _$AuthUserModelDtoCopyWithImpl<$Res, AuthUserModelDto>;
  @useResult
  $Res call(
      {String id,
      String displayName,
      String phoneNumber,
      String firstName,
      String lastName,
      double balance,
      String email,
      String status,
      bool isVerified,
      bool isAccountActive,
      @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
          DateTime createdat,
      DateTime? startDate,
      DateTime? deleteDate});
}

/// @nodoc
class _$AuthUserModelDtoCopyWithImpl<$Res, $Val extends AuthUserModelDto>
    implements $AuthUserModelDtoCopyWith<$Res> {
  _$AuthUserModelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = null,
    Object? phoneNumber = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? balance = null,
    Object? email = null,
    Object? status = null,
    Object? isVerified = null,
    Object? isAccountActive = null,
    Object? createdat = null,
    Object? startDate = freezed,
    Object? deleteDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isAccountActive: null == isAccountActive
          ? _value.isAccountActive
          : isAccountActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdat: null == createdat
          ? _value.createdat
          : createdat // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deleteDate: freezed == deleteDate
          ? _value.deleteDate
          : deleteDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthUserModelDtoCopyWith<$Res>
    implements $AuthUserModelDtoCopyWith<$Res> {
  factory _$$_AuthUserModelDtoCopyWith(
          _$_AuthUserModelDto value, $Res Function(_$_AuthUserModelDto) then) =
      __$$_AuthUserModelDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String displayName,
      String phoneNumber,
      String firstName,
      String lastName,
      double balance,
      String email,
      String status,
      bool isVerified,
      bool isAccountActive,
      @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
          DateTime createdat,
      DateTime? startDate,
      DateTime? deleteDate});
}

/// @nodoc
class __$$_AuthUserModelDtoCopyWithImpl<$Res>
    extends _$AuthUserModelDtoCopyWithImpl<$Res, _$_AuthUserModelDto>
    implements _$$_AuthUserModelDtoCopyWith<$Res> {
  __$$_AuthUserModelDtoCopyWithImpl(
      _$_AuthUserModelDto _value, $Res Function(_$_AuthUserModelDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? displayName = null,
    Object? phoneNumber = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? balance = null,
    Object? email = null,
    Object? status = null,
    Object? isVerified = null,
    Object? isAccountActive = null,
    Object? createdat = null,
    Object? startDate = freezed,
    Object? deleteDate = freezed,
  }) {
    return _then(_$_AuthUserModelDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isVerified: null == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      isAccountActive: null == isAccountActive
          ? _value.isAccountActive
          : isAccountActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdat: null == createdat
          ? _value.createdat
          : createdat // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deleteDate: freezed == deleteDate
          ? _value.deleteDate
          : deleteDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      required this.status,
      required this.isVerified,
      required this.isAccountActive,
      @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
          required this.createdat,
      this.startDate,
      this.deleteDate});

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
  final String status;
  @override
  final bool isVerified;
  @override
  final bool isAccountActive;
// ignore: invalid_annotation_target
  @override
  @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
  final DateTime createdat;
  @override
  final DateTime? startDate;
  @override
  final DateTime? deleteDate;

  @override
  String toString() {
    return 'AuthUserModelDto(id: $id, displayName: $displayName, phoneNumber: $phoneNumber, firstName: $firstName, lastName: $lastName, balance: $balance, email: $email, status: $status, isVerified: $isVerified, isAccountActive: $isAccountActive, createdat: $createdat, startDate: $startDate, deleteDate: $deleteDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthUserModelDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.isAccountActive, isAccountActive) ||
                other.isAccountActive == isAccountActive) &&
            (identical(other.createdat, createdat) ||
                other.createdat == createdat) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.deleteDate, deleteDate) ||
                other.deleteDate == deleteDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      displayName,
      phoneNumber,
      firstName,
      lastName,
      balance,
      email,
      status,
      isVerified,
      isAccountActive,
      createdat,
      startDate,
      deleteDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthUserModelDtoCopyWith<_$_AuthUserModelDto> get copyWith =>
      __$$_AuthUserModelDtoCopyWithImpl<_$_AuthUserModelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthUserModelDtoToJson(
      this,
    );
  }
}

abstract class _AuthUserModelDto implements AuthUserModelDto {
  factory _AuthUserModelDto(
      {required final String id,
      required final String displayName,
      required final String phoneNumber,
      required final String firstName,
      required final String lastName,
      required final double balance,
      required final String email,
      required final String status,
      required final bool isVerified,
      required final bool isAccountActive,
      @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
          required final DateTime createdat,
      final DateTime? startDate,
      final DateTime? deleteDate}) = _$_AuthUserModelDto;

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
  String get status;
  @override
  bool get isVerified;
  @override
  bool get isAccountActive;
  @override // ignore: invalid_annotation_target
  @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
  DateTime get createdat;
  @override
  DateTime? get startDate;
  @override
  DateTime? get deleteDate;
  @override
  @JsonKey(ignore: true)
  _$$_AuthUserModelDtoCopyWith<_$_AuthUserModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
