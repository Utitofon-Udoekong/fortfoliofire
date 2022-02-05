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

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
class _$UserDTOTearOff {
  const _$UserDTOTearOff();

  _UserDTO call(
      {@JsonKey(ignore: true) String? id,
      required String firstName,
      required String lastName,
      required String email,
      required String phone,
      required int accountBalance,
      required List<WithdrawalItemDTO> withdrawals,
      required List<DepositItemDTO> deposits,
      required List<ActivePlanItemDTO> activePlans,
      @ServerTimeStampConverter() required FieldValue serverTimeStamp}) {
    return _UserDTO(
      id: id,
      firstName: firstName,
      lastName: lastName,
      email: email,
      phone: phone,
      accountBalance: accountBalance,
      withdrawals: withdrawals,
      deposits: deposits,
      activePlans: activePlans,
      serverTimeStamp: serverTimeStamp,
    );
  }

  UserDTO fromJson(Map<String, Object?> json) {
    return UserDTO.fromJson(json);
  }
}

/// @nodoc
const $UserDTO = _$UserDTOTearOff();

/// @nodoc
mixin _$UserDTO {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  int get accountBalance => throw _privateConstructorUsedError;
  List<WithdrawalItemDTO> get withdrawals => throw _privateConstructorUsedError;
  List<DepositItemDTO> get deposits => throw _privateConstructorUsedError;
  List<ActivePlanItemDTO> get activePlans => throw _privateConstructorUsedError;
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDTOCopyWith<UserDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String firstName,
      String lastName,
      String email,
      String phone,
      int accountBalance,
      List<WithdrawalItemDTO> withdrawals,
      List<DepositItemDTO> deposits,
      List<ActivePlanItemDTO> activePlans,
      @ServerTimeStampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$UserDTOCopyWithImpl<$Res> implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  final UserDTO _value;
  // ignore: unused_field
  final $Res Function(UserDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? accountBalance = freezed,
    Object? withdrawals = freezed,
    Object? deposits = freezed,
    Object? activePlans = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      accountBalance: accountBalance == freezed
          ? _value.accountBalance
          : accountBalance // ignore: cast_nullable_to_non_nullable
              as int,
      withdrawals: withdrawals == freezed
          ? _value.withdrawals
          : withdrawals // ignore: cast_nullable_to_non_nullable
              as List<WithdrawalItemDTO>,
      deposits: deposits == freezed
          ? _value.deposits
          : deposits // ignore: cast_nullable_to_non_nullable
              as List<DepositItemDTO>,
      activePlans: activePlans == freezed
          ? _value.activePlans
          : activePlans // ignore: cast_nullable_to_non_nullable
              as List<ActivePlanItemDTO>,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ));
  }
}

