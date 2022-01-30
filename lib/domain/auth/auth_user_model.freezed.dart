// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthUserModelTearOff {
  const _$AuthUserModelTearOff();

  _AuthUserModel call({required UniqueId id, required Phone phoneNumber}) {
    return _AuthUserModel(
      id: id,
      phoneNumber: phoneNumber,
    );
  }
}

/// @nodoc
const $AuthUserModel = _$AuthUserModelTearOff();

/// @nodoc
mixin _$AuthUserModel {
  UniqueId get id => throw _privateConstructorUsedError;
  Phone get phoneNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthUserModelCopyWith<AuthUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserModelCopyWith<$Res> {
  factory $AuthUserModelCopyWith(
          AuthUserModel value, $Res Function(AuthUserModel) then) =
      _$AuthUserModelCopyWithImpl<$Res>;
  $Res call({UniqueId id, Phone phoneNumber});
}

/// @nodoc
class _$AuthUserModelCopyWithImpl<$Res>
    implements $AuthUserModelCopyWith<$Res> {
  _$AuthUserModelCopyWithImpl(this._value, this._then);

  final AuthUserModel _value;
  // ignore: unused_field
  final $Res Function(AuthUserModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as Phone,
    ));
  }
}

/// @nodoc
abstract class _$AuthUserModelCopyWith<$Res>
    implements $AuthUserModelCopyWith<$Res> {
  factory _$AuthUserModelCopyWith(
          _AuthUserModel value, $Res Function(_AuthUserModel) then) =
      __$AuthUserModelCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, Phone phoneNumber});
}

/// @nodoc
class __$AuthUserModelCopyWithImpl<$Res>
    extends _$AuthUserModelCopyWithImpl<$Res>
    implements _$AuthUserModelCopyWith<$Res> {
  __$AuthUserModelCopyWithImpl(
      _AuthUserModel _value, $Res Function(_AuthUserModel) _then)
      : super(_value, (v) => _then(v as _AuthUserModel));

  @override
  _AuthUserModel get _value => super._value as _AuthUserModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_AuthUserModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as Phone,
    ));
  }
}

/// @nodoc

class _$_AuthUserModel extends _AuthUserModel {
  const _$_AuthUserModel({required this.id, required this.phoneNumber})
      : super._();

  @override
  final UniqueId id;
  @override
  final Phone phoneNumber;

  @override
  String toString() {
    return 'AuthUserModel(id: $id, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthUserModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$AuthUserModelCopyWith<_AuthUserModel> get copyWith =>
      __$AuthUserModelCopyWithImpl<_AuthUserModel>(this, _$identity);
}

abstract class _AuthUserModel extends AuthUserModel {
  const factory _AuthUserModel(
      {required UniqueId id, required Phone phoneNumber}) = _$_AuthUserModel;
  const _AuthUserModel._() : super._();

  @override
  UniqueId get id;
  @override
  Phone get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$AuthUserModelCopyWith<_AuthUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
