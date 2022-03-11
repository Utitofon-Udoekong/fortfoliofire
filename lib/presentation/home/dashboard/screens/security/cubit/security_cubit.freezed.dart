// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'security_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SecurityStateTearOff {
  const _$SecurityStateTearOff();

  _SecurityState call(
      {required String emailAddress,
      required bool showSnackbar,
      required String failure,
      required String success}) {
    return _SecurityState(
      emailAddress: emailAddress,
      showSnackbar: showSnackbar,
      failure: failure,
      success: success,
    );
  }
}

/// @nodoc
const $SecurityState = _$SecurityStateTearOff();

/// @nodoc
mixin _$SecurityState {
  String get emailAddress => throw _privateConstructorUsedError;
  bool get showSnackbar => throw _privateConstructorUsedError;
  String get failure => throw _privateConstructorUsedError;
  String get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SecurityStateCopyWith<SecurityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecurityStateCopyWith<$Res> {
  factory $SecurityStateCopyWith(
          SecurityState value, $Res Function(SecurityState) then) =
      _$SecurityStateCopyWithImpl<$Res>;
  $Res call(
      {String emailAddress, bool showSnackbar, String failure, String success});
}

/// @nodoc
class _$SecurityStateCopyWithImpl<$Res>
    implements $SecurityStateCopyWith<$Res> {
  _$SecurityStateCopyWithImpl(this._value, this._then);

  final SecurityState _value;
  // ignore: unused_field
  final $Res Function(SecurityState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? showSnackbar = freezed,
    Object? failure = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      showSnackbar: showSnackbar == freezed
          ? _value.showSnackbar
          : showSnackbar // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SecurityStateCopyWith<$Res>
    implements $SecurityStateCopyWith<$Res> {
  factory _$SecurityStateCopyWith(
          _SecurityState value, $Res Function(_SecurityState) then) =
      __$SecurityStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String emailAddress, bool showSnackbar, String failure, String success});
}

/// @nodoc
class __$SecurityStateCopyWithImpl<$Res>
    extends _$SecurityStateCopyWithImpl<$Res>
    implements _$SecurityStateCopyWith<$Res> {
  __$SecurityStateCopyWithImpl(
      _SecurityState _value, $Res Function(_SecurityState) _then)
      : super(_value, (v) => _then(v as _SecurityState));

  @override
  _SecurityState get _value => super._value as _SecurityState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? showSnackbar = freezed,
    Object? failure = freezed,
    Object? success = freezed,
  }) {
    return _then(_SecurityState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      showSnackbar: showSnackbar == freezed
          ? _value.showSnackbar
          : showSnackbar // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SecurityState extends _SecurityState {
  const _$_SecurityState(
      {required this.emailAddress,
      required this.showSnackbar,
      required this.failure,
      required this.success})
      : super._();

  @override
  final String emailAddress;
  @override
  final bool showSnackbar;
  @override
  final String failure;
  @override
  final String success;

  @override
  String toString() {
    return 'SecurityState(emailAddress: $emailAddress, showSnackbar: $showSnackbar, failure: $failure, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SecurityState &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality()
                .equals(other.showSnackbar, showSnackbar) &&
            const DeepCollectionEquality().equals(other.failure, failure) &&
            const DeepCollectionEquality().equals(other.success, success));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(showSnackbar),
      const DeepCollectionEquality().hash(failure),
      const DeepCollectionEquality().hash(success));

  @JsonKey(ignore: true)
  @override
  _$SecurityStateCopyWith<_SecurityState> get copyWith =>
      __$SecurityStateCopyWithImpl<_SecurityState>(this, _$identity);
}

abstract class _SecurityState extends SecurityState {
  const factory _SecurityState(
      {required String emailAddress,
      required bool showSnackbar,
      required String failure,
      required String success}) = _$_SecurityState;
  const _SecurityState._() : super._();

  @override
  String get emailAddress;
  @override
  bool get showSnackbar;
  @override
  String get failure;
  @override
  String get success;
  @override
  @JsonKey(ignore: true)
  _$SecurityStateCopyWith<_SecurityState> get copyWith =>
      throw _privateConstructorUsedError;
}