/// @nodoc
abstract class _$UserDTOCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$UserDTOCopyWith(_UserDTO value, $Res Function(_UserDTO) then) =
      __$UserDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String firstName,
      String lastName,
      String email,
      String phone,
      int accountBalance,
      List<WithdrawalItemDTO> withdrawals,
      List<DepositItemDTO> deposits,
      List<ActivePlanItemDTO> activePlans,
      @ServerTimeStampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class __$UserDTOCopyWithImpl<$Res> extends _$UserDTOCopyWithImpl<$Res>
    implements _$UserDTOCopyWith<$Res> {
  __$UserDTOCopyWithImpl(_UserDTO _value, $Res Function(_UserDTO) _then)
      : super(_value, (v) => _then(v as _UserDTO));

  @override
  _UserDTO get _value => super._value as _UserDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? accountBalance = freezed,
    Object? withdrawals = freezed,
    Object? deposits = freezed,
    Object? activePlans = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_UserDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      accountBalance: accountBalance == freezed
          ? _value.accountBalance
          : accountBalance // ignore: cast_nullable_to_non_nullable
              as int,
      withdrawals: withdrawals == freezed
          ? _value.withdrawals
          : withdrawals // ignore: cast_nullable_to_non_nullable
              as List<WithdrawalItemDTO>,
      deposits: deposits == freezed
          ? _value.deposits
          : deposits // ignore: cast_nullable_to_non_nullable
              as List<DepositItemDTO>,
      activePlans: activePlans == freezed
          ? _value.activePlans
          : activePlans // ignore: cast_nullable_to_non_nullable
              as List<ActivePlanItemDTO>,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDTO extends _UserDTO {
  const _$_UserDTO(
      {@JsonKey(ignore: true) this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.phone,
      required this.accountBalance,
      required this.withdrawals,
      required this.deposits,
      required this.activePlans,
      @ServerTimeStampConverter() required this.serverTimeStamp})
      : super._();

  factory _$_UserDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String email;
  @override
  final String phone;
  @override
  final int accountBalance;
  @override
  final List<WithdrawalItemDTO> withdrawals;
  @override
  final List<DepositItemDTO> deposits;
  @override
  final List<ActivePlanItemDTO> activePlans;
  @override
  @ServerTimeStampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'UserDTO(id: $id, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, accountBalance: $accountBalance, withdrawals: $withdrawals, deposits: $deposits, activePlans: $activePlans, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality()
                .equals(other.accountBalance, accountBalance) &&
            const DeepCollectionEquality()
                .equals(other.withdrawals, withdrawals) &&
            const DeepCollectionEquality().equals(other.deposits, deposits) &&
            const DeepCollectionEquality()
                .equals(other.activePlans, activePlans) &&
            const DeepCollectionEquality()
                .equals(other.serverTimeStamp, serverTimeStamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(accountBalance),
      const DeepCollectionEquality().hash(withdrawals),
      const DeepCollectionEquality().hash(deposits),
      const DeepCollectionEquality().hash(activePlans),
      const DeepCollectionEquality().hash(serverTimeStamp));

  @JsonKey(ignore: true)
  @override
  _$UserDTOCopyWith<_UserDTO> get copyWith =>
      __$UserDTOCopyWithImpl<_UserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDTOToJson(this);
  }
}

abstract class _UserDTO extends UserDTO {
  const factory _UserDTO(
          {@JsonKey(ignore: true) String? id,
          required String firstName,
          required String lastName,
          required String email,
          required String phone,
          required int accountBalance,
          required List<WithdrawalItemDTO> withdrawals,
          required List<DepositItemDTO> deposits,
          required List<ActivePlanItemDTO> activePlans,
          @ServerTimeStampConverter() required FieldValue serverTimeStamp}) =
      _$_UserDTO;
  const _UserDTO._() : super._();

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$_UserDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get email;
  @override
  String get phone;
  @override
  int get accountBalance;
  @override
  List<WithdrawalItemDTO> get withdrawals;
  @override
  List<DepositItemDTO> get deposits;
  @override
  List<ActivePlanItemDTO> get activePlans;
  @override
  @ServerTimeStampConverter()
  FieldValue get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$UserDTOCopyWith<_UserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

WithdrawalItemDTO _$WithdrawalItemDTOFromJson(Map<String, dynamic> json) {
  return _WithdrawalItemDTO.fromJson(json);
}

/// @nodoc
class _$WithdrawalItemDTOTearOff {
  const _$WithdrawalItemDTOTearOff();

  _WithdrawalItemDTO call(
      {required String id,
      required int amount,
      required String planName,
      required bool processed}) {
    return _WithdrawalItemDTO(
      id: id,
      amount: amount,
      planName: planName,
      processed: processed,
    );
  }

