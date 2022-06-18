// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_form_email_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInFormEmailState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isObscure => throw _privateConstructorUsedError;
  String get failure => throw _privateConstructorUsedError;
  String get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormEmailStateCopyWith<SignInFormEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormEmailStateCopyWith<$Res> {
  factory $SignInFormEmailStateCopyWith(SignInFormEmailState value,
          $Res Function(SignInFormEmailState) then) =
      _$SignInFormEmailStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool isSubmitting,
      bool isObscure,
      String failure,
      String success});
}

/// @nodoc
class _$SignInFormEmailStateCopyWithImpl<$Res>
    implements $SignInFormEmailStateCopyWith<$Res> {
  _$SignInFormEmailStateCopyWithImpl(this._value, this._then);

  final SignInFormEmailState _value;
  // ignore: unused_field
  final $Res Function(SignInFormEmailState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? isSubmitting = freezed,
    Object? isObscure = freezed,
    Object? failure = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isObscure: isObscure == freezed
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_SignInFormEmailStateCopyWith<$Res>
    implements $SignInFormEmailStateCopyWith<$Res> {
  factory _$$_SignInFormEmailStateCopyWith(_$_SignInFormEmailState value,
          $Res Function(_$_SignInFormEmailState) then) =
      __$$_SignInFormEmailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool isSubmitting,
      bool isObscure,
      String failure,
      String success});
}

/// @nodoc
class __$$_SignInFormEmailStateCopyWithImpl<$Res>
    extends _$SignInFormEmailStateCopyWithImpl<$Res>
    implements _$$_SignInFormEmailStateCopyWith<$Res> {
  __$$_SignInFormEmailStateCopyWithImpl(_$_SignInFormEmailState _value,
      $Res Function(_$_SignInFormEmailState) _then)
      : super(_value, (v) => _then(v as _$_SignInFormEmailState));

  @override
  _$_SignInFormEmailState get _value => super._value as _$_SignInFormEmailState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? isSubmitting = freezed,
    Object? isObscure = freezed,
    Object? failure = freezed,
    Object? success = freezed,
  }) {
    return _then(_$_SignInFormEmailState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isObscure: isObscure == freezed
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
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

class _$_SignInFormEmailState extends _SignInFormEmailState {
  const _$_SignInFormEmailState(
      {required this.emailAddress,
      required this.password,
      required this.isSubmitting,
      required this.isObscure,
      required this.failure,
      required this.success})
      : super._();

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool isSubmitting;
  @override
  final bool isObscure;
  @override
  final String failure;
  @override
  final String success;

  @override
  String toString() {
    return 'SignInFormEmailState(emailAddress: $emailAddress, password: $password, isSubmitting: $isSubmitting, isObscure: $isObscure, failure: $failure, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInFormEmailState &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(other.isObscure, isObscure) &&
            const DeepCollectionEquality().equals(other.failure, failure) &&
            const DeepCollectionEquality().equals(other.success, success));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(isObscure),
      const DeepCollectionEquality().hash(failure),
      const DeepCollectionEquality().hash(success));

  @JsonKey(ignore: true)
  @override
  _$$_SignInFormEmailStateCopyWith<_$_SignInFormEmailState> get copyWith =>
      __$$_SignInFormEmailStateCopyWithImpl<_$_SignInFormEmailState>(
          this, _$identity);
}

abstract class _SignInFormEmailState extends SignInFormEmailState {
  const factory _SignInFormEmailState(
      {required final EmailAddress emailAddress,
      required final Password password,
      required final bool isSubmitting,
      required final bool isObscure,
      required final String failure,
      required final String success}) = _$_SignInFormEmailState;
  const _SignInFormEmailState._() : super._();

  @override
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get isObscure => throw _privateConstructorUsedError;
  @override
  String get failure => throw _privateConstructorUsedError;
  @override
  String get success => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SignInFormEmailStateCopyWith<_$_SignInFormEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}
