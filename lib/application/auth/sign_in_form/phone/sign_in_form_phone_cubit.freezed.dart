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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInFormPhoneStateTearOff {
  const _$SignInFormPhoneStateTearOff();

  _SignInFormPhoneState call(
      {required Phone phoneNumber,
      required String smsCode,
      required Option<AuthFailure> failureOption,
      required String verificationId,
      required bool isSubmitting,
      required bool showErrorMessages}) {
    return _SignInFormPhoneState(
      phoneNumber: phoneNumber,
      smsCode: smsCode,
      failureOption: failureOption,
      verificationId: verificationId,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
    );
  }
}

/// @nodoc
const $SignInFormPhoneState = _$SignInFormPhoneStateTearOff();

/// @nodoc
mixin _$SignInFormPhoneState {
  Phone get phoneNumber => throw _privateConstructorUsedError;
  String get smsCode => throw _privateConstructorUsedError;
  Option<AuthFailure> get failureOption => throw _privateConstructorUsedError;
  String get verificationId => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;

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
      {Phone phoneNumber,
      String smsCode,
      Option<AuthFailure> failureOption,
      String verificationId,
      bool isSubmitting,
      bool showErrorMessages});
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
    Object? failureOption = freezed,
    Object? verificationId = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as Phone,
      smsCode: smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<AuthFailure>,
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SignInFormPhoneStateCopyWith<$Res>
    implements $SignInFormPhoneStateCopyWith<$Res> {
  factory _$SignInFormPhoneStateCopyWith(_SignInFormPhoneState value,
          $Res Function(_SignInFormPhoneState) then) =
      __$SignInFormPhoneStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Phone phoneNumber,
      String smsCode,
      Option<AuthFailure> failureOption,
      String verificationId,
      bool isSubmitting,
      bool showErrorMessages});
}

/// @nodoc
class __$SignInFormPhoneStateCopyWithImpl<$Res>
    extends _$SignInFormPhoneStateCopyWithImpl<$Res>
    implements _$SignInFormPhoneStateCopyWith<$Res> {
  __$SignInFormPhoneStateCopyWithImpl(
      _SignInFormPhoneState _value, $Res Function(_SignInFormPhoneState) _then)
      : super(_value, (v) => _then(v as _SignInFormPhoneState));

  @override
  _SignInFormPhoneState get _value => super._value as _SignInFormPhoneState;

  @override
  $Res call({
    Object? phoneNumber = freezed,
    Object? smsCode = freezed,
    Object? failureOption = freezed,
    Object? verificationId = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
  }) {
    return _then(_SignInFormPhoneState(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as Phone,
      smsCode: smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      failureOption: failureOption == freezed
          ? _value.failureOption
          : failureOption // ignore: cast_nullable_to_non_nullable
              as Option<AuthFailure>,
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignInFormPhoneState extends _SignInFormPhoneState {
  const _$_SignInFormPhoneState(
      {required this.phoneNumber,
      required this.smsCode,
      required this.failureOption,
      required this.verificationId,
      required this.isSubmitting,
      required this.showErrorMessages})
      : super._();

  @override
  final Phone phoneNumber;
  @override
  final String smsCode;
  @override
  final Option<AuthFailure> failureOption;
  @override
  final String verificationId;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;

  @override
  String toString() {
    return 'SignInFormPhoneState(phoneNumber: $phoneNumber, smsCode: $smsCode, failureOption: $failureOption, verificationId: $verificationId, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInFormPhoneState &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.smsCode, smsCode) &&
            const DeepCollectionEquality()
                .equals(other.failureOption, failureOption) &&
            const DeepCollectionEquality()
                .equals(other.verificationId, verificationId) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(smsCode),
      const DeepCollectionEquality().hash(failureOption),
      const DeepCollectionEquality().hash(verificationId),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(showErrorMessages));

  @JsonKey(ignore: true)
  @override
  _$SignInFormPhoneStateCopyWith<_SignInFormPhoneState> get copyWith =>
      __$SignInFormPhoneStateCopyWithImpl<_SignInFormPhoneState>(
          this, _$identity);
}

abstract class _SignInFormPhoneState extends SignInFormPhoneState {
  const factory _SignInFormPhoneState(
      {required Phone phoneNumber,
      required String smsCode,
      required Option<AuthFailure> failureOption,
      required String verificationId,
      required bool isSubmitting,
      required bool showErrorMessages}) = _$_SignInFormPhoneState;
  const _SignInFormPhoneState._() : super._();

  @override
  Phone get phoneNumber;
  @override
  String get smsCode;
  @override
  Option<AuthFailure> get failureOption;
  @override
  String get verificationId;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  @JsonKey(ignore: true)
  _$SignInFormPhoneStateCopyWith<_SignInFormPhoneState> get copyWith =>
      throw _privateConstructorUsedError;
}
