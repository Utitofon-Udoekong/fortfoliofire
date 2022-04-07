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
      {required String description,
      required int amount,
      required String traxId,
      required String uid,
      required String planName,
      required String status,
      required DateTime createdat,
      required String paymentMethod}) {
    return _WithdrawalItem(
      description: description,
      amount: amount,
      traxId: traxId,
      uid: uid,
      planName: planName,
      status: status,
      createdat: createdat,
      paymentMethod: paymentMethod,
    );
  }
}

/// @nodoc
const $WithdrawalItem = _$WithdrawalItemTearOff();

/// @nodoc
mixin _$WithdrawalItem {
  String get description => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get traxId => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String get planName => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get createdat => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WithdrawalItemCopyWith<WithdrawalItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawalItemCopyWith<$Res> {
  factory $WithdrawalItemCopyWith(
          WithdrawalItem value, $Res Function(WithdrawalItem) then) =
      _$WithdrawalItemCopyWithImpl<$Res>;
  $Res call(
      {String description,
      int amount,
      String traxId,
      String uid,
      String planName,
      String status,
      DateTime createdat,
      String paymentMethod});
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
    Object? description = freezed,
    Object? amount = freezed,
    Object? traxId = freezed,
    Object? uid = freezed,
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
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
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
abstract class _$WithdrawalItemCopyWith<$Res>
    implements $WithdrawalItemCopyWith<$Res> {
  factory _$WithdrawalItemCopyWith(
          _WithdrawalItem value, $Res Function(_WithdrawalItem) then) =
      __$WithdrawalItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String description,
      int amount,
      String traxId,
      String uid,
      String planName,
      String status,
      DateTime createdat,
      String paymentMethod});
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
    Object? description = freezed,
    Object? amount = freezed,
    Object? traxId = freezed,
    Object? uid = freezed,
    Object? planName = freezed,
    Object? status = freezed,
    Object? createdat = freezed,
    Object? paymentMethod = freezed,
  }) {
    return _then(_WithdrawalItem(
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
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
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

class _$_WithdrawalItem extends _WithdrawalItem {
  const _$_WithdrawalItem(
      {required this.description,
      required this.amount,
      required this.traxId,
      required this.uid,
      required this.planName,
      required this.status,
      required this.createdat,
      required this.paymentMethod})
      : super._();

  @override
  final String description;
  @override
  final int amount;
  @override
  final String traxId;
  @override
  final String uid;
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
    return 'WithdrawalItem(description: $description, amount: $amount, traxId: $traxId, uid: $uid, planName: $planName, status: $status, createdat: $createdat, paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithdrawalItem &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.traxId, traxId) &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
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
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(planName),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(createdat),
      const DeepCollectionEquality().hash(paymentMethod));

  @JsonKey(ignore: true)
  @override
  _$WithdrawalItemCopyWith<_WithdrawalItem> get copyWith =>
      __$WithdrawalItemCopyWithImpl<_WithdrawalItem>(this, _$identity);
}

abstract class _WithdrawalItem extends WithdrawalItem {
  const factory _WithdrawalItem(
      {required String description,
      required int amount,
      required String traxId,
      required String uid,
      required String planName,
      required String status,
      required DateTime createdat,
      required String paymentMethod}) = _$_WithdrawalItem;
  const _WithdrawalItem._() : super._();

  @override
  String get description;
  @override
  int get amount;
  @override
  String get traxId;
  @override
  String get uid;
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
  _$WithdrawalItemCopyWith<_WithdrawalItem> get copyWith =>
      throw _privateConstructorUsedError;
}
