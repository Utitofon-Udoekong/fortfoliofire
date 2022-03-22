// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_overview_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WalletOverviewStateTearOff {
  const _$WalletOverviewStateTearOff();

  _WalletOverviewState call(
      {required String exchange,
      required int balance,
      required Map<String, dynamic> activePlans}) {
    return _WalletOverviewState(
      exchange: exchange,
      balance: balance,
      activePlans: activePlans,
    );
  }
}

/// @nodoc
const $WalletOverviewState = _$WalletOverviewStateTearOff();

/// @nodoc
mixin _$WalletOverviewState {
  String get exchange => throw _privateConstructorUsedError;
  int get balance => throw _privateConstructorUsedError;
  Map<String, dynamic> get activePlans => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletOverviewStateCopyWith<WalletOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletOverviewStateCopyWith<$Res> {
  factory $WalletOverviewStateCopyWith(
          WalletOverviewState value, $Res Function(WalletOverviewState) then) =
      _$WalletOverviewStateCopyWithImpl<$Res>;
  $Res call({String exchange, int balance, Map<String, dynamic> activePlans});
}

/// @nodoc
class _$WalletOverviewStateCopyWithImpl<$Res>
    implements $WalletOverviewStateCopyWith<$Res> {
  _$WalletOverviewStateCopyWithImpl(this._value, this._then);

  final WalletOverviewState _value;
  // ignore: unused_field
  final $Res Function(WalletOverviewState) _then;

  @override
  $Res call({
    Object? exchange = freezed,
    Object? balance = freezed,
    Object? activePlans = freezed,
  }) {
    return _then(_value.copyWith(
      exchange: exchange == freezed
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      activePlans: activePlans == freezed
          ? _value.activePlans
          : activePlans // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$WalletOverviewStateCopyWith<$Res>
    implements $WalletOverviewStateCopyWith<$Res> {
  factory _$WalletOverviewStateCopyWith(_WalletOverviewState value,
          $Res Function(_WalletOverviewState) then) =
      __$WalletOverviewStateCopyWithImpl<$Res>;
  @override
  $Res call({String exchange, int balance, Map<String, dynamic> activePlans});
}

/// @nodoc
class __$WalletOverviewStateCopyWithImpl<$Res>
    extends _$WalletOverviewStateCopyWithImpl<$Res>
    implements _$WalletOverviewStateCopyWith<$Res> {
  __$WalletOverviewStateCopyWithImpl(
      _WalletOverviewState _value, $Res Function(_WalletOverviewState) _then)
      : super(_value, (v) => _then(v as _WalletOverviewState));

  @override
  _WalletOverviewState get _value => super._value as _WalletOverviewState;

  @override
  $Res call({
    Object? exchange = freezed,
    Object? balance = freezed,
    Object? activePlans = freezed,
  }) {
    return _then(_WalletOverviewState(
      exchange: exchange == freezed
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as int,
      activePlans: activePlans == freezed
          ? _value.activePlans
          : activePlans // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_WalletOverviewState extends _WalletOverviewState {
  const _$_WalletOverviewState(
      {required this.exchange,
      required this.balance,
      required this.activePlans})
      : super._();

  @override
  final String exchange;
  @override
  final int balance;
  @override
  final Map<String, dynamic> activePlans;

  @override
  String toString() {
    return 'WalletOverviewState(exchange: $exchange, balance: $balance, activePlans: $activePlans)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WalletOverviewState &&
            const DeepCollectionEquality().equals(other.exchange, exchange) &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality()
                .equals(other.activePlans, activePlans));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(exchange),
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(activePlans));

  @JsonKey(ignore: true)
  @override
  _$WalletOverviewStateCopyWith<_WalletOverviewState> get copyWith =>
      __$WalletOverviewStateCopyWithImpl<_WalletOverviewState>(
          this, _$identity);
}

abstract class _WalletOverviewState extends WalletOverviewState {
  const factory _WalletOverviewState(
      {required String exchange,
      required int balance,
      required Map<String, dynamic> activePlans}) = _$_WalletOverviewState;
  const _WalletOverviewState._() : super._();

  @override
  String get exchange;
  @override
  int get balance;
  @override
  Map<String, dynamic> get activePlans;
  @override
  @JsonKey(ignore: true)
  _$WalletOverviewStateCopyWith<_WalletOverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}
