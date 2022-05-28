// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NetworkStateTearOff {
  const _$NetworkStateTearOff();

  _NetworkState call(
      {required bool connected,
      required bool disconnected,
      required bool loading}) {
    return _NetworkState(
      connected: connected,
      disconnected: disconnected,
      loading: loading,
    );
  }
}

/// @nodoc
const $NetworkState = _$NetworkStateTearOff();

/// @nodoc
mixin _$NetworkState {
  bool get connected => throw _privateConstructorUsedError;
  bool get disconnected => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkStateCopyWith<NetworkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkStateCopyWith<$Res> {
  factory $NetworkStateCopyWith(
          NetworkState value, $Res Function(NetworkState) then) =
      _$NetworkStateCopyWithImpl<$Res>;
  $Res call({bool connected, bool disconnected, bool loading});
}

/// @nodoc
class _$NetworkStateCopyWithImpl<$Res> implements $NetworkStateCopyWith<$Res> {
  _$NetworkStateCopyWithImpl(this._value, this._then);

  final NetworkState _value;
  // ignore: unused_field
  final $Res Function(NetworkState) _then;

  @override
  $Res call({
    Object? connected = freezed,
    Object? disconnected = freezed,
    Object? loading = freezed,
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
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$NetworkStateCopyWith<$Res>
    implements $NetworkStateCopyWith<$Res> {
  factory _$NetworkStateCopyWith(
          _NetworkState value, $Res Function(_NetworkState) then) =
      __$NetworkStateCopyWithImpl<$Res>;
  @override
  $Res call({bool connected, bool disconnected, bool loading});
}

/// @nodoc
class __$NetworkStateCopyWithImpl<$Res> extends _$NetworkStateCopyWithImpl<$Res>
    implements _$NetworkStateCopyWith<$Res> {
  __$NetworkStateCopyWithImpl(
      _NetworkState _value, $Res Function(_NetworkState) _then)
      : super(_value, (v) => _then(v as _NetworkState));

  @override
  _NetworkState get _value => super._value as _NetworkState;

  @override
  $Res call({
    Object? connected = freezed,
    Object? disconnected = freezed,
    Object? loading = freezed,
  }) {
    return _then(_NetworkState(
      connected: connected == freezed
          ? _value.connected
          : connected // ignore: cast_nullable_to_non_nullable
              as bool,
      disconnected: disconnected == freezed
          ? _value.disconnected
          : disconnected // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NetworkState implements _NetworkState {
  const _$_NetworkState(
      {required this.connected,
      required this.disconnected,
      required this.loading});

  @override
  final bool connected;
  @override
  final bool disconnected;
  @override
  final bool loading;

  @override
  String toString() {
    return 'NetworkState(connected: $connected, disconnected: $disconnected, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NetworkState &&
            const DeepCollectionEquality().equals(other.connected, connected) &&
            const DeepCollectionEquality()
                .equals(other.disconnected, disconnected) &&
            const DeepCollectionEquality().equals(other.loading, loading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(connected),
      const DeepCollectionEquality().hash(disconnected),
      const DeepCollectionEquality().hash(loading));

  @JsonKey(ignore: true)
  @override
  _$NetworkStateCopyWith<_NetworkState> get copyWith =>
      __$NetworkStateCopyWithImpl<_NetworkState>(this, _$identity);
}

abstract class _NetworkState implements NetworkState {
  const factory _NetworkState(
      {required bool connected,
      required bool disconnected,
      required bool loading}) = _$_NetworkState;

  @override
  bool get connected;
  @override
  bool get disconnected;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$NetworkStateCopyWith<_NetworkState> get copyWith =>
      throw _privateConstructorUsedError;
}
