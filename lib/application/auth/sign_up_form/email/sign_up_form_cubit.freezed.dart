// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignUpFormState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  UserName get firstName => throw _privateConstructorUsedError;
  UserName get lastName => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isObscure => throw _privateConstructorUsedError;
  bool get accepted => throw _privateConstructorUsedError;
  String get failure => throw _privateConstructorUsedError;
  String get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpFormStateCopyWith<SignUpFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormStateCopyWith<$Res> {
  factory $SignUpFormStateCopyWith(
          SignUpFormState value, $Res Function(SignUpFormState) then) =
      _$SignUpFormStateCopyWithImpl<$Res, SignUpFormState>;
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      UserName firstName,
      UserName lastName,
      Password password,
      bool isSubmitting,
      bool isObscure,
      bool accepted,
      String failure,
      String success});
}

/// @nodoc
class _$SignUpFormStateCopyWithImpl<$Res, $Val extends SignUpFormState>
    implements $SignUpFormStateCopyWith<$Res> {
  _$SignUpFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? isObscure = null,
    Object? accepted = null,
    Object? failure = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as UserName,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as UserName,
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
      accepted: null == accepted
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_SignUpFormStateCopyWith<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  factory _$$_SignUpFormStateCopyWith(
          _$_SignUpFormState value, $Res Function(_$_SignUpFormState) then) =
      __$$_SignUpFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      UserName firstName,
      UserName lastName,
      Password password,
      bool isSubmitting,
      bool isObscure,
      bool accepted,
      String failure,
      String success});
}

/// @nodoc
class __$$_SignUpFormStateCopyWithImpl<$Res>
    extends _$SignUpFormStateCopyWithImpl<$Res, _$_SignUpFormState>
    implements _$$_SignUpFormStateCopyWith<$Res> {
  __$$_SignUpFormStateCopyWithImpl(
      _$_SignUpFormState _value, $Res Function(_$_SignUpFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? isObscure = null,
    Object? accepted = null,
    Object? failure = null,
    Object? success = null,
  }) {
    return _then(_$_SignUpFormState(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as UserName,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as UserName,
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
      accepted: null == accepted
          ? _value.accepted
          : accepted // ignore: cast_nullable_to_non_nullable
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

class _$_SignUpFormState extends _SignUpFormState {
  const _$_SignUpFormState(
      {required this.emailAddress,
      required this.firstName,
      required this.lastName,
      required this.password,
      required this.isSubmitting,
      required this.isObscure,
      required this.accepted,
      required this.failure,
      required this.success})
      : super._();

  @override
  final EmailAddress emailAddress;
  @override
  final UserName firstName;
  @override
  final UserName lastName;
  @override
  final Password password;
  @override
  final bool isSubmitting;
  @override
  final bool isObscure;
  @override
  final bool accepted;
  @override
  final String failure;
  @override
  final String success;

  @override
  String toString() {
    return 'SignUpFormState(emailAddress: $emailAddress, firstName: $firstName, lastName: $lastName, password: $password, isSubmitting: $isSubmitting, isObscure: $isObscure, accepted: $accepted, failure: $failure, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpFormState &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isObscure, isObscure) ||
                other.isObscure == isObscure) &&
            (identical(other.accepted, accepted) ||
                other.accepted == accepted) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, firstName,
      lastName, password, isSubmitting, isObscure, accepted, failure, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignUpFormStateCopyWith<_$_SignUpFormState> get copyWith =>
      __$$_SignUpFormStateCopyWithImpl<_$_SignUpFormState>(this, _$identity);
}

abstract class _SignUpFormState extends SignUpFormState {
  const factory _SignUpFormState(
      {required final EmailAddress emailAddress,
      required final UserName firstName,
      required final UserName lastName,
      required final Password password,
      required final bool isSubmitting,
      required final bool isObscure,
      required final bool accepted,
      required final String failure,
      required final String success}) = _$_SignUpFormState;
  const _SignUpFormState._() : super._();

  @override
  EmailAddress get emailAddress;
  @override
  UserName get firstName;
  @override
  UserName get lastName;
  @override
  Password get password;
  @override
  bool get isSubmitting;
  @override
  bool get isObscure;
  @override
  bool get accepted;
  @override
  String get failure;
  @override
  String get success;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpFormStateCopyWith<_$_SignUpFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
