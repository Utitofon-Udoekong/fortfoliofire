// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'investment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InvestmentStateTearOff {
  const _$InvestmentStateTearOff();

  _InvestmentState call(
      {required String planName,
      required String duration,
      required String amountInvested,
      required int roi,
      required String method,
      required bool agreementAccepted}) {
    return _InvestmentState(
      planName: planName,
      duration: duration,
      amountInvested: amountInvested,
      roi: roi,
      method: method,
      agreementAccepted: agreementAccepted,
    );
  }
}

/// @nodoc
const $InvestmentState = _$InvestmentStateTearOff();

/// @nodoc
mixin _$InvestmentState {
  String get planName => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get amountInvested => throw _privateConstructorUsedError;
  int get roi => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  bool get agreementAccepted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvestmentStateCopyWith<InvestmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestmentStateCopyWith<$Res> {
  factory $InvestmentStateCopyWith(
          InvestmentState value, $Res Function(InvestmentState) then) =
      _$InvestmentStateCopyWithImpl<$Res>;
  $Res call(
      {String planName,
      String duration,
      String amountInvested,
      int roi,
      String method,
      bool agreementAccepted});
}

/// @nodoc
class _$InvestmentStateCopyWithImpl<$Res>
    implements $InvestmentStateCopyWith<$Res> {
  _$InvestmentStateCopyWithImpl(this._value, this._then);

  final InvestmentState _value;
  // ignore: unused_field
  final $Res Function(InvestmentState) _then;

  @override
  $Res call({
    Object? planName = freezed,
    Object? duration = freezed,
    Object? amountInvested = freezed,
    Object? roi = freezed,
    Object? method = freezed,
    Object? agreementAccepted = freezed,
  }) {
    return _then(_value.copyWith(
      planName: planName == freezed
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      amountInvested: amountInvested == freezed
          ? _value.amountInvested
          : amountInvested // ignore: cast_nullable_to_non_nullable
              as String,
      roi: roi == freezed
          ? _value.roi
          : roi // ignore: cast_nullable_to_non_nullable
              as int,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      agreementAccepted: agreementAccepted == freezed
          ? _value.agreementAccepted
          : agreementAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InvestmentStateCopyWith<$Res>
    implements $InvestmentStateCopyWith<$Res> {
  factory _$InvestmentStateCopyWith(
          _InvestmentState value, $Res Function(_InvestmentState) then) =
      __$InvestmentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String planName,
      String duration,
      String amountInvested,
      int roi,
      String method,
      bool agreementAccepted});
}

/// @nodoc
class __$InvestmentStateCopyWithImpl<$Res>
    extends _$InvestmentStateCopyWithImpl<$Res>
    implements _$InvestmentStateCopyWith<$Res> {
  __$InvestmentStateCopyWithImpl(
      _InvestmentState _value, $Res Function(_InvestmentState) _then)
      : super(_value, (v) => _then(v as _InvestmentState));

  @override
  _InvestmentState get _value => super._value as _InvestmentState;

  @override
  $Res call({
    Object? planName = freezed,
    Object? duration = freezed,
    Object? amountInvested = freezed,
    Object? roi = freezed,
    Object? method = freezed,
    Object? agreementAccepted = freezed,
  }) {
    return _then(_InvestmentState(
      planName: planName == freezed
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      amountInvested: amountInvested == freezed
          ? _value.amountInvested
          : amountInvested // ignore: cast_nullable_to_non_nullable
              as String,
      roi: roi == freezed
          ? _value.roi
          : roi // ignore: cast_nullable_to_non_nullable
              as int,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      agreementAccepted: agreementAccepted == freezed
          ? _value.agreementAccepted
          : agreementAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InvestmentState extends _InvestmentState {
  const _$_InvestmentState(
      {required this.planName,
      required this.duration,
      required this.amountInvested,
      required this.roi,
      required this.method,
      required this.agreementAccepted})
      : super._();

  @override
  final String planName;
  @override
  final String duration;
  @override
  final String amountInvested;
  @override
  final int roi;
  @override
  final String method;
  @override
  final bool agreementAccepted;

  @override
  String toString() {
    return 'InvestmentState(planName: $planName, duration: $duration, amountInvested: $amountInvested, roi: $roi, method: $method, agreementAccepted: $agreementAccepted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvestmentState &&
            const DeepCollectionEquality().equals(other.planName, planName) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality()
                .equals(other.amountInvested, amountInvested) &&
            const DeepCollectionEquality().equals(other.roi, roi) &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality()
                .equals(other.agreementAccepted, agreementAccepted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(planName),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(amountInvested),
      const DeepCollectionEquality().hash(roi),
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(agreementAccepted));

  @JsonKey(ignore: true)
  @override
  _$InvestmentStateCopyWith<_InvestmentState> get copyWith =>
      __$InvestmentStateCopyWithImpl<_InvestmentState>(this, _$identity);
}

abstract class _InvestmentState extends InvestmentState {
  const factory _InvestmentState(
      {required String planName,
      required String duration,
      required String amountInvested,
      required int roi,
      required String method,
      required bool agreementAccepted}) = _$_InvestmentState;
  const _InvestmentState._() : super._();

  @override
  String get planName;
  @override
  String get duration;
  @override
  String get amountInvested;
  @override
  int get roi;
  @override
  String get method;
  @override
  bool get agreementAccepted;
  @override
  @JsonKey(ignore: true)
  _$InvestmentStateCopyWith<_InvestmentState> get copyWith =>
      throw _privateConstructorUsedError;
}
