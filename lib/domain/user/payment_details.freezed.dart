// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PaymentDetailsTearOff {
  const _$PaymentDetailsTearOff();

  _PaymentDetails call(
      {required String description,
      required int amount,
      required DateTime createdat,
      required Status status,
      required String traxId,
      required String paymentMethod}) {
    return _PaymentDetails(
      description: description,
      amount: amount,
      createdat: createdat,
      status: status,
      traxId: traxId,
      paymentMethod: paymentMethod,
    );
  }
}

/// @nodoc
const $PaymentDetails = _$PaymentDetailsTearOff();

/// @nodoc
mixin _$PaymentDetails {
  String get description => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  DateTime get createdat => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String get traxId => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentDetailsCopyWith<PaymentDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDetailsCopyWith<$Res> {
  factory $PaymentDetailsCopyWith(
          PaymentDetails value, $Res Function(PaymentDetails) then) =
      _$PaymentDetailsCopyWithImpl<$Res>;
  $Res call(
      {String description,
      int amount,
      DateTime createdat,
      Status status,
      String traxId,
      String paymentMethod});
}

/// @nodoc
class _$PaymentDetailsCopyWithImpl<$Res>
    implements $PaymentDetailsCopyWith<$Res> {
  _$PaymentDetailsCopyWithImpl(this._value, this._then);

  final PaymentDetails _value;
  // ignore: unused_field
  final $Res Function(PaymentDetails) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? amount = freezed,
    Object? createdat = freezed,
    Object? status = freezed,
    Object? traxId = freezed,
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
      createdat: createdat == freezed
          ? _value.createdat
          : createdat // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      traxId: traxId == freezed
          ? _value.traxId
          : traxId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PaymentDetailsCopyWith<$Res>
    implements $PaymentDetailsCopyWith<$Res> {
  factory _$PaymentDetailsCopyWith(
          _PaymentDetails value, $Res Function(_PaymentDetails) then) =
      __$PaymentDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String description,
      int amount,
      DateTime createdat,
      Status status,
      String traxId,
      String paymentMethod});
}

/// @nodoc
class __$PaymentDetailsCopyWithImpl<$Res>
    extends _$PaymentDetailsCopyWithImpl<$Res>
    implements _$PaymentDetailsCopyWith<$Res> {
  __$PaymentDetailsCopyWithImpl(
      _PaymentDetails _value, $Res Function(_PaymentDetails) _then)
      : super(_value, (v) => _then(v as _PaymentDetails));

  @override
  _PaymentDetails get _value => super._value as _PaymentDetails;

  @override
  $Res call({
    Object? description = freezed,
    Object? amount = freezed,
    Object? createdat = freezed,
    Object? status = freezed,
    Object? traxId = freezed,
    Object? paymentMethod = freezed,
  }) {
    return _then(_PaymentDetails(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      createdat: createdat == freezed
          ? _value.createdat
          : createdat // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      traxId: traxId == freezed
          ? _value.traxId
          : traxId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentMethod: paymentMethod == freezed
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PaymentDetails extends _PaymentDetails {
  const _$_PaymentDetails(
      {required this.description,
      required this.amount,
      required this.createdat,
      required this.status,
      required this.traxId,
      required this.paymentMethod})
      : super._();

  @override
  final String description;
  @override
  final int amount;
  @override
  final DateTime createdat;
  @override
  final Status status;
  @override
  final String traxId;
  @override
  final String paymentMethod;

  @override
  String toString() {
    return 'PaymentDetails(description: $description, amount: $amount, createdat: $createdat, status: $status, traxId: $traxId, paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentDetails &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.createdat, createdat) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.traxId, traxId) &&
            const DeepCollectionEquality()
                .equals(other.paymentMethod, paymentMethod));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(createdat),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(traxId),
      const DeepCollectionEquality().hash(paymentMethod));

  @JsonKey(ignore: true)
  @override
  _$PaymentDetailsCopyWith<_PaymentDetails> get copyWith =>
      __$PaymentDetailsCopyWithImpl<_PaymentDetails>(this, _$identity);
}

abstract class _PaymentDetails extends PaymentDetails {
  const factory _PaymentDetails(
      {required String description,
      required int amount,
      required DateTime createdat,
      required Status status,
      required String traxId,
      required String paymentMethod}) = _$_PaymentDetails;
  const _PaymentDetails._() : super._();

  @override
  String get description;
  @override
  int get amount;
  @override
  DateTime get createdat;
  @override
  Status get status;
  @override
  String get traxId;
  @override
  String get paymentMethod;
  @override
  @JsonKey(ignore: true)
  _$PaymentDetailsCopyWith<_PaymentDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