  WithdrawalItemDTO fromJson(Map<String, Object?> json) {
    return WithdrawalItemDTO.fromJson(json);
  }
}

/// @nodoc
const $WithdrawalItemDTO = _$WithdrawalItemDTOTearOff();

/// @nodoc
mixin _$WithdrawalItemDTO {
  String get id => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get planName => throw _privateConstructorUsedError;
  bool get processed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WithdrawalItemDTOCopyWith<WithdrawalItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawalItemDTOCopyWith<$Res> {
  factory $WithdrawalItemDTOCopyWith(
          WithdrawalItemDTO value, $Res Function(WithdrawalItemDTO) then) =
      _$WithdrawalItemDTOCopyWithImpl<$Res>;
  $Res call({String id, int amount, String planName, bool processed});
}

/// @nodoc
class _$WithdrawalItemDTOCopyWithImpl<$Res>
    implements $WithdrawalItemDTOCopyWith<$Res> {
  _$WithdrawalItemDTOCopyWithImpl(this._value, this._then);

  final WithdrawalItemDTO _value;
  // ignore: unused_field
  final $Res Function(WithdrawalItemDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? planName = freezed,
    Object? processed = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      planName: planName == freezed
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      processed: processed == freezed
          ? _value.processed
          : processed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$WithdrawalItemDTOCopyWith<$Res>
    implements $WithdrawalItemDTOCopyWith<$Res> {
  factory _$WithdrawalItemDTOCopyWith(
          _WithdrawalItemDTO value, $Res Function(_WithdrawalItemDTO) then) =
      __$WithdrawalItemDTOCopyWithImpl<$Res>;
  @override
  $Res call({String id, int amount, String planName, bool processed});
}

/// @nodoc
class __$WithdrawalItemDTOCopyWithImpl<$Res>
    extends _$WithdrawalItemDTOCopyWithImpl<$Res>
    implements _$WithdrawalItemDTOCopyWith<$Res> {
  __$WithdrawalItemDTOCopyWithImpl(
      _WithdrawalItemDTO _value, $Res Function(_WithdrawalItemDTO) _then)
      : super(_value, (v) => _then(v as _WithdrawalItemDTO));

  @override
  _WithdrawalItemDTO get _value => super._value as _WithdrawalItemDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? planName = freezed,
    Object? processed = freezed,
  }) {
    return _then(_WithdrawalItemDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      planName: planName == freezed
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      processed: processed == freezed
          ? _value.processed
          : processed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WithdrawalItemDTO extends _WithdrawalItemDTO {
  const _$_WithdrawalItemDTO(
      {required this.id,
      required this.amount,
      required this.planName,
      required this.processed})
      : super._();

  factory _$_WithdrawalItemDTO.fromJson(Map<String, dynamic> json) =>
      _$$_WithdrawalItemDTOFromJson(json);

  @override
  final String id;
  @override
  final int amount;
  @override
  final String planName;
  @override
  final bool processed;

  @override
  String toString() {
    return 'WithdrawalItemDTO(id: $id, amount: $amount, planName: $planName, processed: $processed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithdrawalItemDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.planName, planName) &&
            const DeepCollectionEquality().equals(other.processed, processed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(planName),
      const DeepCollectionEquality().hash(processed));

  @JsonKey(ignore: true)
  @override
  _$WithdrawalItemDTOCopyWith<_WithdrawalItemDTO> get copyWith =>
      __$WithdrawalItemDTOCopyWithImpl<_WithdrawalItemDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WithdrawalItemDTOToJson(this);
  }
}

abstract class _WithdrawalItemDTO extends WithdrawalItemDTO {
  const factory _WithdrawalItemDTO(
      {required String id,
      required int amount,
      required String planName,
      required bool processed}) = _$_WithdrawalItemDTO;
  const _WithdrawalItemDTO._() : super._();

  factory _WithdrawalItemDTO.fromJson(Map<String, dynamic> json) =
      _$_WithdrawalItemDTO.fromJson;

  @override
  String get id;
  @override
  int get amount;
  @override
  String get planName;
  @override
  bool get processed;
  @override
  @JsonKey(ignore: true)
  _$WithdrawalItemDTOCopyWith<_WithdrawalItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

DepositItemDTO _$DepositItemDTOFromJson(Map<String, dynamic> json) {
  return _DepositItemDTO.fromJson(json);
}

/// @nodoc
class _$DepositItemDTOTearOff {
  const _$DepositItemDTOTearOff();

  _DepositItemDTO call(
      {required String id,
      required int amount,
      required String planName,
      required bool processed}) {
    return _DepositItemDTO(
      id: id,
      amount: amount,
      planName: planName,
      processed: processed,
    );
  }

  DepositItemDTO fromJson(Map<String, Object?> json) {
    return DepositItemDTO.fromJson(json);
  }
}

/// @nodoc
const $DepositItemDTO = _$DepositItemDTOTearOff();

/// @nodoc
mixin _$DepositItemDTO {
  String get id => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get planName => throw _privateConstructorUsedError;
  bool get processed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepositItemDTOCopyWith<DepositItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepositItemDTOCopyWith<$Res> {
  factory $DepositItemDTOCopyWith(
          DepositItemDTO value, $Res Function(DepositItemDTO) then) =
      _$DepositItemDTOCopyWithImpl<$Res>;
  $Res call({String id, int amount, String planName, bool processed});
}

/// @nodoc
class _$DepositItemDTOCopyWithImpl<$Res>
    implements $DepositItemDTOCopyWith<$Res> {
  _$DepositItemDTOCopyWithImpl(this._value, this._then);

  final DepositItemDTO _value;
  // ignore: unused_field
  final $Res Function(DepositItemDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? planName = freezed,
    Object? processed = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      planName: planName == freezed
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      processed: processed == freezed
          ? _value.processed
          : processed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$DepositItemDTOCopyWith<$Res>
    implements $DepositItemDTOCopyWith<$Res> {
  factory _$DepositItemDTOCopyWith(
          _DepositItemDTO value, $Res Function(_DepositItemDTO) then) =
      __$DepositItemDTOCopyWithImpl<$Res>;
  @override
  $Res call({String id, int amount, String planName, bool processed});
}

/// @nodoc
class __$DepositItemDTOCopyWithImpl<$Res>
    extends _$DepositItemDTOCopyWithImpl<$Res>
    implements _$DepositItemDTOCopyWith<$Res> {
  __$DepositItemDTOCopyWithImpl(
      _DepositItemDTO _value, $Res Function(_DepositItemDTO) _then)
      : super(_value, (v) => _then(v as _DepositItemDTO));

  @override
  _DepositItemDTO get _value => super._value as _DepositItemDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? planName = freezed,
    Object? processed = freezed,
  }) {
    return _then(_DepositItemDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      planName: planName == freezed
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      processed: processed == freezed
          ? _value.processed
          : processed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DepositItemDTO extends _DepositItemDTO {
  const _$_DepositItemDTO(
      {required this.id,
      required this.amount,
      required this.planName,
      required this.processed})
      : super._();

  factory _$_DepositItemDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DepositItemDTOFromJson(json);

  @override
  final String id;
  @override
  final int amount;
  @override
  final String planName;
  @override
  final bool processed;

  @override
  String toString() {
    return 'DepositItemDTO(id: $id, amount: $amount, planName: $planName, processed: $processed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DepositItemDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.planName, planName) &&
            const DeepCollectionEquality().equals(other.processed, processed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(planName),
      const DeepCollectionEquality().hash(processed));

  @JsonKey(ignore: true)
  @override
  _$DepositItemDTOCopyWith<_DepositItemDTO> get copyWith =>
      __$DepositItemDTOCopyWithImpl<_DepositItemDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DepositItemDTOToJson(this);
  }
}

abstract class _DepositItemDTO extends DepositItemDTO {
  const factory _DepositItemDTO(
      {required String id,
      required int amount,
      required String planName,
      required bool processed}) = _$_DepositItemDTO;
  const _DepositItemDTO._() : super._();

  factory _DepositItemDTO.fromJson(Map<String, dynamic> json) =
      _$_DepositItemDTO.fromJson;

  @override
  String get id;
  @override
  int get amount;
  @override
  String get planName;
  @override
  bool get processed;
  @override
  @JsonKey(ignore: true)
  _$DepositItemDTOCopyWith<_DepositItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

ActivePlanItemDTO _$ActivePlanItemDTOFromJson(Map<String, dynamic> json) {
  return _ActivePlanItemDTO.fromJson(json);
}

/// @nodoc
class _$ActivePlanItemDTOTearOff {
  const _$ActivePlanItemDTOTearOff();

  _ActivePlanItemDTO call(
      {required String id,
      required int amount,
      required String planName,
      required int accountBalance,
      required int duration,
      required int roi}) {
    return _ActivePlanItemDTO(
      id: id,
      amount: amount,
      planName: planName,
      accountBalance: accountBalance,
      duration: duration,
      roi: roi,
    );
  }

  ActivePlanItemDTO fromJson(Map<String, Object?> json) {
    return ActivePlanItemDTO.fromJson(json);
  }
}

/// @nodoc
const $ActivePlanItemDTO = _$ActivePlanItemDTOTearOff();

/// @nodoc
mixin _$ActivePlanItemDTO {
  String get id => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get planName => throw _privateConstructorUsedError;
  int get accountBalance => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  int get roi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivePlanItemDTOCopyWith<ActivePlanItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivePlanItemDTOCopyWith<$Res> {
  factory $ActivePlanItemDTOCopyWith(
          ActivePlanItemDTO value, $Res Function(ActivePlanItemDTO) then) =
      _$ActivePlanItemDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int amount,
      String planName,
      int accountBalance,
      int duration,
      int roi});
}

/// @nodoc
class _$ActivePlanItemDTOCopyWithImpl<$Res>
    implements $ActivePlanItemDTOCopyWith<$Res> {
  _$ActivePlanItemDTOCopyWithImpl(this._value, this._then);

  final ActivePlanItemDTO _value;
  // ignore: unused_field
  final $Res Function(ActivePlanItemDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? planName = freezed,
    Object? accountBalance = freezed,
    Object? duration = freezed,
    Object? roi = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      planName: planName == freezed
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      accountBalance: accountBalance == freezed
          ? _value.accountBalance
          : accountBalance // ignore: cast_nullable_to_non_nullable
              as int,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      roi: roi == freezed
          ? _value.roi
          : roi // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ActivePlanItemDTOCopyWith<$Res>
    implements $ActivePlanItemDTOCopyWith<$Res> {
  factory _$ActivePlanItemDTOCopyWith(
          _ActivePlanItemDTO value, $Res Function(_ActivePlanItemDTO) then) =
      __$ActivePlanItemDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int amount,
      String planName,
      int accountBalance,
      int duration,
      int roi});
}

/// @nodoc
class __$ActivePlanItemDTOCopyWithImpl<$Res>
    extends _$ActivePlanItemDTOCopyWithImpl<$Res>
    implements _$ActivePlanItemDTOCopyWith<$Res> {
  __$ActivePlanItemDTOCopyWithImpl(
      _ActivePlanItemDTO _value, $Res Function(_ActivePlanItemDTO) _then)
      : super(_value, (v) => _then(v as _ActivePlanItemDTO));

  @override
  _ActivePlanItemDTO get _value => super._value as _ActivePlanItemDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? planName = freezed,
    Object? accountBalance = freezed,
    Object? duration = freezed,
    Object? roi = freezed,
  }) {
    return _then(_ActivePlanItemDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      planName: planName == freezed
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      accountBalance: accountBalance == freezed
          ? _value.accountBalance
          : accountBalance // ignore: cast_nullable_to_non_nullable
              as int,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      roi: roi == freezed
          ? _value.roi
          : roi // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActivePlanItemDTO extends _ActivePlanItemDTO {
  const _$_ActivePlanItemDTO(
      {required this.id,
      required this.amount,
      required this.planName,
      required this.accountBalance,
      required this.duration,
      required this.roi})
      : super._();

  factory _$_ActivePlanItemDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ActivePlanItemDTOFromJson(json);

  @override
  final String id;
  @override
  final int amount;
  @override
  final String planName;
  @override
  final int accountBalance;
  @override
  final int duration;
  @override
  final int roi;

  @override
  String toString() {
    return 'ActivePlanItemDTO(id: $id, amount: $amount, planName: $planName, accountBalance: $accountBalance, duration: $duration, roi: $roi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActivePlanItemDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.planName, planName) &&
            const DeepCollectionEquality()
                .equals(other.accountBalance, accountBalance) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.roi, roi));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(planName),
      const DeepCollectionEquality().hash(accountBalance),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(roi));

  @JsonKey(ignore: true)
  @override
  _$ActivePlanItemDTOCopyWith<_ActivePlanItemDTO> get copyWith =>
      __$ActivePlanItemDTOCopyWithImpl<_ActivePlanItemDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActivePlanItemDTOToJson(this);
  }
}

abstract class _ActivePlanItemDTO extends ActivePlanItemDTO {
  const factory _ActivePlanItemDTO(
      {required String id,
      required int amount,
      required String planName,
      required int accountBalance,
      required int duration,
      required int roi}) = _$_ActivePlanItemDTO;
  const _ActivePlanItemDTO._() : super._();

  factory _ActivePlanItemDTO.fromJson(Map<String, dynamic> json) =
      _$_ActivePlanItemDTO.fromJson;

  @override
  String get id;
  @override
  int get amount;
  @override
  String get planName;
  @override
  int get accountBalance;
  @override
  int get duration;
  @override
  int get roi;
  @override
  @JsonKey(ignore: true)
  _$ActivePlanItemDTOCopyWith<_ActivePlanItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
