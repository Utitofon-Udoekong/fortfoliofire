// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'local_notification_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocalNotificationState {
  bool get sent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalNotificationStateCopyWith<LocalNotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalNotificationStateCopyWith<$Res> {
  factory $LocalNotificationStateCopyWith(LocalNotificationState value,
          $Res Function(LocalNotificationState) then) =
      _$LocalNotificationStateCopyWithImpl<$Res>;
  $Res call({bool sent});
}

/// @nodoc
class _$LocalNotificationStateCopyWithImpl<$Res>
    implements $LocalNotificationStateCopyWith<$Res> {
  _$LocalNotificationStateCopyWithImpl(this._value, this._then);

  final LocalNotificationState _value;
  // ignore: unused_field
  final $Res Function(LocalNotificationState) _then;

  @override
  $Res call({
    Object? sent = freezed,
  }) {
    return _then(_value.copyWith(
      sent: sent == freezed
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_LocalNotificationStateCopyWith<$Res>
    implements $LocalNotificationStateCopyWith<$Res> {
  factory _$$_LocalNotificationStateCopyWith(_$_LocalNotificationState value,
          $Res Function(_$_LocalNotificationState) then) =
      __$$_LocalNotificationStateCopyWithImpl<$Res>;
  @override
  $Res call({bool sent});
}

/// @nodoc
class __$$_LocalNotificationStateCopyWithImpl<$Res>
    extends _$LocalNotificationStateCopyWithImpl<$Res>
    implements _$$_LocalNotificationStateCopyWith<$Res> {
  __$$_LocalNotificationStateCopyWithImpl(_$_LocalNotificationState _value,
      $Res Function(_$_LocalNotificationState) _then)
      : super(_value, (v) => _then(v as _$_LocalNotificationState));

  @override
  _$_LocalNotificationState get _value =>
      super._value as _$_LocalNotificationState;

  @override
  $Res call({
    Object? sent = freezed,
  }) {
    return _then(_$_LocalNotificationState(
      sent: sent == freezed
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LocalNotificationState implements _LocalNotificationState {
  const _$_LocalNotificationState({required this.sent});

  @override
  final bool sent;

  @override
  String toString() {
    return 'LocalNotificationState(sent: $sent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalNotificationState &&
            const DeepCollectionEquality().equals(other.sent, sent));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(sent));

  @JsonKey(ignore: true)
  @override
  _$$_LocalNotificationStateCopyWith<_$_LocalNotificationState> get copyWith =>
      __$$_LocalNotificationStateCopyWithImpl<_$_LocalNotificationState>(
          this, _$identity);
}

abstract class _LocalNotificationState implements LocalNotificationState {
  const factory _LocalNotificationState({required final bool sent}) =
      _$_LocalNotificationState;

  @override
  bool get sent => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LocalNotificationStateCopyWith<_$_LocalNotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
