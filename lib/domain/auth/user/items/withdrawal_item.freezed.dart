// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'withdrawal_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WithdrawalItemTearOff {
  const _$WithdrawalItemTearOff();

  _WithdrawalItem call(
      {required UniqueId id,
      required int amount,
      required String planName,
      required bool processed}) {
    return _WithdrawalItem(
      id: id,
      amount: amount,
      planName: planName,
      processed: processed,
    );
  }
}

/// @nodoc
const $WithdrawalItem = _$WithdrawalItemTearOff();

/// @nodoc
mixin _$WithdrawalItem {
  UniqueId get id => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get planName => throw _privateConstructorUsedError;
  bool get processed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WithdrawalItemCopyWith<WithdrawalItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawalItemCopyWith<$Res> {
  factory $WithdrawalItemCopyWith(
          WithdrawalItem value, $Res Function(WithdrawalItem) then) =
      _$WithdrawalItemCopyWithImpl<$Res>;
  $Res call({UniqueId id, int amount, String planName, bool processed});
}

/// @nodoc
class _$WithdrawalItemCopyWithImpl<$Res>
    implements $WithdrawalItemCopyWith<$Res> {
  _$WithdrawalItemCopyWithImpl(this._value, this._then);

  final WithdrawalItem _value;
  // ignore: unused_field
  final $Res Function(WithdrawalItem) _then;

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
abstract class _$WithdrawalItemCopyWith<$Res>
    implements $WithdrawalItemCopyWith<$Res> {
  factory _$WithdrawalItemCopyWith(
          _WithdrawalItem value, $Res Function(_WithdrawalItem) then) =
      __$WithdrawalItemCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, int amount, String planName, bool processed});
}

/// @nodoc
class __$WithdrawalItemCopyWithImpl<$Res>
    extends _$WithdrawalItemCopyWithImpl<$Res>
    implements _$WithdrawalItemCopyWith<$Res> {
  __$WithdrawalItemCopyWithImpl(
      _WithdrawalItem _value, $Res Function(_WithdrawalItem) _then)
      : super(_value, (v) => _then(v as _WithdrawalItem));

  @override
  _WithdrawalItem get _value => super._value as _WithdrawalItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
    Object? planName = freezed,
    Object? processed = freezed,
  }) {
    return _then(_WithdrawalItem(
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

class _$_WithdrawalItem implements _WithdrawalItem {
  const _$_WithdrawalItem(
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
    return 'WithdrawalItem(id: $id, amount: $amount, planName: $planName, processed: $processed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithdrawalItem &&
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
  _$WithdrawalItemCopyWith<_WithdrawalItem> get copyWith =>
      __$WithdrawalItemCopyWithImpl<_WithdrawalItem>(this, _$identity);
}

abstract class _WithdrawalItem implements WithdrawalItem {
  const factory _WithdrawalItem(
      {required UniqueId id,
      required int amount,
      required String planName,
      required bool processed}) = _$_WithdrawalItem;

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
  _$WithdrawalItemCopyWith<_WithdrawalItem> get copyWith =>
      throw _privateConstructorUsedError;
}
