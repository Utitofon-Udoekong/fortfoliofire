// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_form_phone_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInFormPhoneEventTearOff {
  const _$SignInFormPhoneEventTearOff();

  PhoneChanged phoneChanged(String phoneString) {
    return PhoneChanged(
      phoneString,
    );
  }

  SMSCodeChanged smsCodeChanged(String smsCodeString) {
    return SMSCodeChanged(
      smsCodeString,
    );
  }

  SignInWithPhonePressed signInWithPhonePressed() {
    return const SignInWithPhonePressed();
  }
}

/// @nodoc
const $SignInFormPhoneEvent = _$SignInFormPhoneEventTearOff();

/// @nodoc
mixin _$SignInFormPhoneEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneString) phoneChanged,
    required TResult Function(String smsCodeString) smsCodeChanged,
    required TResult Function() signInWithPhonePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneString)? phoneChanged,
    TResult Function(String smsCodeString)? smsCodeChanged,
    TResult Function()? signInWithPhonePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneString)? phoneChanged,
    TResult Function(String smsCodeString)? smsCodeChanged,
    TResult Function()? signInWithPhonePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(SMSCodeChanged value) smsCodeChanged,
    required TResult Function(SignInWithPhonePressed value)
        signInWithPhonePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(SignInWithPhonePressed value)? signInWithPhonePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(SignInWithPhonePressed value)? signInWithPhonePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormPhoneEventCopyWith<$Res> {
  factory $SignInFormPhoneEventCopyWith(SignInFormPhoneEvent value,
          $Res Function(SignInFormPhoneEvent) then) =
      _$SignInFormPhoneEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInFormPhoneEventCopyWithImpl<$Res>
    implements $SignInFormPhoneEventCopyWith<$Res> {
  _$SignInFormPhoneEventCopyWithImpl(this._value, this._then);

  final SignInFormPhoneEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormPhoneEvent) _then;
}

/// @nodoc
abstract class $PhoneChangedCopyWith<$Res> {
  factory $PhoneChangedCopyWith(
          PhoneChanged value, $Res Function(PhoneChanged) then) =
      _$PhoneChangedCopyWithImpl<$Res>;
  $Res call({String phoneString});
}

