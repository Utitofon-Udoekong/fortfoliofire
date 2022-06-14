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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) invalidPhone,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) shortName,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue, int min) invalidAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue, int min)? invalidAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue, int min)? invalidAmount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(ShortName<T> value) shortName,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidAmount<T> value) invalidAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

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
abstract class _$$InvalidEmailCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidEmailCopyWith(
          _$InvalidEmail<T> value, $Res Function(_$InvalidEmail<T>) then) =
      __$$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidEmailCopyWith<T, $Res> {
  __$$InvalidEmailCopyWithImpl(
      _$InvalidEmail<T> _value, $Res Function(_$InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidEmail<T>));

  @override
  _$InvalidEmail<T> get _value => super._value as _$InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidEmail<T>(
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
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmail<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      __$$InvalidEmailCopyWithImpl<T, _$InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) invalidPhone,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) shortName,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue, int min) invalidAmount,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue, int min)? invalidAmount,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue, int min)? invalidAmount,
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
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(ShortName<T> value) shortName,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidAmount<T> value) invalidAmount,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required final T failedValue}) =
      _$InvalidEmail<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$InvalidEmailCopyWith<T, _$InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidPasswordCopyWith(_$InvalidPassword<T> value,
          $Res Function(_$InvalidPassword<T>) then) =
      __$$InvalidPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidPasswordCopyWith<T, $Res> {
  __$$InvalidPasswordCopyWithImpl(
      _$InvalidPassword<T> _value, $Res Function(_$InvalidPassword<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidPassword<T>));

  @override
  _$InvalidPassword<T> get _value => super._value as _$InvalidPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidPassword<T>(
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
    return 'ValueFailure<$T>.invalidPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidPassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidPasswordCopyWith<T, _$InvalidPassword<T>> get copyWith =>
      __$$InvalidPasswordCopyWithImpl<T, _$InvalidPassword<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) invalidPhone,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) shortName,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue, int min) invalidAmount,
  }) {
    return invalidPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue, int min)? invalidAmount,
  }) {
    return invalidPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue, int min)? invalidAmount,
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
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(ShortName<T> value) shortName,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidAmount<T> value) invalidAmount,
  }) {
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
  }) {
    return invalidPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidPassword<T> implements ValueFailure<T> {
  const factory InvalidPassword({required final T failedValue}) =
      _$InvalidPassword<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$InvalidPasswordCopyWith<T, _$InvalidPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidPhoneCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidPhoneCopyWith(
          _$InvalidPhone<T> value, $Res Function(_$InvalidPhone<T>) then) =
      __$$InvalidPhoneCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidPhoneCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidPhoneCopyWith<T, $Res> {
  __$$InvalidPhoneCopyWithImpl(
      _$InvalidPhone<T> _value, $Res Function(_$InvalidPhone<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidPhone<T>));

  @override
  _$InvalidPhone<T> get _value => super._value as _$InvalidPhone<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidPhone<T>(
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
    return 'ValueFailure<$T>.invalidPhone(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidPhone<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$InvalidPhoneCopyWith<T, _$InvalidPhone<T>> get copyWith =>
      __$$InvalidPhoneCopyWithImpl<T, _$InvalidPhone<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) invalidPhone,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) shortName,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue, int min) invalidAmount,
  }) {
    return invalidPhone(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue, int min)? invalidAmount,
  }) {
    return invalidPhone?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue, int min)? invalidAmount,
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
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(ShortName<T> value) shortName,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidAmount<T> value) invalidAmount,
  }) {
    return invalidPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
  }) {
    return invalidPhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    required TResult orElse(),
  }) {
    if (invalidPhone != null) {
      return invalidPhone(this);
    }
    return orElse();
  }
}

