// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$NetworkStateCopyWithImpl<$Res, NetworkState>;
  @useResult
  $Res call({bool connected, bool disconnected, bool loading});
}

/// @nodoc
class _$NetworkStateCopyWithImpl<$Res, $Val extends NetworkState>
    implements $NetworkStateCopyWith<$Res> {
  _$NetworkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connected = null,
    Object? disconnected = null,
    Object? loading = null,
  }) {
    return _then(_value.copyWith(
      connected: null == connected
          ? _value.connected
          : connected // ignore: cast_nullable_to_non_nullable
              as bool,
      disconnected: null == disconnected
          ? _value.disconnected
          : disconnected // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NetworkStateCopyWith<$Res>
    implements $NetworkStateCopyWith<$Res> {
  factory _$$_NetworkStateCopyWith(
          _$_NetworkState value, $Res Function(_$_NetworkState) then) =
      __$$_NetworkStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool connected, bool disconnected, bool loading});
}

/// @nodoc
class __$$_NetworkStateCopyWithImpl<$Res>
    extends _$NetworkStateCopyWithImpl<$Res, _$_NetworkState>
    implements _$$_NetworkStateCopyWith<$Res> {
  __$$_NetworkStateCopyWithImpl(
      _$_NetworkState _value, $Res Function(_$_NetworkState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connected = null,
    Object? disconnected = null,
    Object? loading = null,
  }) {
    return _then(_$_NetworkState(
      connected: null == connected
          ? _value.connected
          : connected // ignore: cast_nullable_to_non_nullable
              as bool,
      disconnected: null == disconnected
          ? _value.disconnected
          : disconnected // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
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
            other is _$_NetworkState &&
            (identical(other.connected, connected) ||
                other.connected == connected) &&
            (identical(other.disconnected, disconnected) ||
                other.disconnected == disconnected) &&
            (identical(other.loading, loading) || other.loading == loading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, connected, disconnected, loading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NetworkStateCopyWith<_$_NetworkState> get copyWith =>
      __$$_NetworkStateCopyWithImpl<_$_NetworkState>(this, _$identity);
}

abstract class _NetworkState implements NetworkState {
  const factory _NetworkState(
      {required final bool connected,
      required final bool disconnected,
      required final bool loading}) = _$_NetworkState;

  @override
  bool get connected;
  @override
  bool get disconnected;
  @override
  bool get loading;
  @override
  @JsonKey(ignore: true)
  _$$_NetworkStateCopyWith<_$_NetworkState> get copyWith =>
      throw _privateConstructorUsedError;
}