/// @nodoc
class _$PhoneChangedCopyWithImpl<$Res>
    extends _$SignInFormPhoneEventCopyWithImpl<$Res>
    implements $PhoneChangedCopyWith<$Res> {
  _$PhoneChangedCopyWithImpl(
      PhoneChanged _value, $Res Function(PhoneChanged) _then)
      : super(_value, (v) => _then(v as PhoneChanged));

  @override
  PhoneChanged get _value => super._value as PhoneChanged;

  @override
  $Res call({
    Object? phoneString = freezed,
  }) {
    return _then(PhoneChanged(
      phoneString == freezed
          ? _value.phoneString
          : phoneString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneChanged implements PhoneChanged {
  const _$PhoneChanged(this.phoneString);

  @override
  final String phoneString;

  @override
  String toString() {
    return 'SignInFormPhoneEvent.phoneChanged(phoneString: $phoneString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PhoneChanged &&
            const DeepCollectionEquality()
                .equals(other.phoneString, phoneString));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneString));

  @JsonKey(ignore: true)
  @override
  $PhoneChangedCopyWith<PhoneChanged> get copyWith =>
      _$PhoneChangedCopyWithImpl<PhoneChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneString) phoneChanged,
    required TResult Function(String smsCodeString) smsCodeChanged,
    required TResult Function() signInWithPhonePressed,
  }) {
    return phoneChanged(phoneString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneString)? phoneChanged,
    TResult Function(String smsCodeString)? smsCodeChanged,
    TResult Function()? signInWithPhonePressed,
  }) {
    return phoneChanged?.call(phoneString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneString)? phoneChanged,
    TResult Function(String smsCodeString)? smsCodeChanged,
    TResult Function()? signInWithPhonePressed,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(phoneString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(SMSCodeChanged value) smsCodeChanged,
    required TResult Function(SignInWithPhonePressed value)
        signInWithPhonePressed,
  }) {
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(SignInWithPhonePressed value)? signInWithPhonePressed,
  }) {
    return phoneChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(SignInWithPhonePressed value)? signInWithPhonePressed,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneChanged implements SignInFormPhoneEvent {
  const factory PhoneChanged(String phoneString) = _$PhoneChanged;

  String get phoneString;
  @JsonKey(ignore: true)
  $PhoneChangedCopyWith<PhoneChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SMSCodeChangedCopyWith<$Res> {
  factory $SMSCodeChangedCopyWith(
          SMSCodeChanged value, $Res Function(SMSCodeChanged) then) =
      _$SMSCodeChangedCopyWithImpl<$Res>;
  $Res call({String smsCodeString});
}

/// @nodoc
class _$SMSCodeChangedCopyWithImpl<$Res>
    extends _$SignInFormPhoneEventCopyWithImpl<$Res>
    implements $SMSCodeChangedCopyWith<$Res> {
  _$SMSCodeChangedCopyWithImpl(
      SMSCodeChanged _value, $Res Function(SMSCodeChanged) _then)
      : super(_value, (v) => _then(v as SMSCodeChanged));

  @override
  SMSCodeChanged get _value => super._value as SMSCodeChanged;

  @override
  $Res call({
    Object? smsCodeString = freezed,
  }) {
    return _then(SMSCodeChanged(
      smsCodeString == freezed
          ? _value.smsCodeString
          : smsCodeString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SMSCodeChanged implements SMSCodeChanged {
  const _$SMSCodeChanged(this.smsCodeString);

  @override
  final String smsCodeString;

  @override
  String toString() {
    return 'SignInFormPhoneEvent.smsCodeChanged(smsCodeString: $smsCodeString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SMSCodeChanged &&
            const DeepCollectionEquality()
                .equals(other.smsCodeString, smsCodeString));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(smsCodeString));

  @JsonKey(ignore: true)
  @override
  $SMSCodeChangedCopyWith<SMSCodeChanged> get copyWith =>
      _$SMSCodeChangedCopyWithImpl<SMSCodeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneString) phoneChanged,
    required TResult Function(String smsCodeString) smsCodeChanged,
    required TResult Function() signInWithPhonePressed,
  }) {
    return smsCodeChanged(smsCodeString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneString)? phoneChanged,
    TResult Function(String smsCodeString)? smsCodeChanged,
    TResult Function()? signInWithPhonePressed,
  }) {
    return smsCodeChanged?.call(smsCodeString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneString)? phoneChanged,
    TResult Function(String smsCodeString)? smsCodeChanged,
    TResult Function()? signInWithPhonePressed,
    required TResult orElse(),
  }) {
    if (smsCodeChanged != null) {
      return smsCodeChanged(smsCodeString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(SMSCodeChanged value) smsCodeChanged,
    required TResult Function(SignInWithPhonePressed value)
        signInWithPhonePressed,
  }) {
    return smsCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(SignInWithPhonePressed value)? signInWithPhonePressed,
  }) {
    return smsCodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(SignInWithPhonePressed value)? signInWithPhonePressed,
    required TResult orElse(),
  }) {
    if (smsCodeChanged != null) {
      return smsCodeChanged(this);
    }
    return orElse();
  }
}

abstract class SMSCodeChanged implements SignInFormPhoneEvent {
  const factory SMSCodeChanged(String smsCodeString) = _$SMSCodeChanged;

