// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpFormEventTearOff {
  const _$SignUpFormEventTearOff();

  EmailChanged emailChanged(String emailString) {
    return EmailChanged(
      emailString,
    );
  }

  FirstNameChanged firstNameChanged(String firstNameString) {
    return FirstNameChanged(
      firstNameString,
    );
  }

  LastNameChanged lastNameChanged(String lastNameString) {
    return LastNameChanged(
      lastNameString,
    );
  }

  PhoneNumberChanged phoneNumberChanged(String phoneNumberString) {
    return PhoneNumberChanged(
      phoneNumberString,
    );
  }

  PasswordChanged passwordChanged(String passwordString) {
    return PasswordChanged(
      passwordString,
    );
  }

  SMSCodeChanged smsCodeChanged(String smsCodeString) {
    return SMSCodeChanged(
      smsCodeString,
    );
  }

  RegisterWithEmailAndPasswordPressed registerWithEmailAndPasswordpressed() {
    return const RegisterWithEmailAndPasswordPressed();
  }
}

/// @nodoc
const $SignUpFormEvent = _$SignUpFormEventTearOff();

/// @nodoc
mixin _$SignUpFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String firstNameString) firstNameChanged,
    required TResult Function(String lastNameString) lastNameChanged,
    required TResult Function(String phoneNumberString) phoneNumberChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String smsCodeString) smsCodeChanged,
    required TResult Function() registerWithEmailAndPasswordpressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String firstNameString)? firstNameChanged,
    TResult Function(String lastNameString)? lastNameChanged,
    TResult Function(String phoneNumberString)? phoneNumberChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String smsCodeString)? smsCodeChanged,
    TResult Function()? registerWithEmailAndPasswordpressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String firstNameString)? firstNameChanged,
    TResult Function(String lastNameString)? lastNameChanged,
    TResult Function(String phoneNumberString)? phoneNumberChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String smsCodeString)? smsCodeChanged,
    TResult Function()? registerWithEmailAndPasswordpressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SMSCodeChanged value) smsCodeChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordpressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordpressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordpressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormEventCopyWith<$Res> {
  factory $SignUpFormEventCopyWith(
          SignUpFormEvent value, $Res Function(SignUpFormEvent) then) =
      _$SignUpFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpFormEventCopyWithImpl<$Res>
    implements $SignUpFormEventCopyWith<$Res> {
  _$SignUpFormEventCopyWithImpl(this._value, this._then);

  final SignUpFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpFormEvent) _then;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailString});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object? emailString = freezed,
  }) {
    return _then(EmailChanged(
      emailString == freezed
          ? _value.emailString
          : emailString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailString);

  @override
  final String emailString;

  @override
  String toString() {
    return 'SignUpFormEvent.emailChanged(emailString: $emailString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailChanged &&
            const DeepCollectionEquality()
                .equals(other.emailString, emailString));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(emailString));

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String firstNameString) firstNameChanged,
    required TResult Function(String lastNameString) lastNameChanged,
    required TResult Function(String phoneNumberString) phoneNumberChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String smsCodeString) smsCodeChanged,
    required TResult Function() registerWithEmailAndPasswordpressed,
  }) {
    return emailChanged(emailString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String firstNameString)? firstNameChanged,
    TResult Function(String lastNameString)? lastNameChanged,
    TResult Function(String phoneNumberString)? phoneNumberChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String smsCodeString)? smsCodeChanged,
    TResult Function()? registerWithEmailAndPasswordpressed,
  }) {
    return emailChanged?.call(emailString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String firstNameString)? firstNameChanged,
    TResult Function(String lastNameString)? lastNameChanged,
    TResult Function(String phoneNumberString)? phoneNumberChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String smsCodeString)? smsCodeChanged,
    TResult Function()? registerWithEmailAndPasswordpressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SMSCodeChanged value) smsCodeChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordpressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordpressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordpressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignUpFormEvent {
  const factory EmailChanged(String emailString) = _$EmailChanged;

  String get emailString;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstNameChangedCopyWith<$Res> {
  factory $FirstNameChangedCopyWith(
          FirstNameChanged value, $Res Function(FirstNameChanged) then) =
      _$FirstNameChangedCopyWithImpl<$Res>;
  $Res call({String firstNameString});
}

/// @nodoc
class _$FirstNameChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $FirstNameChangedCopyWith<$Res> {
  _$FirstNameChangedCopyWithImpl(
      FirstNameChanged _value, $Res Function(FirstNameChanged) _then)
      : super(_value, (v) => _then(v as FirstNameChanged));

  @override
  FirstNameChanged get _value => super._value as FirstNameChanged;

  @override
  $Res call({
    Object? firstNameString = freezed,
  }) {
    return _then(FirstNameChanged(
      firstNameString == freezed
          ? _value.firstNameString
          : firstNameString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirstNameChanged implements FirstNameChanged {
  const _$FirstNameChanged(this.firstNameString);

  @override
  final String firstNameString;

  @override
  String toString() {
    return 'SignUpFormEvent.firstNameChanged(firstNameString: $firstNameString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FirstNameChanged &&
            const DeepCollectionEquality()
                .equals(other.firstNameString, firstNameString));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(firstNameString));

  @JsonKey(ignore: true)
  @override
  $FirstNameChangedCopyWith<FirstNameChanged> get copyWith =>
      _$FirstNameChangedCopyWithImpl<FirstNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String firstNameString) firstNameChanged,
    required TResult Function(String lastNameString) lastNameChanged,
    required TResult Function(String phoneNumberString) phoneNumberChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String smsCodeString) smsCodeChanged,
    required TResult Function() registerWithEmailAndPasswordpressed,
  }) {
    return firstNameChanged(firstNameString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String firstNameString)? firstNameChanged,
    TResult Function(String lastNameString)? lastNameChanged,
    TResult Function(String phoneNumberString)? phoneNumberChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String smsCodeString)? smsCodeChanged,
    TResult Function()? registerWithEmailAndPasswordpressed,
  }) {
    return firstNameChanged?.call(firstNameString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String firstNameString)? firstNameChanged,
    TResult Function(String lastNameString)? lastNameChanged,
    TResult Function(String phoneNumberString)? phoneNumberChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String smsCodeString)? smsCodeChanged,
    TResult Function()? registerWithEmailAndPasswordpressed,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(firstNameString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SMSCodeChanged value) smsCodeChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordpressed,
  }) {
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordpressed,
  }) {
    return firstNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordpressed,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class FirstNameChanged implements SignUpFormEvent {
  const factory FirstNameChanged(String firstNameString) = _$FirstNameChanged;

  String get firstNameString;
  @JsonKey(ignore: true)
  $FirstNameChangedCopyWith<FirstNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastNameChangedCopyWith<$Res> {
  factory $LastNameChangedCopyWith(
          LastNameChanged value, $Res Function(LastNameChanged) then) =
      _$LastNameChangedCopyWithImpl<$Res>;
  $Res call({String lastNameString});
}

/// @nodoc
class _$LastNameChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $LastNameChangedCopyWith<$Res> {
  _$LastNameChangedCopyWithImpl(
      LastNameChanged _value, $Res Function(LastNameChanged) _then)
      : super(_value, (v) => _then(v as LastNameChanged));

  @override
  LastNameChanged get _value => super._value as LastNameChanged;

  @override
  $Res call({
    Object? lastNameString = freezed,
  }) {
    return _then(LastNameChanged(
      lastNameString == freezed
          ? _value.lastNameString
          : lastNameString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LastNameChanged implements LastNameChanged {
  const _$LastNameChanged(this.lastNameString);

  @override
  final String lastNameString;

  @override
  String toString() {
    return 'SignUpFormEvent.lastNameChanged(lastNameString: $lastNameString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LastNameChanged &&
            const DeepCollectionEquality()
                .equals(other.lastNameString, lastNameString));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(lastNameString));

  @JsonKey(ignore: true)
  @override
  $LastNameChangedCopyWith<LastNameChanged> get copyWith =>
      _$LastNameChangedCopyWithImpl<LastNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String firstNameString) firstNameChanged,
    required TResult Function(String lastNameString) lastNameChanged,
    required TResult Function(String phoneNumberString) phoneNumberChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String smsCodeString) smsCodeChanged,
    required TResult Function() registerWithEmailAndPasswordpressed,
  }) {
    return lastNameChanged(lastNameString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String firstNameString)? firstNameChanged,
    TResult Function(String lastNameString)? lastNameChanged,
    TResult Function(String phoneNumberString)? phoneNumberChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String smsCodeString)? smsCodeChanged,
    TResult Function()? registerWithEmailAndPasswordpressed,
  }) {
    return lastNameChanged?.call(lastNameString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String firstNameString)? firstNameChanged,
    TResult Function(String lastNameString)? lastNameChanged,
    TResult Function(String phoneNumberString)? phoneNumberChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String smsCodeString)? smsCodeChanged,
    TResult Function()? registerWithEmailAndPasswordpressed,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(lastNameString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SMSCodeChanged value) smsCodeChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordpressed,
  }) {
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordpressed,
  }) {
    return lastNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordpressed,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class LastNameChanged implements SignUpFormEvent {
  const factory LastNameChanged(String lastNameString) = _$LastNameChanged;

  String get lastNameString;
  @JsonKey(ignore: true)
  $LastNameChangedCopyWith<LastNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberChangedCopyWith<$Res> {
  factory $PhoneNumberChangedCopyWith(
          PhoneNumberChanged value, $Res Function(PhoneNumberChanged) then) =
      _$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumberString});
}

