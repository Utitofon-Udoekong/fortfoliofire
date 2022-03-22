// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verification_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VerificationStateTearOff {
  const _$VerificationStateTearOff();

  _VerificationState call(
      {required bool submitting,
      required String response,
      required String failure}) {
    return _VerificationState(
      submitting: submitting,
      response: response,
      failure: failure,
    );
  }
}

/// @nodoc
const $VerificationState = _$VerificationStateTearOff();

/// @nodoc
mixin _$VerificationState {
  bool get submitting => throw _privateConstructorUsedError;
  String get response => throw _privateConstructorUsedError;
  String get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerificationStateCopyWith<VerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationStateCopyWith<$Res> {
  factory $VerificationStateCopyWith(
          VerificationState value, $Res Function(VerificationState) then) =
      _$VerificationStateCopyWithImpl<$Res>;
  $Res call({bool submitting, String response, String failure});
}

/// @nodoc
class _$VerificationStateCopyWithImpl<$Res>
    implements $VerificationStateCopyWith<$Res> {
  _$VerificationStateCopyWithImpl(this._value, this._then);

  final VerificationState _value;
  // ignore: unused_field
  final $Res Function(VerificationState) _then;

  @override
  $Res call({
    Object? submitting = freezed,
    Object? response = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      submitting: submitting == freezed
          ? _value.submitting
          : submitting // ignore: cast_nullable_to_non_nullable
              as bool,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$VerificationStateCopyWith<$Res>
    implements $VerificationStateCopyWith<$Res> {
  factory _$VerificationStateCopyWith(
          _VerificationState value, $Res Function(_VerificationState) then) =
      __$VerificationStateCopyWithImpl<$Res>;
  @override
  $Res call({bool submitting, String response, String failure});
}

/// @nodoc
class __$VerificationStateCopyWithImpl<$Res>
    extends _$VerificationStateCopyWithImpl<$Res>
    implements _$VerificationStateCopyWith<$Res> {
  __$VerificationStateCopyWithImpl(
      _VerificationState _value, $Res Function(_VerificationState) _then)
      : super(_value, (v) => _then(v as _VerificationState));

  @override
  _VerificationState get _value => super._value as _VerificationState;

  @override
  $Res call({
    Object? submitting = freezed,
    Object? response = freezed,
    Object? failure = freezed,
  }) {
    return _then(_VerificationState(
      submitting: submitting == freezed
          ? _value.submitting
          : submitting // ignore: cast_nullable_to_non_nullable
              as bool,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerificationState extends _VerificationState {
  const _$_VerificationState(
      {required this.submitting, required this.response, required this.failure})
      : super._();

  @override
  final bool submitting;
  @override
  final String response;
  @override
  final String failure;

  @override
  String toString() {
    return 'VerificationState(submitting: $submitting, response: $response, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerificationState &&
            const DeepCollectionEquality()
                .equals(other.submitting, submitting) &&
            const DeepCollectionEquality().equals(other.response, response) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(submitting),
      const DeepCollectionEquality().hash(response),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$VerificationStateCopyWith<_VerificationState> get copyWith =>
      __$VerificationStateCopyWithImpl<_VerificationState>(this, _$identity);
}

abstract class _VerificationState extends VerificationState {
  const factory _VerificationState(
      {required bool submitting,
      required String response,
      required String failure}) = _$_VerificationState;
  const _VerificationState._() : super._();

  @override
  bool get submitting;
  @override
  String get response;
  @override
  String get failure;
  @override
  @JsonKey(ignore: true)
  _$VerificationStateCopyWith<_VerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