  String get smsCodeString;
  @JsonKey(ignore: true)
  $SMSCodeChangedCopyWith<SMSCodeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInWithPhonePressedCopyWith<$Res> {
  factory $SignInWithPhonePressedCopyWith(SignInWithPhonePressed value,
          $Res Function(SignInWithPhonePressed) then) =
      _$SignInWithPhonePressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithPhonePressedCopyWithImpl<$Res>
    extends _$SignInFormPhoneEventCopyWithImpl<$Res>
    implements $SignInWithPhonePressedCopyWith<$Res> {
  _$SignInWithPhonePressedCopyWithImpl(SignInWithPhonePressed _value,
      $Res Function(SignInWithPhonePressed) _then)
      : super(_value, (v) => _then(v as SignInWithPhonePressed));

  @override
  SignInWithPhonePressed get _value => super._value as SignInWithPhonePressed;
}

/// @nodoc

class _$SignInWithPhonePressed implements SignInWithPhonePressed {
  const _$SignInWithPhonePressed();

  @override
  String toString() {
    return 'SignInFormPhoneEvent.signInWithPhonePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SignInWithPhonePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneString) phoneChanged,
    required TResult Function(String smsCodeString) smsCodeChanged,
    required TResult Function() signInWithPhonePressed,
  }) {
    return signInWithPhonePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String phoneString)? phoneChanged,
    TResult Function(String smsCodeString)? smsCodeChanged,
    TResult Function()? signInWithPhonePressed,
  }) {
    return signInWithPhonePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneString)? phoneChanged,
    TResult Function(String smsCodeString)? smsCodeChanged,
    TResult Function()? signInWithPhonePressed,
    required TResult orElse(),
  }) {
    if (signInWithPhonePressed != null) {
      return signInWithPhonePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(SMSCodeChanged value) smsCodeChanged,
    required TResult Function(SignInWithPhonePressed value)
        signInWithPhonePressed,
  }) {
    return signInWithPhonePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(SignInWithPhonePressed value)? signInWithPhonePressed,
  }) {
    return signInWithPhonePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(SignInWithPhonePressed value)? signInWithPhonePressed,
    required TResult orElse(),
  }) {
    if (signInWithPhonePressed != null) {
      return signInWithPhonePressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithPhonePressed implements SignInFormPhoneEvent {
  const factory SignInWithPhonePressed() = _$SignInWithPhonePressed;
}

/// @nodoc
class _$SignInFormPhoneStateTearOff {
  const _$SignInFormPhoneStateTearOff();

  _SignInFormPhoneState call(
      {required Phone phoneNumber,
      required String smsCode,
      required bool isSubmitting,
      required bool showErrorMessages,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignInFormPhoneState(
      phoneNumber: phoneNumber,
      smsCode: smsCode,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SignInFormPhoneState = _$SignInFormPhoneStateTearOff();

/// @nodoc
mixin _$SignInFormPhoneState {
  Phone get phoneNumber => throw _privateConstructorUsedError;
  String get smsCode => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

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
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
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
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
    Object? authFailureOrSuccessOption = freezed,
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
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
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
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
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
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
    Object? authFailureOrSuccessOption = freezed,
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
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignInFormPhoneState implements _SignInFormPhoneState {
  const _$_SignInFormPhoneState(
      {required this.phoneNumber,
      required this.smsCode,
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.authFailureOrSuccessOption});

  @override
  final Phone phoneNumber;
  @override
  final String smsCode;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInFormPhoneState(phoneNumber: $phoneNumber, smsCode: $smsCode, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
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
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(
                other.authFailureOrSuccessOption, authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(smsCode),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(authFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$SignInFormPhoneStateCopyWith<_SignInFormPhoneState> get copyWith =>
      __$SignInFormPhoneStateCopyWithImpl<_SignInFormPhoneState>(
          this, _$identity);
}

abstract class _SignInFormPhoneState implements SignInFormPhoneState {
  const factory _SignInFormPhoneState(
      {required Phone phoneNumber,
      required String smsCode,
      required bool isSubmitting,
      required bool showErrorMessages,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_SignInFormPhoneState;

  @override
  Phone get phoneNumber;
  @override
  String get smsCode;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SignInFormPhoneStateCopyWith<_SignInFormPhoneState> get copyWith =>
      throw _privateConstructorUsedError;
}
