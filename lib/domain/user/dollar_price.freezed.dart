// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dollar_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DollarPriceTearOff {
  const _$DollarPriceTearOff();

  _DollarPrice call({required int dollarToNaira}) {
    return _DollarPrice(
      dollarToNaira: dollarToNaira,
    );
  }
}

/// @nodoc
const $DollarPrice = _$DollarPriceTearOff();

/// @nodoc
mixin _$DollarPrice {
  int get dollarToNaira => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DollarPriceCopyWith<DollarPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DollarPriceCopyWith<$Res> {
  factory $DollarPriceCopyWith(
          DollarPrice value, $Res Function(DollarPrice) then) =
      _$DollarPriceCopyWithImpl<$Res>;
  $Res call({int dollarToNaira});
}

/// @nodoc
class _$DollarPriceCopyWithImpl<$Res> implements $DollarPriceCopyWith<$Res> {
  _$DollarPriceCopyWithImpl(this._value, this._then);

  final DollarPrice _value;
  // ignore: unused_field
  final $Res Function(DollarPrice) _then;

  @override
  $Res call({
    Object? dollarToNaira = freezed,
  }) {
    return _then(_value.copyWith(
      dollarToNaira: dollarToNaira == freezed
          ? _value.dollarToNaira
          : dollarToNaira // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DollarPriceCopyWith<$Res>
    implements $DollarPriceCopyWith<$Res> {
  factory _$DollarPriceCopyWith(
          _DollarPrice value, $Res Function(_DollarPrice) then) =
      __$DollarPriceCopyWithImpl<$Res>;
  @override
  $Res call({int dollarToNaira});
}

/// @nodoc
class __$DollarPriceCopyWithImpl<$Res> extends _$DollarPriceCopyWithImpl<$Res>
    implements _$DollarPriceCopyWith<$Res> {
  __$DollarPriceCopyWithImpl(
      _DollarPrice _value, $Res Function(_DollarPrice) _then)
      : super(_value, (v) => _then(v as _DollarPrice));

  @override
  _DollarPrice get _value => super._value as _DollarPrice;

  @override
  $Res call({
    Object? dollarToNaira = freezed,
  }) {
    return _then(_DollarPrice(
      dollarToNaira: dollarToNaira == freezed
          ? _value.dollarToNaira
          : dollarToNaira // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DollarPrice implements _DollarPrice {
  const _$_DollarPrice({required this.dollarToNaira});

  @override
  final int dollarToNaira;

  @override
  String toString() {
    return 'DollarPrice(dollarToNaira: $dollarToNaira)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DollarPrice &&
            const DeepCollectionEquality()
                .equals(other.dollarToNaira, dollarToNaira));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(dollarToNaira));

  @JsonKey(ignore: true)
  @override
  _$DollarPriceCopyWith<_DollarPrice> get copyWith =>
      __$DollarPriceCopyWithImpl<_DollarPrice>(this, _$identity);
}

abstract class _DollarPrice implements DollarPrice {
  const factory _DollarPrice({required int dollarToNaira}) = _$_DollarPrice;

  @override
  int get dollarToNaira;
  @override
  @JsonKey(ignore: true)
  _$DollarPriceCopyWith<_DollarPrice> get copyWith =>
      throw _privateConstructorUsedError;
}
