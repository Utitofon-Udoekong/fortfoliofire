// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_transactions_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WalletTransactionsStateTearOff {
  const _$WalletTransactionsStateTearOff();

  _WalletTransactionsState call({required List<WithdrawalItem> withdrawals}) {
    return _WalletTransactionsState(
      withdrawals: withdrawals,
    );
  }
}

/// @nodoc
const $WalletTransactionsState = _$WalletTransactionsStateTearOff();

/// @nodoc
mixin _$WalletTransactionsState {
  List<WithdrawalItem> get withdrawals => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletTransactionsStateCopyWith<WalletTransactionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletTransactionsStateCopyWith<$Res> {
  factory $WalletTransactionsStateCopyWith(WalletTransactionsState value,
          $Res Function(WalletTransactionsState) then) =
      _$WalletTransactionsStateCopyWithImpl<$Res>;
  $Res call({List<WithdrawalItem> withdrawals});
}

/// @nodoc
class _$WalletTransactionsStateCopyWithImpl<$Res>
    implements $WalletTransactionsStateCopyWith<$Res> {
  _$WalletTransactionsStateCopyWithImpl(this._value, this._then);

  final WalletTransactionsState _value;
  // ignore: unused_field
  final $Res Function(WalletTransactionsState) _then;

  @override
  $Res call({
    Object? withdrawals = freezed,
  }) {
    return _then(_value.copyWith(
      withdrawals: withdrawals == freezed
          ? _value.withdrawals
          : withdrawals // ignore: cast_nullable_to_non_nullable
              as List<WithdrawalItem>,
    ));
  }
}

/// @nodoc
abstract class _$WalletTransactionsStateCopyWith<$Res>
    implements $WalletTransactionsStateCopyWith<$Res> {
  factory _$WalletTransactionsStateCopyWith(_WalletTransactionsState value,
          $Res Function(_WalletTransactionsState) then) =
      __$WalletTransactionsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<WithdrawalItem> withdrawals});
}

/// @nodoc
class __$WalletTransactionsStateCopyWithImpl<$Res>
    extends _$WalletTransactionsStateCopyWithImpl<$Res>
    implements _$WalletTransactionsStateCopyWith<$Res> {
  __$WalletTransactionsStateCopyWithImpl(_WalletTransactionsState _value,
      $Res Function(_WalletTransactionsState) _then)
      : super(_value, (v) => _then(v as _WalletTransactionsState));

  @override
  _WalletTransactionsState get _value =>
      super._value as _WalletTransactionsState;

  @override
  $Res call({
    Object? withdrawals = freezed,
  }) {
    return _then(_WalletTransactionsState(
      withdrawals: withdrawals == freezed
          ? _value.withdrawals
          : withdrawals // ignore: cast_nullable_to_non_nullable
              as List<WithdrawalItem>,
    ));
  }
}

/// @nodoc

class _$_WalletTransactionsState implements _WalletTransactionsState {
  const _$_WalletTransactionsState({required this.withdrawals});

  @override
  final List<WithdrawalItem> withdrawals;

  @override
  String toString() {
    return 'WalletTransactionsState(withdrawals: $withdrawals)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WalletTransactionsState &&
            const DeepCollectionEquality()
                .equals(other.withdrawals, withdrawals));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(withdrawals));

  @JsonKey(ignore: true)
  @override
  _$WalletTransactionsStateCopyWith<_WalletTransactionsState> get copyWith =>
      __$WalletTransactionsStateCopyWithImpl<_WalletTransactionsState>(
          this, _$identity);
}

abstract class _WalletTransactionsState implements WalletTransactionsState {
  const factory _WalletTransactionsState(
      {required List<WithdrawalItem> withdrawals}) = _$_WalletTransactionsState;

  @override
  List<WithdrawalItem> get withdrawals;
  @override
  @JsonKey(ignore: true)
  _$WalletTransactionsStateCopyWith<_WalletTransactionsState> get copyWith =>
      throw _privateConstructorUsedError;
}
