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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SecurityState {
  String get emailAddress => throw _privateConstructorUsedError;
  String get pin => throw _privateConstructorUsedError;
  int get otp => throw _privateConstructorUsedError;
  bool get showSnackbar => throw _privateConstructorUsedError;
  bool get pinExists => throw _privateConstructorUsedError;
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
      {String emailAddress,
      String pin,
      int otp,
      bool showSnackbar,
      bool pinExists,
      String failure,
      String success});
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
    Object? pin = freezed,
    Object? otp = freezed,
    Object? showSnackbar = freezed,
    Object? pinExists = freezed,
    Object? failure = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      pin: pin == freezed
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int,
      showSnackbar: showSnackbar == freezed
          ? _value.showSnackbar
          : showSnackbar // ignore: cast_nullable_to_non_nullable
              as bool,
      pinExists: pinExists == freezed
          ? _value.pinExists
          : pinExists // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_SecurityStateCopyWith<$Res>
    implements $SecurityStateCopyWith<$Res> {
  factory _$$_SecurityStateCopyWith(
          _$_SecurityState value, $Res Function(_$_SecurityState) then) =
      __$$_SecurityStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String emailAddress,
      String pin,
      int otp,
      bool showSnackbar,
      bool pinExists,
      String failure,
      String success});
}

/// @nodoc
class __$$_SecurityStateCopyWithImpl<$Res>
    extends _$SecurityStateCopyWithImpl<$Res>
    implements _$$_SecurityStateCopyWith<$Res> {
  __$$_SecurityStateCopyWithImpl(
      _$_SecurityState _value, $Res Function(_$_SecurityState) _then)
      : super(_value, (v) => _then(v as _$_SecurityState));

  @override
  _$_SecurityState get _value => super._value as _$_SecurityState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? pin = freezed,
    Object? otp = freezed,
    Object? showSnackbar = freezed,
    Object? pinExists = freezed,
    Object? failure = freezed,
    Object? success = freezed,
  }) {
    return _then(_$_SecurityState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      pin: pin == freezed
          ? _value.pin
          : pin // ignore: cast_nullable_to_non_nullable
              as String,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int,
      showSnackbar: showSnackbar == freezed
          ? _value.showSnackbar
          : showSnackbar // ignore: cast_nullable_to_non_nullable
              as bool,
      pinExists: pinExists == freezed
          ? _value.pinExists
          : pinExists // ignore: cast_nullable_to_non_nullable
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
      required this.pin,
      required this.otp,
      required this.showSnackbar,
      required this.pinExists,
      required this.failure,
      required this.success})
      : super._();

  @override
  final String emailAddress;
  @override
  final String pin;
  @override
  final int otp;
  @override
  final bool showSnackbar;
  @override
  final bool pinExists;
  @override
  final String failure;
  @override
  final String success;

  @override
  String toString() {
    return 'SecurityState(emailAddress: $emailAddress, pin: $pin, otp: $otp, showSnackbar: $showSnackbar, pinExists: $pinExists, failure: $failure, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SecurityState &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.pin, pin) &&
            const DeepCollectionEquality().equals(other.otp, otp) &&
            const DeepCollectionEquality()
                .equals(other.showSnackbar, showSnackbar) &&
            const DeepCollectionEquality().equals(other.pinExists, pinExists) &&
            const DeepCollectionEquality().equals(other.failure, failure) &&
            const DeepCollectionEquality().equals(other.success, success));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(pin),
      const DeepCollectionEquality().hash(otp),
      const DeepCollectionEquality().hash(showSnackbar),
      const DeepCollectionEquality().hash(pinExists),
      const DeepCollectionEquality().hash(failure),
      const DeepCollectionEquality().hash(success));

  @JsonKey(ignore: true)
  @override
  _$$_SecurityStateCopyWith<_$_SecurityState> get copyWith =>
      __$$_SecurityStateCopyWithImpl<_$_SecurityState>(this, _$identity);
}

abstract class _SecurityState extends SecurityState {
  const factory _SecurityState(
      {required final String emailAddress,
      required final String pin,
      required final int otp,
      required final bool showSnackbar,
      required final bool pinExists,
      required final String failure,
      required final String success}) = _$_SecurityState;
  const _SecurityState._() : super._();

  @override
  String get emailAddress => throw _privateConstructorUsedError;
  @override
  String get pin => throw _privateConstructorUsedError;
  @override
  int get otp => throw _privateConstructorUsedError;
  @override
  bool get showSnackbar => throw _privateConstructorUsedError;
  @override
  bool get pinExists => throw _privateConstructorUsedError;
  @override
  String get failure => throw _privateConstructorUsedError;
  @override
  String get success => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SecurityStateCopyWith<_$_SecurityState> get copyWith =>
      throw _privateConstructorUsedError;
}
