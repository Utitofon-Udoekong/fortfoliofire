// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_form_phone_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInFormPhoneState {
  String get phoneNumber => throw _privateConstructorUsedError;
  String get smsCode => throw _privateConstructorUsedError;
  String get verificationId => throw _privateConstructorUsedError;
  String get failure => throw _privateConstructorUsedError;
  String get success => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormPhoneStateCopyWith<SignInFormPhoneState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormPhoneStateCopyWith<$Res> {
  factory $SignInFormPhoneStateCopyWith(SignInFormPhoneState value,
          $Res Function(SignInFormPhoneState) then) =
      _$SignInFormPhoneStateCopyWithImpl<$Res, SignInFormPhoneState>;
  @useResult
  $Res call(
      {String phoneNumber,
      String smsCode,
      String verificationId,
      String failure,
      String success,
      bool isSubmitting});
}

/// @nodoc
class _$SignInFormPhoneStateCopyWithImpl<$Res,
        $Val extends SignInFormPhoneState>
    implements $SignInFormPhoneStateCopyWith<$Res> {
  _$SignInFormPhoneStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? smsCode = null,
    Object? verificationId = null,
    Object? failure = null,
    Object? success = null,
    Object? isSubmitting = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInFormPhoneStateCopyWith<$Res>
    implements $SignInFormPhoneStateCopyWith<$Res> {
  factory _$$_SignInFormPhoneStateCopyWith(_$_SignInFormPhoneState value,
          $Res Function(_$_SignInFormPhoneState) then) =
      __$$_SignInFormPhoneStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String phoneNumber,
      String smsCode,
      String verificationId,
      String failure,
      String success,
      bool isSubmitting});
}

/// @nodoc
class __$$_SignInFormPhoneStateCopyWithImpl<$Res>
    extends _$SignInFormPhoneStateCopyWithImpl<$Res, _$_SignInFormPhoneState>
    implements _$$_SignInFormPhoneStateCopyWith<$Res> {
  __$$_SignInFormPhoneStateCopyWithImpl(_$_SignInFormPhoneState _value,
      $Res Function(_$_SignInFormPhoneState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? smsCode = null,
    Object? verificationId = null,
    Object? failure = null,
    Object? success = null,
    Object? isSubmitting = null,
  }) {
    return _then(_$_SignInFormPhoneState(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: null == smsCode
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignInFormPhoneState extends _SignInFormPhoneState {
  const _$_SignInFormPhoneState(
      {required this.phoneNumber,
      required this.smsCode,
      required this.verificationId,
      required this.failure,
      required this.success,
      required this.isSubmitting})
      : super._();

  @override
  final String phoneNumber;
  @override
  final String smsCode;
  @override
  final String verificationId;
  @override
  final String failure;
  @override
  final String success;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'SignInFormPhoneState(phoneNumber: $phoneNumber, smsCode: $smsCode, verificationId: $verificationId, failure: $failure, success: $success, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInFormPhoneState &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.smsCode, smsCode) || other.smsCode == smsCode) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, smsCode,
      verificationId, failure, success, isSubmitting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInFormPhoneStateCopyWith<_$_SignInFormPhoneState> get copyWith =>
      __$$_SignInFormPhoneStateCopyWithImpl<_$_SignInFormPhoneState>(
          this, _$identity);
}

abstract class _SignInFormPhoneState extends SignInFormPhoneState {
  const factory _SignInFormPhoneState(
      {required final String phoneNumber,
      required final String smsCode,
      required final String verificationId,
      required final String failure,
      required final String success,
      required final bool isSubmitting}) = _$_SignInFormPhoneState;
  const _SignInFormPhoneState._() : super._();

  @override
  String get phoneNumber;
  @override
  String get smsCode;
  @override
  String get verificationId;
  @override
  String get failure;
  @override
  String get success;
  @override
  bool get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$$_SignInFormPhoneStateCopyWith<_$_SignInFormPhoneState> get copyWith =>
      throw _privateConstructorUsedError;
}
