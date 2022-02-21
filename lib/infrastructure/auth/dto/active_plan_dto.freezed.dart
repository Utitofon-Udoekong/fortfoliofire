// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'active_plan_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
