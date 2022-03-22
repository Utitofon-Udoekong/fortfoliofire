// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'internet_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InternetStateTearOff {
  const _$InternetStateTearOff();

  _Initial call({required bool connected, required bool disconnected}) {
    return _Initial(
      connected: connected,
      disconnected: disconnected,
    );
  }
}

/// @nodoc
const $InternetState = _$InternetStateTearOff();

/// @nodoc
mixin _$InternetState {
  bool get connected => throw _privateConstructorUsedError;
  bool get disconnected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InternetStateCopyWith<InternetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetStateCopyWith<$Res> {
  factory $InternetStateCopyWith(
          InternetState value, $Res Function(InternetState) then) =
      _$InternetStateCopyWithImpl<$Res>;
  $Res call({bool connected, bool disconnected});
}

/// @nodoc
class _$InternetStateCopyWithImpl<$Res>
    implements $InternetStateCopyWith<$Res> {
  _$InternetStateCopyWithImpl(this._value, this._then);

  final InternetState _value;
  // ignore: unused_field
  final $Res Function(InternetState) _then;

  @override
  $Res call({
    Object? connected = freezed,
    Object? disconnected = freezed,
  }) {
    return _then(_value.copyWith(
      connected: connected == freezed
          ? _value.connected
          : connected // ignore: cast_nullable_to_non_nullable
              as bool,
      disconnected: disconnected == freezed
          ? _value.disconnected
          : disconnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $InternetStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({bool connected, bool disconnected});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$InternetStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? connected = freezed,
    Object? disconnected = freezed,
  }) {
    return _then(_Initial(
      connected: connected == freezed
          ? _value.connected
          : connected // ignore: cast_nullable_to_non_nullable
              as bool,
      disconnected: disconnected == freezed
          ? _value.disconnected
          : disconnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.connected, required this.disconnected});

  @override
  final bool connected;
  @override
  final bool disconnected;

  @override
  String toString() {
    return 'InternetState(connected: $connected, disconnected: $disconnected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.connected, connected) &&
            const DeepCollectionEquality()
                .equals(other.disconnected, disconnected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(connected),
      const DeepCollectionEquality().hash(disconnected));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements InternetState {
  const factory _Initial(
      {required bool connected, required bool disconnected}) = _$_Initial;

  @override
  bool get connected;
  @override
  bool get disconnected;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
