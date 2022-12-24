// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'security_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SecurityState {
  String get emailAddress => throw _privateConstructorUsedError;
  String get pin => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;
  String get sentOtp => throw _privateConstructorUsedError;
  bool get showSnackbar => throw _privateConstructorUsedError;
  bool get pinExists => throw _privateConstructorUsedError;
  bool get biometricsExists => throw _privateConstructorUsedError;
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
      _$SecurityStateCopyWithImpl<$Res, SecurityState>;
  @useResult
  $Res call(
      {String emailAddress,
      String pin,
      String otp,
      String sentOtp,
      bool showSnackbar,
      bool pinExists,
      bool biometricsExists,
      String failure,
      String success});
}

/// @nodoc
class _$SecurityStateCopyWithImpl<$Res, $Val extends SecurityState>
    implements $SecurityStateCopyWith<$Res> {
  _$SecurityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? pin = null,
    Object? otp = null,
    Object? sentOtp = null,
    Object? showSnackbar = null,
    Object? pinExists = null,
    Object? biometricsExists = null,
    Object? failure = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      sentOtp: null == sentOtp
          ? _value.sentOtp
          : sentOtp // ignore: cast_nullable_to_non_nullable
              as String,
      showSnackbar: null == showSnackbar
          ? _value.showSnackbar
          : showSnackbar // ignore: cast_nullable_to_non_nullable
              as bool,
      pinExists: null == pinExists
          ? _value.pinExists
          : pinExists // ignore: cast_nullable_to_non_nullable
              as bool,
      biometricsExists: null == biometricsExists
          ? _value.biometricsExists
          : biometricsExists // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_SecurityStateCopyWith<$Res>
    implements $SecurityStateCopyWith<$Res> {
  factory _$$_SecurityStateCopyWith(
          _$_SecurityState value, $Res Function(_$_SecurityState) then) =
      __$$_SecurityStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String emailAddress,
      String pin,
      String otp,
      String sentOtp,
      bool showSnackbar,
      bool pinExists,
      bool biometricsExists,
      String failure,
      String success});
}

/// @nodoc
class __$$_SecurityStateCopyWithImpl<$Res>
    extends _$SecurityStateCopyWithImpl<$Res, _$_SecurityState>
    implements _$$_SecurityStateCopyWith<$Res> {
  __$$_SecurityStateCopyWithImpl(
      _$_SecurityState _value, $Res Function(_$_SecurityState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? pin = null,
    Object? otp = null,
    Object? sentOtp = null,
    Object? showSnackbar = null,
    Object? pinExists = null,
    Object? biometricsExists = null,
    Object? failure = null,
    Object? success = null,
  }) {
    return _then(_$_SecurityState(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      pin: null == pin
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      sentOtp: null == sentOtp
          ? _value.sentOtp
          : sentOtp // ignore: cast_nullable_to_non_nullable
              as String,
      showSnackbar: null == showSnackbar
          ? _value.showSnackbar
          : showSnackbar // ignore: cast_nullable_to_non_nullable
              as bool,
      pinExists: null == pinExists
          ? _value.pinExists
          : pinExists // ignore: cast_nullable_to_non_nullable
              as bool,
      biometricsExists: null == biometricsExists
          ? _value.biometricsExists
          : biometricsExists // ignore: cast_nullable_to_non_nullable
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

class _$_SecurityState extends _SecurityState {
  const _$_SecurityState(
      {required this.emailAddress,
      required this.pin,
      required this.otp,
      required this.sentOtp,
      required this.showSnackbar,
      required this.pinExists,
      required this.biometricsExists,
      required this.failure,
      required this.success})
      : super._();

  @override
  final String emailAddress;
  @override
  final String pin;
  @override
  final String otp;
  @override
  final String sentOtp;
  @override
  final bool showSnackbar;
  @override
  final bool pinExists;
  @override
  final bool biometricsExists;
  @override
  final String failure;
  @override
  final String success;

  @override
  String toString() {
    return 'SecurityState(emailAddress: $emailAddress, pin: $pin, otp: $otp, sentOtp: $sentOtp, showSnackbar: $showSnackbar, pinExists: $pinExists, biometricsExists: $biometricsExists, failure: $failure, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SecurityState &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.pin, pin) || other.pin == pin) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.sentOtp, sentOtp) || other.sentOtp == sentOtp) &&
            (identical(other.showSnackbar, showSnackbar) ||
                other.showSnackbar == showSnackbar) &&
            (identical(other.pinExists, pinExists) ||
                other.pinExists == pinExists) &&
            (identical(other.biometricsExists, biometricsExists) ||
                other.biometricsExists == biometricsExists) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, pin, otp, sentOtp,
      showSnackbar, pinExists, biometricsExists, failure, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SecurityStateCopyWith<_$_SecurityState> get copyWith =>
      __$$_SecurityStateCopyWithImpl<_$_SecurityState>(this, _$identity);
}

abstract class _SecurityState extends SecurityState {
  const factory _SecurityState(
      {required final String emailAddress,
      required final String pin,
      required final String otp,
      required final String sentOtp,
      required final bool showSnackbar,
      required final bool pinExists,
      required final bool biometricsExists,
      required final String failure,
      required final String success}) = _$_SecurityState;
  const _SecurityState._() : super._();

  @override
  String get emailAddress;
  @override
  String get pin;
  @override
  String get otp;
  @override
  String get sentOtp;
  @override
  bool get showSnackbar;
  @override
  bool get pinExists;
  @override
  bool get biometricsExists;
  @override
  String get failure;
  @override
  String get success;
  @override
  @JsonKey(ignore: true)
  _$$_SecurityStateCopyWith<_$_SecurityState> get copyWith =>
      throw _privateConstructorUsedError;
}