abstract class InvalidPhone<T> implements ValueFailure<T> {
  const factory InvalidPhone({required final T failedValue}) =
      _$InvalidPhone<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$InvalidPhoneCopyWith<T, _$InvalidPhone<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortPasswordCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ShortPasswordCopyWith(
          _$ShortPassword<T> value, $Res Function(_$ShortPassword<T>) then) =
      __$$ShortPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$ShortPasswordCopyWith<T, $Res> {
  __$$ShortPasswordCopyWithImpl(
      _$ShortPassword<T> _value, $Res Function(_$ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as _$ShortPassword<T>));

  @override
  _$ShortPassword<T> get _value => super._value as _$ShortPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ShortPassword<T>(
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
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortPassword<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$ShortPasswordCopyWith<T, _$ShortPassword<T>> get copyWith =>
      __$$ShortPasswordCopyWithImpl<T, _$ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) invalidPhone,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) shortName,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue, int min) invalidAmount,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue, int min)? invalidAmount,
  }) {
    return shortPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue, int min)? invalidAmount,
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
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(ShortName<T> value) shortName,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidAmount<T> value) invalidAmount,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({required final T failedValue}) =
      _$ShortPassword<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ShortPasswordCopyWith<T, _$ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortNameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ShortNameCopyWith(
          _$ShortName<T> value, $Res Function(_$ShortName<T>) then) =
      __$$ShortNameCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$ShortNameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$ShortNameCopyWith<T, $Res> {
  __$$ShortNameCopyWithImpl(
      _$ShortName<T> _value, $Res Function(_$ShortName<T>) _then)
      : super(_value, (v) => _then(v as _$ShortName<T>));

  @override
  _$ShortName<T> get _value => super._value as _$ShortName<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ShortName<T>(
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
    return 'ValueFailure<$T>.shortName(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortName<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$ShortNameCopyWith<T, _$ShortName<T>> get copyWith =>
      __$$ShortNameCopyWithImpl<T, _$ShortName<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) invalidPhone,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) shortName,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue, int min) invalidAmount,
  }) {
    return shortName(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue, int min)? invalidAmount,
  }) {
    return shortName?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue, int min)? invalidAmount,
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
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(ShortName<T> value) shortName,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidAmount<T> value) invalidAmount,
  }) {
    return shortName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
  }) {
    return shortName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    required TResult orElse(),
  }) {
    if (shortName != null) {
      return shortName(this);
    }
    return orElse();
  }
}

abstract class ShortName<T> implements ValueFailure<T> {
  const factory ShortName({required final T failedValue}) = _$ShortName<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ShortNameCopyWith<T, _$ShortName<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$EmptyCopyWith(_$Empty<T> value, $Res Function(_$Empty<T>) then) =
      __$$EmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class __$$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$EmptyCopyWith<T, $Res> {
  __$$EmptyCopyWithImpl(_$Empty<T> _value, $Res Function(_$Empty<T>) _then)
      : super(_value, (v) => _then(v as _$Empty<T>));

  @override
  _$Empty<T> get _value => super._value as _$Empty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$Empty<T>(
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
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Empty<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$EmptyCopyWith<T, _$Empty<T>> get copyWith =>
      __$$EmptyCopyWithImpl<T, _$Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) invalidPhone,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) shortName,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue, int min) invalidAmount,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue, int min)? invalidAmount,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue, int min)? invalidAmount,
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
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(ShortName<T> value) shortName,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidAmount<T> value) invalidAmount,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({required final T failedValue}) = _$Empty<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$EmptyCopyWith<T, _$Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ListTooLongCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ListTooLongCopyWith(
          _$ListTooLong<T> value, $Res Function(_$ListTooLong<T>) then) =
      __$$ListTooLongCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int max});
}

/// @nodoc
class __$$ListTooLongCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$ListTooLongCopyWith<T, $Res> {
  __$$ListTooLongCopyWithImpl(
      _$ListTooLong<T> _value, $Res Function(_$ListTooLong<T>) _then)
      : super(_value, (v) => _then(v as _$ListTooLong<T>));

