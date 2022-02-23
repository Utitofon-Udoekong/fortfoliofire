// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'withdrawal_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WithdrawalItemDTO _$WithdrawalItemDTOFromJson(Map<String, dynamic> json) {
  return _WithdrawalItemDTO.fromJson(json);
}

/// @nodoc
class _$WithdrawalItemDTOTearOff {
  const _$WithdrawalItemDTOTearOff();

  _WithdrawalItemDTO call(
      {required String description,
      required int amount,
      required String traxId,
      required String planName,
      required String status,
      required DateTime createdat,
      required String paymentMethod}) {
    return _WithdrawalItemDTO(
      description: description,
      amount: amount,
      traxId: traxId,
      planName: planName,
      status: status,
      createdat: createdat,
      paymentMethod: paymentMethod,
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
  String get description => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get traxId => throw _privateConstructorUsedError;
  String get planName => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get createdat => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;

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
  $Res call(
      {String description,
      int amount,
      String traxId,
      String planName,
      String status,
      DateTime createdat,
      String paymentMethod});
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
    Object? description = freezed,
    Object? amount = freezed,
    Object? traxId = freezed,
    Object? planName = freezed,
    Object? status = freezed,
    Object? createdat = freezed,
    Object? paymentMethod = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      traxId: traxId == freezed
          ? _value.traxId
          : traxId // ignore: cast_nullable_to_non_nullable
              as String,
      planName: planName == freezed
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdat: createdat == freezed
          ? _value.createdat
          : createdat // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call(
      {String description,
      int amount,
      String traxId,
      String planName,
      String status,
      DateTime createdat,
      String paymentMethod});
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
    Object? description = freezed,
    Object? amount = freezed,
    Object? traxId = freezed,
    Object? planName = freezed,
    Object? status = freezed,
    Object? createdat = freezed,
    Object? paymentMethod = freezed,
  }) {
    return _then(_WithdrawalItemDTO(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      traxId: traxId == freezed
          ? _value.traxId
          : traxId // ignore: cast_nullable_to_non_nullable
              as String,
      planName: planName == freezed
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdat: createdat == freezed
          ? _value.createdat
          : createdat // ignore: cast_nullable_to_non_nullable
              as DateTime,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WithdrawalItemDTO extends _WithdrawalItemDTO {
  const _$_WithdrawalItemDTO(
      {required this.description,
      required this.amount,
      required this.traxId,
      required this.planName,
      required this.status,
      required this.createdat,
      required this.paymentMethod})
      : super._();

  factory _$_WithdrawalItemDTO.fromJson(Map<String, dynamic> json) =>
      _$$_WithdrawalItemDTOFromJson(json);

  @override
  final String description;
  @override
  final int amount;
  @override
  final String traxId;
  @override
  final String planName;
  @override
  final String status;
  @override
  final DateTime createdat;
  @override
  final String paymentMethod;

  @override
  String toString() {
    return 'WithdrawalItemDTO(description: $description, amount: $amount, traxId: $traxId, planName: $planName, status: $status, createdat: $createdat, paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithdrawalItemDTO &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.traxId, traxId) &&
            const DeepCollectionEquality().equals(other.planName, planName) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.createdat, createdat) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethod, paymentMethod));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(traxId),
      const DeepCollectionEquality().hash(planName),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(createdat),
      const DeepCollectionEquality().hash(paymentMethod));

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
      {required String description,
      required int amount,
      required String traxId,
      required String planName,
      required String status,
      required DateTime createdat,
      required String paymentMethod}) = _$_WithdrawalItemDTO;
  const _WithdrawalItemDTO._() : super._();

  factory _WithdrawalItemDTO.fromJson(Map<String, dynamic> json) =
      _$_WithdrawalItemDTO.fromJson;

  @override
  String get description;
  @override
  int get amount;
  @override
  String get traxId;
  @override
  String get planName;
  @override
  String get status;
  @override
  DateTime get createdat;
  @override
  String get paymentMethod;
  @override
  @JsonKey(ignore: true)
  _$WithdrawalItemDTOCopyWith<_WithdrawalItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
