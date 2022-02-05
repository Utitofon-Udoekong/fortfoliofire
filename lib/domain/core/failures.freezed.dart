// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  _Auth<T> auth<T>(AuthValueFailure<T> f) {
    return _Auth<T>(
      f,
    );
  }

  _Notes<T> notes<T>(NotesValueFailure<T> f) {
    return _Notes<T>(
      f,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthValueFailure<T> f) auth,
    required TResult Function(NotesValueFailure<T> f) notes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(NotesValueFailure<T> f)? notes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(NotesValueFailure<T> f)? notes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth<T> value) auth,
    required TResult Function(_Notes<T> value) notes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Notes<T> value)? notes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Notes<T> value)? notes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class _$AuthCopyWith<T, $Res> {
  factory _$AuthCopyWith(_Auth<T> value, $Res Function(_Auth<T>) then) =
      __$AuthCopyWithImpl<T, $Res>;
  $Res call({AuthValueFailure<T> f});

  $AuthValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class __$AuthCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$AuthCopyWith<T, $Res> {
  __$AuthCopyWithImpl(_Auth<T> _value, $Res Function(_Auth<T>) _then)
      : super(_value, (v) => _then(v as _Auth<T>));

  @override
  _Auth<T> get _value => super._value as _Auth<T>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_Auth<T>(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as AuthValueFailure<T>,
    ));
  }

  @override
  $AuthValueFailureCopyWith<T, $Res> get f {
    return $AuthValueFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_Auth<T> implements _Auth<T> {
  const _$_Auth(this.f);

  @override
  final AuthValueFailure<T> f;

  @override
  String toString() {
    return 'ValueFailure<$T>.auth(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Auth<T> &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$AuthCopyWith<T, _Auth<T>> get copyWith =>
      __$AuthCopyWithImpl<T, _Auth<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthValueFailure<T> f) auth,
    required TResult Function(NotesValueFailure<T> f) notes,
  }) {
    return auth(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(NotesValueFailure<T> f)? notes,
  }) {
    return auth?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(NotesValueFailure<T> f)? notes,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth<T> value) auth,
    required TResult Function(_Notes<T> value) notes,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Notes<T> value)? notes,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Notes<T> value)? notes,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class _Auth<T> implements ValueFailure<T> {
  const factory _Auth(AuthValueFailure<T> f) = _$_Auth<T>;

  AuthValueFailure<T> get f;
  @JsonKey(ignore: true)
  _$AuthCopyWith<T, _Auth<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NotesCopyWith<T, $Res> {
  factory _$NotesCopyWith(_Notes<T> value, $Res Function(_Notes<T>) then) =
      __$NotesCopyWithImpl<T, $Res>;
  $Res call({NotesValueFailure<T> f});

  $NotesValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class __$NotesCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$NotesCopyWith<T, $Res> {
  __$NotesCopyWithImpl(_Notes<T> _value, $Res Function(_Notes<T>) _then)
      : super(_value, (v) => _then(v as _Notes<T>));

  @override
  _Notes<T> get _value => super._value as _Notes<T>;

  @override
  $Res call({
    Object? f = freezed,
  }) {
    return _then(_Notes<T>(
      f == freezed
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as NotesValueFailure<T>,
    ));
  }

  @override
  $NotesValueFailureCopyWith<T, $Res> get f {
    return $NotesValueFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc

class _$_Notes<T> implements _Notes<T> {
  const _$_Notes(this.f);

  @override
  final NotesValueFailure<T> f;

  @override
  String toString() {
    return 'ValueFailure<$T>.notes(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Notes<T> &&
            const DeepCollectionEquality().equals(other.f, f));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(f));

  @JsonKey(ignore: true)
  @override
  _$NotesCopyWith<T, _Notes<T>> get copyWith =>
      __$NotesCopyWithImpl<T, _Notes<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthValueFailure<T> f) auth,
    required TResult Function(NotesValueFailure<T> f) notes,
  }) {
    return notes(f);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(NotesValueFailure<T> f)? notes,
  }) {
    return notes?.call(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthValueFailure<T> f)? auth,
    TResult Function(NotesValueFailure<T> f)? notes,
    required TResult orElse(),
  }) {
    if (notes != null) {
      return notes(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Auth<T> value) auth,
    required TResult Function(_Notes<T> value) notes,
  }) {
    return notes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Notes<T> value)? notes,
  }) {
    return notes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Auth<T> value)? auth,
    TResult Function(_Notes<T> value)? notes,
    required TResult orElse(),
  }) {
    if (notes != null) {
      return notes(this);
    }
    return orElse();
  }
}

abstract class _Notes<T> implements ValueFailure<T> {
  const factory _Notes(NotesValueFailure<T> f) = _$_Notes<T>;