  @override
  _$ListTooLong<T> get _value => super._value as _$ListTooLong<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? max = freezed,
  }) {
    return _then(_$ListTooLong<T>(
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
    return 'ValueFailure<$T>.listTooLong(failedValue: $failedValue, max: $max)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListTooLong<T> &&
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
  _$$ListTooLongCopyWith<T, _$ListTooLong<T>> get copyWith =>
      __$$ListTooLongCopyWithImpl<T, _$ListTooLong<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) invalidPhone,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) shortName,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue, int min) invalidAmount,
  }) {
    return listTooLong(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue, int min)? invalidAmount,
  }) {
    return listTooLong?.call(failedValue, max);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue, int min)? invalidAmount,
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
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(ShortName<T> value) shortName,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidAmount<T> value) invalidAmount,
  }) {
    return listTooLong(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
  }) {
    return listTooLong?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    required TResult orElse(),
  }) {
    if (listTooLong != null) {
      return listTooLong(this);
    }
    return orElse();
  }
}

abstract class ListTooLong<T> implements ValueFailure<T> {
  const factory ListTooLong(
      {required final T failedValue,
      required final int max}) = _$ListTooLong<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$ListTooLongCopyWith<T, _$ListTooLong<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidAmountCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidAmountCopyWith(
          _$InvalidAmount<T> value, $Res Function(_$InvalidAmount<T>) then) =
      __$$InvalidAmountCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue, int min});
}

/// @nodoc
class __$$InvalidAmountCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$InvalidAmountCopyWith<T, $Res> {
  __$$InvalidAmountCopyWithImpl(
      _$InvalidAmount<T> _value, $Res Function(_$InvalidAmount<T>) _then)
      : super(_value, (v) => _then(v as _$InvalidAmount<T>));

  @override
  _$InvalidAmount<T> get _value => super._value as _$InvalidAmount<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
    Object? min = freezed,
  }) {
    return _then(_$InvalidAmount<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InvalidAmount<T> implements InvalidAmount<T> {
  const _$InvalidAmount({required this.failedValue, required this.min});

  @override
  final T failedValue;
  @override
  final int min;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidAmount(failedValue: $failedValue, min: $min)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidAmount<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            const DeepCollectionEquality().equals(other.min, min));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failedValue),
      const DeepCollectionEquality().hash(min));

  @JsonKey(ignore: true)
  @override
  _$$InvalidAmountCopyWith<T, _$InvalidAmount<T>> get copyWith =>
      __$$InvalidAmountCopyWithImpl<T, _$InvalidAmount<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) invalidPhone,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) shortName,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue, int max) listTooLong,
    required TResult Function(T failedValue, int min) invalidAmount,
  }) {
    return invalidAmount(failedValue, min);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue, int min)? invalidAmount,
  }) {
    return invalidAmount?.call(failedValue, min);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? invalidPhone,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? shortName,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue, int max)? listTooLong,
    TResult Function(T failedValue, int min)? invalidAmount,
    required TResult orElse(),
  }) {
    if (invalidAmount != null) {
      return invalidAmount(failedValue, min);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(InvalidPhone<T> value) invalidPhone,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(ShortName<T> value) shortName,
    required TResult Function(Empty<T> value) empty,
    required TResult Function(ListTooLong<T> value) listTooLong,
    required TResult Function(InvalidAmount<T> value) invalidAmount,
  }) {
    return invalidAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
  }) {
    return invalidAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(InvalidPhone<T> value)? invalidPhone,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(ShortName<T> value)? shortName,
    TResult Function(Empty<T> value)? empty,
    TResult Function(ListTooLong<T> value)? listTooLong,
    TResult Function(InvalidAmount<T> value)? invalidAmount,
    required TResult orElse(),
  }) {
    if (invalidAmount != null) {
      return invalidAmount(this);
    }
    return orElse();
  }
}

abstract class InvalidAmount<T> implements ValueFailure<T> {
  const factory InvalidAmount(
      {required final T failedValue,
      required final int min}) = _$InvalidAmount<T>;

  @override
  T get failedValue => throw _privateConstructorUsedError;
  int get min => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$InvalidAmountCopyWith<T, _$InvalidAmount<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
