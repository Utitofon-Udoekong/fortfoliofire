// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$SignInFormPhoneStateCopyWithImpl<$Res>;
  $Res call(
      {String phoneNumber,
      String smsCode,
      String verificationId,
      String failure,
      String success,
      bool isSubmitting});
}

/// @nodoc
class _$SignInFormPhoneStateCopyWithImpl<$Res>
    implements $SignInFormPhoneStateCopyWith<$Res> {
  _$SignInFormPhoneStateCopyWithImpl(this._value, this._then);

  final SignInFormPhoneState _value;
  // ignore: unused_field
  final $Res Function(SignInFormPhoneState) _then;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? smsCode = freezed,
    Object? verificationId = freezed,
    Object? failure = freezed,
    Object? success = freezed,
    Object? isSubmitting = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_SignInFormPhoneStateCopyWith<$Res>
    implements $SignInFormPhoneStateCopyWith<$Res> {
  factory _$$_SignInFormPhoneStateCopyWith(_$_SignInFormPhoneState value,
          $Res Function(_$_SignInFormPhoneState) then) =
      __$$_SignInFormPhoneStateCopyWithImpl<$Res>;
  @override
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
    extends _$SignInFormPhoneStateCopyWithImpl<$Res>
    implements _$$_SignInFormPhoneStateCopyWith<$Res> {
  __$$_SignInFormPhoneStateCopyWithImpl(_$_SignInFormPhoneState _value,
      $Res Function(_$_SignInFormPhoneState) _then)
      : super(_value, (v) => _then(v as _$_SignInFormPhoneState));

  @override
  _$_SignInFormPhoneState get _value => super._value as _$_SignInFormPhoneState;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? smsCode = freezed,
    Object? verificationId = freezed,
    Object? failure = freezed,
    Object? success = freezed,
    Object? isSubmitting = freezed,
  }) {
    return _then(_$_SignInFormPhoneState(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      smsCode: smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
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
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.smsCode, smsCode) &&
            const DeepCollectionEquality()
                .equals(other.verificationId, verificationId) &&
            const DeepCollectionEquality().equals(other.failure, failure) &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(smsCode),
      const DeepCollectionEquality().hash(verificationId),
      const DeepCollectionEquality().hash(failure),
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(isSubmitting));

  @JsonKey(ignore: true)
  @override
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