  NotesValueFailure<T> get f;
  @JsonKey(ignore: true)
  _$NotesCopyWith<T, _Notes<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthValueFailureTearOff {
  const _$AuthValueFailureTearOff();

  InvalidEmail<T> invalidEmail<T>({required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  InvalidPassword<T> invalidPassword<T>({required T failedValue}) {
    return InvalidPassword<T>(
      failedValue: failedValue,
    );
  }

  ShortPassword<T> shortPassword<T>({required T failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }

  ShortName<T> shortName<T>({required T failedValue}) {
    return ShortName<T>(
      failedValue: failedValue,
    );
  }

  InvalidPhone<T> invalidPhone<T>({required T failedValue}) {
    return InvalidPhone<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $AuthValueFailure = _$AuthValueFailureTearOff();

/// @nodoc
mixin _$AuthValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) shortName,
    required TResult Function(T failedValue) invalidPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? invalidPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? invalidPhone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(ShortName<T> value) shortName,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthValueFailureCopyWith<T, AuthValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthValueFailureCopyWith<T, $Res> {
  factory $AuthValueFailureCopyWith(
          AuthValueFailure<T> value, $Res Function(AuthValueFailure<T>) then) =
      _$AuthValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  _$AuthValueFailureCopyWithImpl(this._value, this._then);

  final AuthValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(AuthValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'AuthValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) shortName,
    required TResult Function(T failedValue) invalidPhone,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? invalidPhone,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? invalidPhone,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(ShortName<T> value) shortName,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements AuthValueFailure<T> {
  const factory InvalidEmail({required T failedValue}) = _$InvalidEmail<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidPasswordCopyWith<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  factory $InvalidPasswordCopyWith(
          InvalidPassword<T> value, $Res Function(InvalidPassword<T>) then) =
      _$InvalidPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidPasswordCopyWithImpl<T, $Res>
    extends _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPasswordCopyWith<T, $Res> {
  _$InvalidPasswordCopyWithImpl(
      InvalidPassword<T> _value, $Res Function(InvalidPassword<T>) _then)
      : super(_value, (v) => _then(v as InvalidPassword<T>));

  @override
  InvalidPassword<T> get _value => super._value as InvalidPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidPassword<T> implements InvalidPassword<T> {
  const _$InvalidPassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'AuthValueFailure<$T>.invalidPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidPassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith =>
      _$InvalidPasswordCopyWithImpl<T, InvalidPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) shortName,
    required TResult Function(T failedValue) invalidPhone,
  }) {
    return invalidPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? invalidPhone,
  }) {
    return invalidPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? invalidPhone,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(ShortName<T> value) shortName,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
  }) {
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
  }) {
    return invalidPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidPassword<T> implements AuthValueFailure<T> {
  const factory InvalidPassword({required T failedValue}) =
      _$InvalidPassword<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'AuthValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShortPassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) shortName,
    required TResult Function(T failedValue) invalidPhone,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? invalidPhone,
  }) {
    return shortPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? invalidPhone,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(ShortName<T> value) shortName,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements AuthValueFailure<T> {
  const factory ShortPassword({required T failedValue}) = _$ShortPassword<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortNameCopyWith<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  factory $ShortNameCopyWith(
          ShortName<T> value, $Res Function(ShortName<T>) then) =
      _$ShortNameCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$ShortNameCopyWithImpl<T, $Res>
    extends _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $ShortNameCopyWith<T, $Res> {
  _$ShortNameCopyWithImpl(
      ShortName<T> _value, $Res Function(ShortName<T>) _then)
      : super(_value, (v) => _then(v as ShortName<T>));

  @override
  ShortName<T> get _value => super._value as ShortName<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(ShortName<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortName<T> implements ShortName<T> {
  const _$ShortName({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'AuthValueFailure<$T>.shortName(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShortName<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $ShortNameCopyWith<T, ShortName<T>> get copyWith =>
      _$ShortNameCopyWithImpl<T, ShortName<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) shortName,
    required TResult Function(T failedValue) invalidPhone,
  }) {
    return shortName(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? invalidPhone,
  }) {
    return shortName?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? invalidPhone,
    required TResult orElse(),
  }) {
    if (shortName != null) {
      return shortName(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(ShortName<T> value) shortName,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
  }) {
    return shortName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
  }) {
    return shortName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    required TResult orElse(),
  }) {
    if (shortName != null) {
      return shortName(this);
    }
    return orElse();
  }
}

abstract class ShortName<T> implements AuthValueFailure<T> {
  const factory ShortName({required T failedValue}) = _$ShortName<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $ShortNameCopyWith<T, ShortName<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidPhoneCopyWith<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  factory $InvalidPhoneCopyWith(
          InvalidPhone<T> value, $Res Function(InvalidPhone<T>) then) =
      _$InvalidPhoneCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidPhoneCopyWithImpl<T, $Res>
    extends _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPhoneCopyWith<T, $Res> {
  _$InvalidPhoneCopyWithImpl(
      InvalidPhone<T> _value, $Res Function(InvalidPhone<T>) _then)
      : super(_value, (v) => _then(v as InvalidPhone<T>));

  @override
  InvalidPhone<T> get _value => super._value as InvalidPhone<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidPhone<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidPhone<T> implements InvalidPhone<T> {
  const _$InvalidPhone({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'AuthValueFailure<$T>.invalidPhone(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidPhone<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidPhoneCopyWith<T, InvalidPhone<T>> get copyWith =>
      _$InvalidPhoneCopyWithImpl<T, InvalidPhone<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) shortName,
    required TResult Function(T failedValue) invalidPhone,
  }) {
    return invalidPhone(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? invalidPhone,
  }) {
    return invalidPhone?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? invalidPhone,
    required TResult orElse(),
  }) {
    if (invalidPhone != null) {
      return invalidPhone(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(ShortName<T> value) shortName,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
  }) {
    return invalidPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
  }) {
    return invalidPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    required TResult orElse(),
  }) {
    if (invalidPhone != null) {
      return invalidPhone(this);
    }
    return orElse();
  }
}

abstract class InvalidPhone<T> implements AuthValueFailure<T> {
  const factory InvalidPhone({required T failedValue}) = _$InvalidPhone<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidPhoneCopyWith<T, InvalidPhone<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NotesValueFailureTearOff {
  const _$NotesValueFailureTearOff();

  ExceedingLength<T> exceedinglength<T>(
      {required T failedValue, required int max}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
      max: max,
    );
  }

  Empty<T> empty<T>({required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

  MultiLine<T> multiLine<T>({required T failedValue}) {
    return MultiLine<T>(
      failedValue: failedValue,
    );
  }

  ListTooLong<T> listTooLong<T>({required T failedValue, required int max}) {
    return ListTooLong<T>(
      failedValue: failedValue,
      max: max,
    );
  }
}

/// @nodoc
const $NotesValueFailure = _$NotesValueFailureTearOff();

/// @nodoc
mixin _$NotesValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedinglength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue, int max) listTooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedinglength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? listTooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedinglength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? listTooLong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedinglength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(MultiLine<T> value) multiLine,
    required TResult Function(ListTooLong<T> value) listTooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedinglength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MultiLine<T> value)? multiLine,
    TResult Function(ListTooLong<T> value)? listTooLong,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedinglength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MultiLine<T> value)? multiLine,
    TResult Function(ListTooLong<T> value)? listTooLong,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotesValueFailureCopyWith<T, NotesValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesValueFailureCopyWith<T, $Res> {
  factory $NotesValueFailureCopyWith(NotesValueFailure<T> value,
          $Res Function(NotesValueFailure<T>) then) =
      _$NotesValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$NotesValueFailureCopyWithImpl<T, $Res>
    implements $NotesValueFailureCopyWith<T, $Res> {
  _$NotesValueFailureCopyWithImpl(this._value, this._then);

  final NotesValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(NotesValueFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res>
    implements $NotesValueFailureCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$NotesValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLength<T> implements ExceedingLength<T> {
  const _$ExceedingLength({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'NotesValueFailure<$T>.exceedinglength(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExceedingLength<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedinglength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue, int max) listTooLong,
  }) {
    return exceedinglength(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedinglength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? listTooLong,
  }) {
    return exceedinglength?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedinglength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? listTooLong,
    required TResult orElse(),
  }) {
    if (exceedinglength != null) {
      return exceedinglength(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedinglength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(MultiLine<T> value) multiLine,
    required TResult Function(ListTooLong<T> value) listTooLong,
  }) {
    return exceedinglength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedinglength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MultiLine<T> value)? multiLine,
    TResult Function(ListTooLong<T> value)? listTooLong,
  }) {
    return exceedinglength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedinglength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MultiLine<T> value)? multiLine,
    TResult Function(ListTooLong<T> value)? listTooLong,
    required TResult orElse(),
  }) {
    if (exceedinglength != null) {
      return exceedinglength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements NotesValueFailure<T> {
  const factory ExceedingLength({required T failedValue, required int max}) =
      _$ExceedingLength<T>;

  @override
  T get failedValue;
  int get max;
  @override
  @JsonKey(ignore: true)
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res>
    implements $NotesValueFailureCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res>
    extends _$NotesValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Empty<T> implements Empty<T> {
  const _$Empty({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'NotesValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Empty<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedinglength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue, int max) listTooLong,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedinglength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? listTooLong,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedinglength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? listTooLong,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedinglength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(MultiLine<T> value) multiLine,
    required TResult Function(ListTooLong<T> value) listTooLong,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedinglength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MultiLine<T> value)? multiLine,
    TResult Function(ListTooLong<T> value)? listTooLong,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedinglength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MultiLine<T> value)? multiLine,
    TResult Function(ListTooLong<T> value)? listTooLong,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements NotesValueFailure<T> {
  const factory Empty({required T failedValue}) = _$Empty<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiLineCopyWith<T, $Res>
    implements $NotesValueFailureCopyWith<T, $Res> {
  factory $MultiLineCopyWith(
          MultiLine<T> value, $Res Function(MultiLine<T>) then) =
      _$MultiLineCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$MultiLineCopyWithImpl<T, $Res>
    extends _$NotesValueFailureCopyWithImpl<T, $Res>
    implements $MultiLineCopyWith<T, $Res> {
  _$MultiLineCopyWithImpl(
      MultiLine<T> _value, $Res Function(MultiLine<T>) _then)
      : super(_value, (v) => _then(v as MultiLine<T>));

  @override
  MultiLine<T> get _value => super._value as MultiLine<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(MultiLine<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$MultiLine<T> implements MultiLine<T> {
  const _$MultiLine({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'NotesValueFailure<$T>.multiLine(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultiLine<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $MultiLineCopyWith<T, MultiLine<T>> get copyWith =>
      _$MultiLineCopyWithImpl<T, MultiLine<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedinglength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue, int max) listTooLong,
  }) {
    return multiLine(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedinglength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? listTooLong,
  }) {
    return multiLine?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedinglength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? listTooLong,
    required TResult orElse(),
  }) {
    if (multiLine != null) {
      return multiLine(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedinglength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(MultiLine<T> value) multiLine,
    required TResult Function(ListTooLong<T> value) listTooLong,
  }) {
    return multiLine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedinglength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MultiLine<T> value)? multiLine,
    TResult Function(ListTooLong<T> value)? listTooLong,
  }) {
    return multiLine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedinglength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MultiLine<T> value)? multiLine,
    TResult Function(ListTooLong<T> value)? listTooLong,
    required TResult orElse(),
  }) {
    if (multiLine != null) {
      return multiLine(this);
    }
    return orElse();
  }
}

abstract class MultiLine<T> implements NotesValueFailure<T> {
  const factory MultiLine({required T failedValue}) = _$MultiLine<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $MultiLineCopyWith<T, MultiLine<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTooLongCopyWith<T, $Res>
    implements $NotesValueFailureCopyWith<T, $Res> {
  factory $ListTooLongCopyWith(
          ListTooLong<T> value, $Res Function(ListTooLong<T>) then) =
      _$ListTooLongCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class _$ListTooLongCopyWithImpl<T, $Res>
    extends _$NotesValueFailureCopyWithImpl<T, $Res>
    implements $ListTooLongCopyWith<T, $Res> {
  _$ListTooLongCopyWithImpl(
      ListTooLong<T> _value, $Res Function(ListTooLong<T>) _then)
      : super(_value, (v) => _then(v as ListTooLong<T>));

  @override
  ListTooLong<T> get _value => super._value as ListTooLong<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(ListTooLong<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ListTooLong<T> implements ListTooLong<T> {
  const _$ListTooLong({required this.failedValue, required this.max});

  @override
  final T failedValue;
  @override
  final int max;

  @override
  String toString() {
    return 'NotesValueFailure<$T>.listTooLong(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListTooLong<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.max, max));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(max));

  @JsonKey(ignore: true)
  @override
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith =>
      _$ListTooLongCopyWithImpl<T, ListTooLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int max) exceedinglength,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue, int max) listTooLong,
  }) {
    return listTooLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedinglength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? listTooLong,
  }) {
    return listTooLong?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int max)? exceedinglength,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue, int max)? listTooLong,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(failedValue, max);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExceedingLength<T> value) exceedinglength,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(MultiLine<T> value) multiLine,
    required TResult Function(ListTooLong<T> value) listTooLong,
  }) {
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedinglength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MultiLine<T> value)? multiLine,
    TResult Function(ListTooLong<T> value)? listTooLong,
  }) {
    return listTooLong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExceedingLength<T> value)? exceedinglength,
    TResult Function(Empty<T> value)? empty,
    TResult Function(MultiLine<T> value)? multiLine,
    TResult Function(ListTooLong<T> value)? listTooLong,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class ListTooLong<T> implements NotesValueFailure<T> {
  const factory ListTooLong({required T failedValue, required int max}) =
      _$ListTooLong<T>;

  @override
  T get failedValue;
  int get max;
  @override
  @JsonKey(ignore: true)
  $ListTooLongCopyWith<T, ListTooLong<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
