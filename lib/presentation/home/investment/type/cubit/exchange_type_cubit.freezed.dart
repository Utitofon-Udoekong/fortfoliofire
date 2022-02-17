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

  _ExchangeTypeState call({required String exchangeType}) {
    return _ExchangeTypeState(
      exchangeType: exchangeType,
    );
  }
}

/// @nodoc
const $ExchangeTypeState = _$ExchangeTypeStateTearOff();

/// @nodoc
mixin _$ExchangeTypeState {
  String get exchangeType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExchangeTypeStateCopyWith<ExchangeTypeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeTypeStateCopyWith<$Res> {
  factory $ExchangeTypeStateCopyWith(
          ExchangeTypeState value, $Res Function(ExchangeTypeState) then) =
      _$ExchangeTypeStateCopyWithImpl<$Res>;
  $Res call({String exchangeType});
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
  }) {
    return _then(_value.copyWith(
      exchangeType: exchangeType == freezed
          ? _value.exchangeType
          : exchangeType // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String exchangeType});
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
  }) {
    return _then(_ExchangeTypeState(
      exchangeType: exchangeType == freezed
          ? _value.exchangeType
          : exchangeType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ExchangeTypeState extends _ExchangeTypeState {
  const _$_ExchangeTypeState({required this.exchangeType}) : super._();

  @override
  final String exchangeType;

  @override
  String toString() {
    return 'ExchangeTypeState(exchangeType: $exchangeType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExchangeTypeState &&
            const DeepCollectionEquality()
                .equals(other.exchangeType, exchangeType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(exchangeType));

  @JsonKey(ignore: true)
  @override
  _$ExchangeTypeStateCopyWith<_ExchangeTypeState> get copyWith =>
      __$ExchangeTypeStateCopyWithImpl<_ExchangeTypeState>(this, _$identity);
}

abstract class _ExchangeTypeState extends ExchangeTypeState {
  const factory _ExchangeTypeState({required String exchangeType}) =
      _$_ExchangeTypeState;
  const _ExchangeTypeState._() : super._();

  @override
  String get exchangeType;
  @override
  @JsonKey(ignore: true)
  _$ExchangeTypeStateCopyWith<_ExchangeTypeState> get copyWith =>
      throw _privateConstructorUsedError;
}
