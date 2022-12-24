// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  AuthUserModel get userModel => throw _privateConstructorUsedError;
  bool get isUserCheckedFromAuthFacade => throw _privateConstructorUsedError;
  int get buyPrice => throw _privateConstructorUsedError;
  int get sellPrice => throw _privateConstructorUsedError;
  double get btcPrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {AuthUserModel userModel,
      bool isUserCheckedFromAuthFacade,
      int buyPrice,
      int sellPrice,
      double btcPrice});

  $AuthUserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = null,
    Object? isUserCheckedFromAuthFacade = null,
    Object? buyPrice = null,
    Object? sellPrice = null,
    Object? btcPrice = null,
  }) {
    return _then(_value.copyWith(
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as AuthUserModel,
      isUserCheckedFromAuthFacade: null == isUserCheckedFromAuthFacade
          ? _value.isUserCheckedFromAuthFacade
          : isUserCheckedFromAuthFacade // ignore: cast_nullable_to_non_nullable
              as bool,
      buyPrice: null == buyPrice
          ? _value.buyPrice
          : buyPrice // ignore: cast_nullable_to_non_nullable
              as int,
      sellPrice: null == sellPrice
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as int,
      btcPrice: null == btcPrice
          ? _value.btcPrice
          : btcPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthUserModelCopyWith<$Res> get userModel {
    return $AuthUserModelCopyWith<$Res>(_value.userModel, (value) {
      return _then(_value.copyWith(userModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthUserModel userModel,
      bool isUserCheckedFromAuthFacade,
      int buyPrice,
      int sellPrice,
      double btcPrice});

  @override
  $AuthUserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = null,
    Object? isUserCheckedFromAuthFacade = null,
    Object? buyPrice = null,
    Object? sellPrice = null,
    Object? btcPrice = null,
  }) {
    return _then(_$_AuthState(
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as AuthUserModel,
      isUserCheckedFromAuthFacade: null == isUserCheckedFromAuthFacade
          ? _value.isUserCheckedFromAuthFacade
          : isUserCheckedFromAuthFacade // ignore: cast_nullable_to_non_nullable
              as bool,
      buyPrice: null == buyPrice
          ? _value.buyPrice
          : buyPrice // ignore: cast_nullable_to_non_nullable
              as int,
      sellPrice: null == sellPrice
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as int,
      btcPrice: null == btcPrice
          ? _value.btcPrice
          : btcPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_AuthState extends _AuthState {
  const _$_AuthState(
      {required this.userModel,
      required this.isUserCheckedFromAuthFacade,
      required this.buyPrice,
      required this.sellPrice,
      required this.btcPrice})
      : super._();

  @override
  final AuthUserModel userModel;
  @override
  final bool isUserCheckedFromAuthFacade;
  @override
  final int buyPrice;
  @override
  final int sellPrice;
  @override
  final double btcPrice;

  @override
  String toString() {
    return 'AuthState(userModel: $userModel, isUserCheckedFromAuthFacade: $isUserCheckedFromAuthFacade, buyPrice: $buyPrice, sellPrice: $sellPrice, btcPrice: $btcPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel) &&
            (identical(other.isUserCheckedFromAuthFacade,
                    isUserCheckedFromAuthFacade) ||
                other.isUserCheckedFromAuthFacade ==
                    isUserCheckedFromAuthFacade) &&
            (identical(other.buyPrice, buyPrice) ||
                other.buyPrice == buyPrice) &&
            (identical(other.sellPrice, sellPrice) ||
                other.sellPrice == sellPrice) &&
            (identical(other.btcPrice, btcPrice) ||
                other.btcPrice == btcPrice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModel,
      isUserCheckedFromAuthFacade, buyPrice, sellPrice, btcPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState extends AuthState {
  const factory _AuthState(
      {required final AuthUserModel userModel,
      required final bool isUserCheckedFromAuthFacade,
      required final int buyPrice,
      required final int sellPrice,
      required final double btcPrice}) = _$_AuthState;
  const _AuthState._() : super._();

  @override
  AuthUserModel get userModel;
  @override
  bool get isUserCheckedFromAuthFacade;
  @override
  int get buyPrice;
  @override
  int get sellPrice;
  @override
  double get btcPrice;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
