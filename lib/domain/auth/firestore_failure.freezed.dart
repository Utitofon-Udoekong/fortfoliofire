// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirestoreFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() userNotFound,
    required TResult Function() tooManyRequests,
    required TResult Function() deviceNotSupported,
    required TResult Function() emailNotVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? userNotFound,
    TResult? Function()? tooManyRequests,
    TResult? Function()? deviceNotSupported,
    TResult? Function()? emailNotVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
    TResult Function()? tooManyRequests,
    TResult Function()? deviceNotSupported,
    TResult Function()? emailNotVerified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(DeviceNotSupported value) deviceNotSupported,
    required TResult Function(EmailNotVerified value) emailNotVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(TooManyRequests value)? tooManyRequests,
    TResult? Function(DeviceNotSupported value)? deviceNotSupported,
    TResult? Function(EmailNotVerified value)? emailNotVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(DeviceNotSupported value)? deviceNotSupported,
    TResult Function(EmailNotVerified value)? emailNotVerified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreFailureCopyWith<$Res> {
  factory $FirestoreFailureCopyWith(
          FirestoreFailure value, $Res Function(FirestoreFailure) then) =
      _$FirestoreFailureCopyWithImpl<$Res, FirestoreFailure>;
}

/// @nodoc
class _$FirestoreFailureCopyWithImpl<$Res, $Val extends FirestoreFailure>
    implements $FirestoreFailureCopyWith<$Res> {
  _$FirestoreFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<$Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError value, $Res Function(_$ServerError) then) =
      __$$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res>
    extends _$FirestoreFailureCopyWithImpl<$Res, _$ServerError>
    implements _$$ServerErrorCopyWith<$Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError _value, $Res Function(_$ServerError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'FirestoreFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() userNotFound,
    required TResult Function() tooManyRequests,
    required TResult Function() deviceNotSupported,
    required TResult Function() emailNotVerified,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? userNotFound,
    TResult? Function()? tooManyRequests,
    TResult? Function()? deviceNotSupported,
    TResult? Function()? emailNotVerified,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
    TResult Function()? tooManyRequests,
    TResult Function()? deviceNotSupported,
    TResult Function()? emailNotVerified,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(DeviceNotSupported value) deviceNotSupported,
    required TResult Function(EmailNotVerified value) emailNotVerified,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(TooManyRequests value)? tooManyRequests,
    TResult? Function(DeviceNotSupported value)? deviceNotSupported,
    TResult? Function(EmailNotVerified value)? emailNotVerified,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(DeviceNotSupported value)? deviceNotSupported,
    TResult Function(EmailNotVerified value)? emailNotVerified,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements FirestoreFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class _$$EmailAlreadyInUseCopyWith<$Res> {
  factory _$$EmailAlreadyInUseCopyWith(
          _$EmailAlreadyInUse value, $Res Function(_$EmailAlreadyInUse) then) =
      __$$EmailAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$FirestoreFailureCopyWithImpl<$Res, _$EmailAlreadyInUse>
    implements _$$EmailAlreadyInUseCopyWith<$Res> {
  __$$EmailAlreadyInUseCopyWithImpl(
      _$EmailAlreadyInUse _value, $Res Function(_$EmailAlreadyInUse) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmailAlreadyInUse implements EmailAlreadyInUse {
  const _$EmailAlreadyInUse();

  @override
  String toString() {
    return 'FirestoreFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() userNotFound,
    required TResult Function() tooManyRequests,
    required TResult Function() deviceNotSupported,
    required TResult Function() emailNotVerified,
  }) {
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? userNotFound,
    TResult? Function()? tooManyRequests,
    TResult? Function()? deviceNotSupported,
    TResult? Function()? emailNotVerified,
  }) {
    return emailAlreadyInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
    TResult Function()? tooManyRequests,
    TResult Function()? deviceNotSupported,
    TResult Function()? emailNotVerified,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(DeviceNotSupported value) deviceNotSupported,
    required TResult Function(EmailNotVerified value) emailNotVerified,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(TooManyRequests value)? tooManyRequests,
    TResult? Function(DeviceNotSupported value)? deviceNotSupported,
    TResult? Function(EmailNotVerified value)? emailNotVerified,
  }) {
    return emailAlreadyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(DeviceNotSupported value)? deviceNotSupported,
    TResult Function(EmailNotVerified value)? emailNotVerified,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse implements FirestoreFailure {
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUse;
}

/// @nodoc
abstract class _$$InvalidEmailCopyWith<$Res> {
  factory _$$InvalidEmailCopyWith(
          _$InvalidEmail value, $Res Function(_$InvalidEmail) then) =
      __$$InvalidEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidEmailCopyWithImpl<$Res>
    extends _$FirestoreFailureCopyWithImpl<$Res, _$InvalidEmail>
    implements _$$InvalidEmailCopyWith<$Res> {
  __$$InvalidEmailCopyWithImpl(
      _$InvalidEmail _value, $Res Function(_$InvalidEmail) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidEmail implements InvalidEmail {
  const _$InvalidEmail();

  @override
  String toString() {
    return 'FirestoreFailure.invalidEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() userNotFound,
    required TResult Function() tooManyRequests,
    required TResult Function() deviceNotSupported,
    required TResult Function() emailNotVerified,
  }) {
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? userNotFound,
    TResult? Function()? tooManyRequests,
    TResult? Function()? deviceNotSupported,
    TResult? Function()? emailNotVerified,
  }) {
    return invalidEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
    TResult Function()? tooManyRequests,
    TResult Function()? deviceNotSupported,
    TResult Function()? emailNotVerified,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(DeviceNotSupported value) deviceNotSupported,
    required TResult Function(EmailNotVerified value) emailNotVerified,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(TooManyRequests value)? tooManyRequests,
    TResult? Function(DeviceNotSupported value)? deviceNotSupported,
    TResult? Function(EmailNotVerified value)? emailNotVerified,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(DeviceNotSupported value)? deviceNotSupported,
    TResult Function(EmailNotVerified value)? emailNotVerified,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail implements FirestoreFailure {
  const factory InvalidEmail() = _$InvalidEmail;
}

/// @nodoc
abstract class _$$UserNotFoundCopyWith<$Res> {
  factory _$$UserNotFoundCopyWith(
          _$UserNotFound value, $Res Function(_$UserNotFound) then) =
      __$$UserNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserNotFoundCopyWithImpl<$Res>
    extends _$FirestoreFailureCopyWithImpl<$Res, _$UserNotFound>
    implements _$$UserNotFoundCopyWith<$Res> {
  __$$UserNotFoundCopyWithImpl(
      _$UserNotFound _value, $Res Function(_$UserNotFound) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserNotFound implements UserNotFound {
  const _$UserNotFound();

  @override
  String toString() {
    return 'FirestoreFailure.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() userNotFound,
    required TResult Function() tooManyRequests,
    required TResult Function() deviceNotSupported,
    required TResult Function() emailNotVerified,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? userNotFound,
    TResult? Function()? tooManyRequests,
    TResult? Function()? deviceNotSupported,
    TResult? Function()? emailNotVerified,
  }) {
    return userNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
    TResult Function()? tooManyRequests,
    TResult Function()? deviceNotSupported,
    TResult Function()? emailNotVerified,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(DeviceNotSupported value) deviceNotSupported,
    required TResult Function(EmailNotVerified value) emailNotVerified,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(TooManyRequests value)? tooManyRequests,
    TResult? Function(DeviceNotSupported value)? deviceNotSupported,
    TResult? Function(EmailNotVerified value)? emailNotVerified,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(DeviceNotSupported value)? deviceNotSupported,
    TResult Function(EmailNotVerified value)? emailNotVerified,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class UserNotFound implements FirestoreFailure {
  const factory UserNotFound() = _$UserNotFound;
}

/// @nodoc
abstract class _$$TooManyRequestsCopyWith<$Res> {
  factory _$$TooManyRequestsCopyWith(
          _$TooManyRequests value, $Res Function(_$TooManyRequests) then) =
      __$$TooManyRequestsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TooManyRequestsCopyWithImpl<$Res>
    extends _$FirestoreFailureCopyWithImpl<$Res, _$TooManyRequests>
    implements _$$TooManyRequestsCopyWith<$Res> {
  __$$TooManyRequestsCopyWithImpl(
      _$TooManyRequests _value, $Res Function(_$TooManyRequests) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TooManyRequests implements TooManyRequests {
  const _$TooManyRequests();

  @override
  String toString() {
    return 'FirestoreFailure.tooManyRequests()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TooManyRequests);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() userNotFound,
    required TResult Function() tooManyRequests,
    required TResult Function() deviceNotSupported,
    required TResult Function() emailNotVerified,
  }) {
    return tooManyRequests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? userNotFound,
    TResult? Function()? tooManyRequests,
    TResult? Function()? deviceNotSupported,
    TResult? Function()? emailNotVerified,
  }) {
    return tooManyRequests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
    TResult Function()? tooManyRequests,
    TResult Function()? deviceNotSupported,
    TResult Function()? emailNotVerified,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(DeviceNotSupported value) deviceNotSupported,
    required TResult Function(EmailNotVerified value) emailNotVerified,
  }) {
    return tooManyRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(TooManyRequests value)? tooManyRequests,
    TResult? Function(DeviceNotSupported value)? deviceNotSupported,
    TResult? Function(EmailNotVerified value)? emailNotVerified,
  }) {
    return tooManyRequests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(DeviceNotSupported value)? deviceNotSupported,
    TResult Function(EmailNotVerified value)? emailNotVerified,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests(this);
    }
    return orElse();
  }
}

abstract class TooManyRequests implements FirestoreFailure {
  const factory TooManyRequests() = _$TooManyRequests;
}

/// @nodoc
abstract class _$$DeviceNotSupportedCopyWith<$Res> {
  factory _$$DeviceNotSupportedCopyWith(_$DeviceNotSupported value,
          $Res Function(_$DeviceNotSupported) then) =
      __$$DeviceNotSupportedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeviceNotSupportedCopyWithImpl<$Res>
    extends _$FirestoreFailureCopyWithImpl<$Res, _$DeviceNotSupported>
    implements _$$DeviceNotSupportedCopyWith<$Res> {
  __$$DeviceNotSupportedCopyWithImpl(
      _$DeviceNotSupported _value, $Res Function(_$DeviceNotSupported) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeviceNotSupported implements DeviceNotSupported {
  const _$DeviceNotSupported();

  @override
  String toString() {
    return 'FirestoreFailure.deviceNotSupported()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeviceNotSupported);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() userNotFound,
    required TResult Function() tooManyRequests,
    required TResult Function() deviceNotSupported,
    required TResult Function() emailNotVerified,
  }) {
    return deviceNotSupported();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? userNotFound,
    TResult? Function()? tooManyRequests,
    TResult? Function()? deviceNotSupported,
    TResult? Function()? emailNotVerified,
  }) {
    return deviceNotSupported?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
    TResult Function()? tooManyRequests,
    TResult Function()? deviceNotSupported,
    TResult Function()? emailNotVerified,
    required TResult orElse(),
  }) {
    if (deviceNotSupported != null) {
      return deviceNotSupported();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(DeviceNotSupported value) deviceNotSupported,
    required TResult Function(EmailNotVerified value) emailNotVerified,
  }) {
    return deviceNotSupported(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(TooManyRequests value)? tooManyRequests,
    TResult? Function(DeviceNotSupported value)? deviceNotSupported,
    TResult? Function(EmailNotVerified value)? emailNotVerified,
  }) {
    return deviceNotSupported?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(DeviceNotSupported value)? deviceNotSupported,
    TResult Function(EmailNotVerified value)? emailNotVerified,
    required TResult orElse(),
  }) {
    if (deviceNotSupported != null) {
      return deviceNotSupported(this);
    }
    return orElse();
  }
}

abstract class DeviceNotSupported implements FirestoreFailure {
  const factory DeviceNotSupported() = _$DeviceNotSupported;
}

/// @nodoc
abstract class _$$EmailNotVerifiedCopyWith<$Res> {
  factory _$$EmailNotVerifiedCopyWith(
          _$EmailNotVerified value, $Res Function(_$EmailNotVerified) then) =
      __$$EmailNotVerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailNotVerifiedCopyWithImpl<$Res>
    extends _$FirestoreFailureCopyWithImpl<$Res, _$EmailNotVerified>
    implements _$$EmailNotVerifiedCopyWith<$Res> {
  __$$EmailNotVerifiedCopyWithImpl(
      _$EmailNotVerified _value, $Res Function(_$EmailNotVerified) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmailNotVerified implements EmailNotVerified {
  const _$EmailNotVerified();

  @override
  String toString() {
    return 'FirestoreFailure.emailNotVerified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailNotVerified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmail,
    required TResult Function() userNotFound,
    required TResult Function() tooManyRequests,
    required TResult Function() deviceNotSupported,
    required TResult Function() emailNotVerified,
  }) {
    return emailNotVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? emailAlreadyInUse,
    TResult? Function()? invalidEmail,
    TResult? Function()? userNotFound,
    TResult? Function()? tooManyRequests,
    TResult? Function()? deviceNotSupported,
    TResult? Function()? emailNotVerified,
  }) {
    return emailNotVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmail,
    TResult Function()? userNotFound,
    TResult Function()? tooManyRequests,
    TResult Function()? deviceNotSupported,
    TResult Function()? emailNotVerified,
    required TResult orElse(),
  }) {
    if (emailNotVerified != null) {
      return emailNotVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(TooManyRequests value) tooManyRequests,
    required TResult Function(DeviceNotSupported value) deviceNotSupported,
    required TResult Function(EmailNotVerified value) emailNotVerified,
  }) {
    return emailNotVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(UserNotFound value)? userNotFound,
    TResult? Function(TooManyRequests value)? tooManyRequests,
    TResult? Function(DeviceNotSupported value)? deviceNotSupported,
    TResult? Function(EmailNotVerified value)? emailNotVerified,
  }) {
    return emailNotVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(TooManyRequests value)? tooManyRequests,
    TResult Function(DeviceNotSupported value)? deviceNotSupported,
    TResult Function(EmailNotVerified value)? emailNotVerified,
    required TResult orElse(),
  }) {
    if (emailNotVerified != null) {
      return emailNotVerified(this);
    }
    return orElse();
  }
}

abstract class EmailNotVerified implements FirestoreFailure {
  const factory EmailNotVerified() = _$EmailNotVerified;
}