/// @nodoc
class _$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $PhoneNumberChangedCopyWith<$Res> {
  _$PhoneNumberChangedCopyWithImpl(
      PhoneNumberChanged _value, $Res Function(PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as PhoneNumberChanged));

  @override
  PhoneNumberChanged get _value => super._value as PhoneNumberChanged;

  @override
  $Res call({
    Object? phoneNumberString = freezed,
  }) {
    return _then(PhoneNumberChanged(
      phoneNumberString == freezed
          ? _value.phoneNumberString
          : phoneNumberString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberChanged implements PhoneNumberChanged {
  const _$PhoneNumberChanged(this.phoneNumberString);

  @override
  final String phoneNumberString;

  @override
  String toString() {
    return 'SignUpFormEvent.phoneNumberChanged(phoneNumberString: $phoneNumberString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PhoneNumberChanged &&
            const DeepCollectionEquality()
                .equals(other.phoneNumberString, phoneNumberString));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneNumberString));

  @JsonKey(ignore: true)
  @override
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      _$PhoneNumberChangedCopyWithImpl<PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String firstNameString) firstNameChanged,
    required TResult Function(String lastNameString) lastNameChanged,
    required TResult Function(String phoneNumberString) phoneNumberChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String smsCodeString) smsCodeChanged,
    required TResult Function() registerWithEmailAndPasswordpressed,
  }) {
    return phoneNumberChanged(phoneNumberString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String firstNameString)? firstNameChanged,
    TResult Function(String lastNameString)? lastNameChanged,
    TResult Function(String phoneNumberString)? phoneNumberChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String smsCodeString)? smsCodeChanged,
    TResult Function()? registerWithEmailAndPasswordpressed,
  }) {
    return phoneNumberChanged?.call(phoneNumberString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String firstNameString)? firstNameChanged,
    TResult Function(String lastNameString)? lastNameChanged,
    TResult Function(String phoneNumberString)? phoneNumberChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String smsCodeString)? smsCodeChanged,
    TResult Function()? registerWithEmailAndPasswordpressed,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumberString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SMSCodeChanged value) smsCodeChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordpressed,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordpressed,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordpressed,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements SignUpFormEvent {
  const factory PhoneNumberChanged(String phoneNumberString) =
      _$PhoneNumberChanged;

  String get phoneNumberString;
  @JsonKey(ignore: true)
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordString});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? passwordString = freezed,
  }) {
    return _then(PasswordChanged(
      passwordString == freezed
          ? _value.passwordString
          : passwordString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordString);

  @override
  final String passwordString;

  @override
  String toString() {
    return 'SignUpFormEvent.passwordChanged(passwordString: $passwordString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordChanged &&
            const DeepCollectionEquality()
                .equals(other.passwordString, passwordString));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(passwordString));

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String firstNameString) firstNameChanged,
    required TResult Function(String lastNameString) lastNameChanged,
    required TResult Function(String phoneNumberString) phoneNumberChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String smsCodeString) smsCodeChanged,
    required TResult Function() registerWithEmailAndPasswordpressed,
  }) {
    return passwordChanged(passwordString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String firstNameString)? firstNameChanged,
    TResult Function(String lastNameString)? lastNameChanged,
    TResult Function(String phoneNumberString)? phoneNumberChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String smsCodeString)? smsCodeChanged,
    TResult Function()? registerWithEmailAndPasswordpressed,
  }) {
    return passwordChanged?.call(passwordString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String firstNameString)? firstNameChanged,
    TResult Function(String lastNameString)? lastNameChanged,
    TResult Function(String phoneNumberString)? phoneNumberChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String smsCodeString)? smsCodeChanged,
    TResult Function()? registerWithEmailAndPasswordpressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SMSCodeChanged value) smsCodeChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordpressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordpressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordpressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignUpFormEvent {
  const factory PasswordChanged(String passwordString) = _$PasswordChanged;

  String get passwordString;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
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
    extends _$SignUpFormEventCopyWithImpl<$Res>
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
    return 'SignUpFormEvent.smsCodeChanged(smsCodeString: $smsCodeString)';
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
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String firstNameString) firstNameChanged,
    required TResult Function(String lastNameString) lastNameChanged,
    required TResult Function(String phoneNumberString) phoneNumberChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String smsCodeString) smsCodeChanged,
    required TResult Function() registerWithEmailAndPasswordpressed,
  }) {
    return smsCodeChanged(smsCodeString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String firstNameString)? firstNameChanged,
    TResult Function(String lastNameString)? lastNameChanged,
    TResult Function(String phoneNumberString)? phoneNumberChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String smsCodeString)? smsCodeChanged,
    TResult Function()? registerWithEmailAndPasswordpressed,
  }) {
    return smsCodeChanged?.call(smsCodeString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String firstNameString)? firstNameChanged,
    TResult Function(String lastNameString)? lastNameChanged,
    TResult Function(String phoneNumberString)? phoneNumberChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String smsCodeString)? smsCodeChanged,
    TResult Function()? registerWithEmailAndPasswordpressed,
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
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SMSCodeChanged value) smsCodeChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordpressed,
  }) {
    return smsCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordpressed,
  }) {
    return smsCodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordpressed,
    required TResult orElse(),
  }) {
    if (smsCodeChanged != null) {
      return smsCodeChanged(this);
    }
    return orElse();
  }
}

