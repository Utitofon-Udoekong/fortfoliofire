// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'deposit_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DepositItemTearOff {
  const _$DepositItemTearOff();

  _DepositItem call(
      {required UniqueId id,
      required int amount,
      required String planName,
      required bool processed}) {
    return _DepositItem(
      id: id,
      amount: amount,
      planName: planName,
      processed: processed,
    );
  }
}

/// @nodoc
const $DepositItem = _$DepositItemTearOff();

/// @nodoc
mixin _$DepositItem {
  UniqueId get id => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get planName => throw _privateConstructorUsedError;
  bool get processed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DepositItemCopyWith<DepositItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepositItemCopyWith<$Res> {
  factory $DepositItemCopyWith(
          DepositItem value, $Res Function(DepositItem) then) =
      _$DepositItemCopyWithImpl<$Res>;
  $Res call({UniqueId id, int amount, String planName, bool processed});
}

/// @nodoc
class _$DepositItemCopyWithImpl<$Res> implements $DepositItemCopyWith<$Res> {
  _$DepositItemCopyWithImpl(this._value, this._then);

  final DepositItem _value;
  // ignore: unused_field
  final $Res Function(DepositItem) _then;

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
              as UniqueId,
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
abstract class _$DepositItemCopyWith<$Res>
    implements $DepositItemCopyWith<$Res> {
  factory _$DepositItemCopyWith(
          _DepositItem value, $Res Function(_DepositItem) then) =
      __$DepositItemCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, int amount, String planName, bool processed});
}

/// @nodoc
class __$DepositItemCopyWithImpl<$Res> extends _$DepositItemCopyWithImpl<$Res>
    implements _$DepositItemCopyWith<$Res> {
  __$DepositItemCopyWithImpl(
      _DepositItem _value, $Res Function(_DepositItem) _then)
      : super(_value, (v) => _then(v as _DepositItem));

  @override
  _DepositItem get _value => super._value as _DepositItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? planName = freezed,
    Object? processed = freezed,
  }) {
    return _then(_DepositItem(
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
      processed: processed == freezed
          ? _value.processed
          : processed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DepositItem implements _DepositItem {
  const _$_DepositItem(
      {required this.id,
      required this.amount,
      required this.planName,
      required this.processed});

  @override
  final UniqueId id;
  @override
  final int amount;
  @override
  final String planName;
  @override
  final bool processed;

  @override
  String toString() {
    return 'DepositItem(id: $id, amount: $amount, planName: $planName, processed: $processed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DepositItem &&
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
  _$DepositItemCopyWith<_DepositItem> get copyWith =>
      __$DepositItemCopyWithImpl<_DepositItem>(this, _$identity);
}

abstract class _DepositItem implements DepositItem {
  const factory _DepositItem(
      {required UniqueId id,
      required int amount,
      required String planName,
      required bool processed}) = _$_DepositItem;

  @override
  UniqueId get id;
  @override
  int get amount;
  @override
  String get planName;
  @override
  bool get processed;
  @override
  @JsonKey(ignore: true)
  _$DepositItemCopyWith<_DepositItem> get copyWith =>
      throw _privateConstructorUsedError;
}
