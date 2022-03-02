// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exchange_type_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExchangeTypeStateTearOff {
  const _$ExchangeTypeStateTearOff();

  _ExchangeTypeState call(
      {required String exchangeType,
      required List<bool> isSelected,
      required List<int> durations,
      required int duration}) {
    return _ExchangeTypeState(
      exchangeType: exchangeType,
      isSelected: isSelected,
      durations: durations,
      duration: duration,
    );
  }
}

/// @nodoc
const $ExchangeTypeState = _$ExchangeTypeStateTearOff();

/// @nodoc
mixin _$ExchangeTypeState {
  String get exchangeType => throw _privateConstructorUsedError;
  List<bool> get isSelected => throw _privateConstructorUsedError;
  List<int> get durations => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExchangeTypeStateCopyWith<ExchangeTypeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeTypeStateCopyWith<$Res> {
  factory $ExchangeTypeStateCopyWith(
          ExchangeTypeState value, $Res Function(ExchangeTypeState) then) =
      _$ExchangeTypeStateCopyWithImpl<$Res>;
  $Res call(
      {String exchangeType,
      List<bool> isSelected,
      List<int> durations,
      int duration});
}

/// @nodoc
class _$ExchangeTypeStateCopyWithImpl<$Res>
    implements $ExchangeTypeStateCopyWith<$Res> {
  _$ExchangeTypeStateCopyWithImpl(this._value, this._then);

  final ExchangeTypeState _value;
  // ignore: unused_field
  final $Res Function(ExchangeTypeState) _then;

  @override
  $Res call({
    Object? exchangeType = freezed,
    Object? isSelected = freezed,
    Object? durations = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      exchangeType: exchangeType == freezed
          ? _value.exchangeType
          : exchangeType // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      durations: durations == freezed
          ? _value.durations
          : durations // ignore: cast_nullable_to_non_nullable
              as List<int>,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ExchangeTypeStateCopyWith<$Res>
    implements $ExchangeTypeStateCopyWith<$Res> {
  factory _$ExchangeTypeStateCopyWith(
          _ExchangeTypeState value, $Res Function(_ExchangeTypeState) then) =
      __$ExchangeTypeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String exchangeType,
      List<bool> isSelected,
      List<int> durations,
      int duration});
}

/// @nodoc
class __$ExchangeTypeStateCopyWithImpl<$Res>
    extends _$ExchangeTypeStateCopyWithImpl<$Res>
    implements _$ExchangeTypeStateCopyWith<$Res> {
  __$ExchangeTypeStateCopyWithImpl(
      _ExchangeTypeState _value, $Res Function(_ExchangeTypeState) _then)
      : super(_value, (v) => _then(v as _ExchangeTypeState));

  @override
  _ExchangeTypeState get _value => super._value as _ExchangeTypeState;

  @override
  $Res call({
    Object? exchangeType = freezed,
    Object? isSelected = freezed,
    Object? durations = freezed,
    Object? duration = freezed,
  }) {
    return _then(_ExchangeTypeState(
      exchangeType: exchangeType == freezed
          ? _value.exchangeType
          : exchangeType // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      durations: durations == freezed
          ? _value.durations
          : durations // ignore: cast_nullable_to_non_nullable
              as List<int>,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ExchangeTypeState extends _ExchangeTypeState {
  const _$_ExchangeTypeState(
      {required this.exchangeType,
      required this.isSelected,
      required this.durations,
      required this.duration})
      : super._();

  @override
  final String exchangeType;
  @override
  final List<bool> isSelected;
  @override
  final List<int> durations;
  @override
  final int duration;

  @override
  String toString() {
    return 'ExchangeTypeState(exchangeType: $exchangeType, isSelected: $isSelected, durations: $durations, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExchangeTypeState &&
            const DeepCollectionEquality()
                .equals(other.exchangeType, exchangeType) &&
            const DeepCollectionEquality()
                .equals(other.isSelected, isSelected) &&
            const DeepCollectionEquality().equals(other.durations, durations) &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(exchangeType),
      const DeepCollectionEquality().hash(isSelected),
      const DeepCollectionEquality().hash(durations),
      const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
  _$ExchangeTypeStateCopyWith<_ExchangeTypeState> get copyWith =>
      __$ExchangeTypeStateCopyWithImpl<_ExchangeTypeState>(this, _$identity);
}

abstract class _ExchangeTypeState extends ExchangeTypeState {
  const factory _ExchangeTypeState(
      {required String exchangeType,
      required List<bool> isSelected,
      required List<int> durations,
      required int duration}) = _$_ExchangeTypeState;
  const _ExchangeTypeState._() : super._();

  @override
  String get exchangeType;
  @override
  List<bool> get isSelected;
  @override
  List<int> get durations;
  @override
  int get duration;
  @override
  @JsonKey(ignore: true)
  _$ExchangeTypeStateCopyWith<_ExchangeTypeState> get copyWith =>
      throw _privateConstructorUsedError;
}