abstract class SMSCodeChanged implements SignUpFormEvent {
  const factory SMSCodeChanged(String smsCodeString) = _$SMSCodeChanged;

  String get smsCodeString;
  @JsonKey(ignore: true)
  $SMSCodeChangedCopyWith<SMSCodeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $RegisterWithEmailAndPasswordPressedCopyWith(
          RegisterWithEmailAndPasswordPressed value,
          $Res Function(RegisterWithEmailAndPasswordPressed) then) =
      _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignUpFormEventCopyWithImpl<$Res>
    implements $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  _$RegisterWithEmailAndPasswordPressedCopyWithImpl(
      RegisterWithEmailAndPasswordPressed _value,
      $Res Function(RegisterWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as RegisterWithEmailAndPasswordPressed));

  @override
  RegisterWithEmailAndPasswordPressed get _value =>
      super._value as RegisterWithEmailAndPasswordPressed;
}

/// @nodoc

class _$RegisterWithEmailAndPasswordPressed
    implements RegisterWithEmailAndPasswordPressed {
  const _$RegisterWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SignUpFormEvent.registerWithEmailAndPasswordpressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String firstNameString) firstNameChanged,
    required TResult Function(String lastNameString) lastNameChanged,
    required TResult Function(String phoneNumberString) phoneNumberChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function(String smsCodeString) smsCodeChanged,
    required TResult Function() registerWithEmailAndPasswordpressed,
  }) {
    return registerWithEmailAndPasswordpressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String firstNameString)? firstNameChanged,
    TResult Function(String lastNameString)? lastNameChanged,
    TResult Function(String phoneNumberString)? phoneNumberChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String smsCodeString)? smsCodeChanged,
    TResult Function()? registerWithEmailAndPasswordpressed,
  }) {
    return registerWithEmailAndPasswordpressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String firstNameString)? firstNameChanged,
    TResult Function(String lastNameString)? lastNameChanged,
    TResult Function(String phoneNumberString)? phoneNumberChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function(String smsCodeString)? smsCodeChanged,
    TResult Function()? registerWithEmailAndPasswordpressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordpressed != null) {
      return registerWithEmailAndPasswordpressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(FirstNameChanged value) firstNameChanged,
    required TResult Function(LastNameChanged value) lastNameChanged,
    required TResult Function(PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SMSCodeChanged value) smsCodeChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordpressed,
  }) {
    return registerWithEmailAndPasswordpressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordpressed,
  }) {
    return registerWithEmailAndPasswordpressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(FirstNameChanged value)? firstNameChanged,
    TResult Function(LastNameChanged value)? lastNameChanged,
    TResult Function(PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SMSCodeChanged value)? smsCodeChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordpressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordpressed != null) {
      return registerWithEmailAndPasswordpressed(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPasswordPressed implements SignUpFormEvent {
  const factory RegisterWithEmailAndPasswordPressed() =
      _$RegisterWithEmailAndPasswordPressed;
}

/// @nodoc
class _$SignUpFormStateTearOff {
  const _$SignUpFormStateTearOff();

  _SignUpFormState call(
      {required EmailAddress emailAddress,
      required UserName firstName,
      required UserName lastName,
      required Phone phoneNumber,
      required String smsCode,
      required Password password,
      required bool isSubmitting,
      required bool showErrorMessages,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignUpFormState(
      emailAddress: emailAddress,
      firstName: firstName,
      lastName: lastName,
      phoneNumber: phoneNumber,
      smsCode: smsCode,
      password: password,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SignUpFormState = _$SignUpFormStateTearOff();

/// @nodoc
mixin _$SignUpFormState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  UserName get firstName => throw _privateConstructorUsedError;
  UserName get lastName => throw _privateConstructorUsedError;
  Phone get phoneNumber => throw _privateConstructorUsedError;
  String get smsCode => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpFormStateCopyWith<SignUpFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpFormStateCopyWith<$Res> {
  factory $SignUpFormStateCopyWith(
          SignUpFormState value, $Res Function(SignUpFormState) then) =
      _$SignUpFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      UserName firstName,
      UserName lastName,
      Phone phoneNumber,
      String smsCode,
      Password password,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignUpFormStateCopyWithImpl<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  _$SignUpFormStateCopyWithImpl(this._value, this._then);

  final SignUpFormState _value;
  // ignore: unused_field
  final $Res Function(SignUpFormState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
    Object? smsCode = freezed,
    Object? password = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as UserName,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as UserName,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as Phone,
      smsCode: smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
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
abstract class _$SignUpFormStateCopyWith<$Res>
    implements $SignUpFormStateCopyWith<$Res> {
  factory _$SignUpFormStateCopyWith(
          _SignUpFormState value, $Res Function(_SignUpFormState) then) =
      __$SignUpFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      UserName firstName,
      UserName lastName,
      Phone phoneNumber,
      String smsCode,
      Password password,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignUpFormStateCopyWithImpl<$Res>
    extends _$SignUpFormStateCopyWithImpl<$Res>
    implements _$SignUpFormStateCopyWith<$Res> {
  __$SignUpFormStateCopyWithImpl(
      _SignUpFormState _value, $Res Function(_SignUpFormState) _then)
      : super(_value, (v) => _then(v as _SignUpFormState));

  @override
  _SignUpFormState get _value => super._value as _SignUpFormState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phoneNumber = freezed,
    Object? smsCode = freezed,
    Object? password = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignUpFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as UserName,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as UserName,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as Phone,
      smsCode: smsCode == freezed
          ? _value.smsCode
          : smsCode // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
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

class _$_SignUpFormState implements _SignUpFormState {
  const _$_SignUpFormState(
      {required this.emailAddress,
      required this.firstName,
      required this.lastName,
      required this.phoneNumber,
      required this.smsCode,
      required this.password,
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress emailAddress;
  @override
  final UserName firstName;
  @override
  final UserName lastName;
  @override
  final Phone phoneNumber;
  @override
  final String smsCode;
  @override
  final Password password;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignUpFormState(emailAddress: $emailAddress, firstName: $firstName, lastName: $lastName, phoneNumber: $phoneNumber, smsCode: $smsCode, password: $password, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpFormState &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.smsCode, smsCode) &&
            const DeepCollectionEquality().equals(other.password, password) &&
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
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(smsCode),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(authFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$SignUpFormStateCopyWith<_SignUpFormState> get copyWith =>
      __$SignUpFormStateCopyWithImpl<_SignUpFormState>(this, _$identity);
}

abstract class _SignUpFormState implements SignUpFormState {
  const factory _SignUpFormState(
      {required EmailAddress emailAddress,
      required UserName firstName,
      required UserName lastName,
      required Phone phoneNumber,
      required String smsCode,
      required Password password,
      required bool isSubmitting,
      required bool showErrorMessages,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_SignUpFormState;

  @override
  EmailAddress get emailAddress;
  @override
  UserName get firstName;
  @override
  UserName get lastName;
  @override
  Phone get phoneNumber;
  @override
  String get smsCode;
  @override
  Password get password;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SignUpFormStateCopyWith<_SignUpFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
