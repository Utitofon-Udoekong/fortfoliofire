// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$SignInFormEmailStateCopyWithImpl<$Res, SignInFormEmailState>;
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool isSubmitting,
      bool isObscure,
      String failure,
      String success});
}

/// @nodoc
class _$SignInFormEmailStateCopyWithImpl<$Res,
        $Val extends SignInFormEmailState>
    implements $SignInFormEmailStateCopyWith<$Res> {
  _$SignInFormEmailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? isObscure = null,
    Object? failure = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInFormEmailStateCopyWith<$Res>
    implements $SignInFormEmailStateCopyWith<$Res> {
  factory _$$_SignInFormEmailStateCopyWith(_$_SignInFormEmailState value,
          $Res Function(_$_SignInFormEmailState) then) =
      __$$_SignInFormEmailStateCopyWithImpl<$Res>;
  @override
  @useResult
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
    extends _$SignInFormEmailStateCopyWithImpl<$Res, _$_SignInFormEmailState>
    implements _$$_SignInFormEmailStateCopyWith<$Res> {
  __$$_SignInFormEmailStateCopyWithImpl(_$_SignInFormEmailState _value,
      $Res Function(_$_SignInFormEmailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? isObscure = null,
    Object? failure = null,
    Object? success = null,
  }) {
    return _then(_$_SignInFormEmailState(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isObscure: null == isObscure
          ? _value.isObscure
          : isObscure // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
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
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isObscure, isObscure) ||
                other.isObscure == isObscure) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, password,
      isSubmitting, isObscure, failure, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get isSubmitting;
  @override
  bool get isObscure;
  @override
  String get failure;
  @override
  String get success;
  @override
  @JsonKey(ignore: true)
  _$$_SignInFormEmailStateCopyWith<_$_SignInFormEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}
