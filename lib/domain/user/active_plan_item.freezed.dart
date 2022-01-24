// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'active_plan_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ActivePlanItemTearOff {
  const _$ActivePlanItemTearOff();

  _ActivePlanItem call(
      {required UniqueId id,
      required int amount,
      required String planName,
      required int duration,
      required int accountBalance,
      required int roi}) {
    return _ActivePlanItem(
      id: id,
      amount: amount,
      planName: planName,
      duration: duration,
      accountBalance: accountBalance,
      roi: roi,
    );
  }
}

/// @nodoc
const $ActivePlanItem = _$ActivePlanItemTearOff();

/// @nodoc
mixin _$ActivePlanItem {
  UniqueId get id => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get planName => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  int get accountBalance => throw _privateConstructorUsedError;
  int get roi => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActivePlanItemCopyWith<ActivePlanItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivePlanItemCopyWith<$Res> {
  factory $ActivePlanItemCopyWith(
          ActivePlanItem value, $Res Function(ActivePlanItem) then) =
      _$ActivePlanItemCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      int amount,
      String planName,
      int duration,
      int accountBalance,
      int roi});
}

/// @nodoc
class _$ActivePlanItemCopyWithImpl<$Res>
    implements $ActivePlanItemCopyWith<$Res> {
  _$ActivePlanItemCopyWithImpl(this._value, this._then);

  final ActivePlanItem _value;
  // ignore: unused_field
  final $Res Function(ActivePlanItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? planName = freezed,
    Object? duration = freezed,
    Object? accountBalance = freezed,
    Object? roi = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      planName: planName == freezed
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      accountBalance: accountBalance == freezed
          ? _value.accountBalance
          : accountBalance // ignore: cast_nullable_to_non_nullable
              as int,
      roi: roi == freezed
          ? _value.roi
          : roi // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ActivePlanItemCopyWith<$Res>
    implements $ActivePlanItemCopyWith<$Res> {
  factory _$ActivePlanItemCopyWith(
          _ActivePlanItem value, $Res Function(_ActivePlanItem) then) =
      __$ActivePlanItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      int amount,
      String planName,
      int duration,
      int accountBalance,
      int roi});
}

/// @nodoc
class __$ActivePlanItemCopyWithImpl<$Res>
    extends _$ActivePlanItemCopyWithImpl<$Res>
    implements _$ActivePlanItemCopyWith<$Res> {
  __$ActivePlanItemCopyWithImpl(
      _ActivePlanItem _value, $Res Function(_ActivePlanItem) _then)
      : super(_value, (v) => _then(v as _ActivePlanItem));

  @override
  _ActivePlanItem get _value => super._value as _ActivePlanItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? planName = freezed,
    Object? duration = freezed,
    Object? accountBalance = freezed,
    Object? roi = freezed,
  }) {
    return _then(_ActivePlanItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      planName: planName == freezed
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      accountBalance: accountBalance == freezed
          ? _value.accountBalance
          : accountBalance // ignore: cast_nullable_to_non_nullable
              as int,
      roi: roi == freezed
          ? _value.roi
          : roi // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ActivePlanItem implements _ActivePlanItem {
  const _$_ActivePlanItem(
      {required this.id,
      required this.amount,
      required this.planName,
      required this.duration,
      required this.accountBalance,
      required this.roi});

  @override
  final UniqueId id;
  @override
  final int amount;
  @override
  final String planName;
  @override
  final int duration;
  @override
  final int accountBalance;
  @override
  final int roi;

  @override
  String toString() {
    return 'ActivePlanItem(id: $id, amount: $amount, planName: $planName, duration: $duration, accountBalance: $accountBalance, roi: $roi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActivePlanItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.planName, planName) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality()
                .equals(other.accountBalance, accountBalance) &&
            const DeepCollectionEquality().equals(other.roi, roi));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(planName),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(accountBalance),
      const DeepCollectionEquality().hash(roi));

  @JsonKey(ignore: true)
  @override
  _$ActivePlanItemCopyWith<_ActivePlanItem> get copyWith =>
      __$ActivePlanItemCopyWithImpl<_ActivePlanItem>(this, _$identity);
}

abstract class _ActivePlanItem implements ActivePlanItem {
  const factory _ActivePlanItem(
      {required UniqueId id,
      required int amount,
      required String planName,
      required int duration,
      required int accountBalance,
      required int roi}) = _$_ActivePlanItem;

  @override
  UniqueId get id;
  @override
  int get amount;
  @override
  String get planName;
  @override
  int get duration;
  @override
  int get accountBalance;
  @override
  int get roi;
  @override
  @JsonKey(ignore: true)
  _$ActivePlanItemCopyWith<_ActivePlanItem> get copyWith =>
      throw _privateConstructorUsedError;
}
