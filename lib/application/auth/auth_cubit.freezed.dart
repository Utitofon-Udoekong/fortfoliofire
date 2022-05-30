// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthState call(
      {required AuthUserModel userModel,
      required bool isUserCheckedFromAuthFacade,
      required int dollarToNaira}) {
    return _AuthState(
      userModel: userModel,
      isUserCheckedFromAuthFacade: isUserCheckedFromAuthFacade,
      dollarToNaira: dollarToNaira,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  AuthUserModel get userModel => throw _privateConstructorUsedError;
  bool get isUserCheckedFromAuthFacade => throw _privateConstructorUsedError;
  int get dollarToNaira => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {AuthUserModel userModel,
      bool isUserCheckedFromAuthFacade,
      int dollarToNaira});

  $AuthUserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? userModel = freezed,
    Object? isUserCheckedFromAuthFacade = freezed,
    Object? dollarToNaira = freezed,
  }) {
    return _then(_value.copyWith(
      userModel: userModel == freezed
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as AuthUserModel,
      isUserCheckedFromAuthFacade: isUserCheckedFromAuthFacade == freezed
          ? _value.isUserCheckedFromAuthFacade
          : isUserCheckedFromAuthFacade // ignore: cast_nullable_to_non_nullable
              as bool,
      dollarToNaira: dollarToNaira == freezed
          ? _value.dollarToNaira
          : dollarToNaira // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $AuthUserModelCopyWith<$Res> get userModel {
    return $AuthUserModelCopyWith<$Res>(_value.userModel, (value) {
      return _then(_value.copyWith(userModel: value));
    });
  }
}

/// @nodoc
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AuthUserModel userModel,
      bool isUserCheckedFromAuthFacade,
      int dollarToNaira});

  @override
  $AuthUserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object? userModel = freezed,
    Object? isUserCheckedFromAuthFacade = freezed,
    Object? dollarToNaira = freezed,
  }) {
    return _then(_AuthState(
      userModel: userModel == freezed
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as AuthUserModel,
      isUserCheckedFromAuthFacade: isUserCheckedFromAuthFacade == freezed
          ? _value.isUserCheckedFromAuthFacade
          : isUserCheckedFromAuthFacade // ignore: cast_nullable_to_non_nullable
              as bool,
      dollarToNaira: dollarToNaira == freezed
          ? _value.dollarToNaira
          : dollarToNaira // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AuthState extends _AuthState {
  const _$_AuthState(
      {required this.userModel,
      required this.isUserCheckedFromAuthFacade,
      required this.dollarToNaira})
      : super._();

  @override
  final AuthUserModel userModel;
  @override
  final bool isUserCheckedFromAuthFacade;
  @override
  final int dollarToNaira;

  @override
  String toString() {
    return 'AuthState(userModel: $userModel, isUserCheckedFromAuthFacade: $isUserCheckedFromAuthFacade, dollarToNaira: $dollarToNaira)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthState &&
            const DeepCollectionEquality().equals(other.userModel, userModel) &&
            const DeepCollectionEquality().equals(
                other.isUserCheckedFromAuthFacade,
                isUserCheckedFromAuthFacade) &&
            const DeepCollectionEquality()
                .equals(other.dollarToNaira, dollarToNaira));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userModel),
      const DeepCollectionEquality().hash(isUserCheckedFromAuthFacade),
      const DeepCollectionEquality().hash(dollarToNaira));

  @JsonKey(ignore: true)
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const factory _AuthState(
      {required AuthUserModel userModel,
      required bool isUserCheckedFromAuthFacade,
      required int dollarToNaira}) = _$_AuthState;
  const _AuthState._() : super._();

  @override
  AuthUserModel get userModel;
  @override
  bool get isUserCheckedFromAuthFacade;
  @override
  int get dollarToNaira;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
