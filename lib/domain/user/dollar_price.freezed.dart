// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dollar_price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DollarPrice {
  int get buyPrice => throw _privateConstructorUsedError;
  int get sellPrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DollarPriceCopyWith<DollarPrice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DollarPriceCopyWith<$Res> {
  factory $DollarPriceCopyWith(
          DollarPrice value, $Res Function(DollarPrice) then) =
      _$DollarPriceCopyWithImpl<$Res, DollarPrice>;
  @useResult
  $Res call({int buyPrice, int sellPrice});
}

/// @nodoc
class _$DollarPriceCopyWithImpl<$Res, $Val extends DollarPrice>
    implements $DollarPriceCopyWith<$Res> {
  _$DollarPriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buyPrice = null,
    Object? sellPrice = null,
  }) {
    return _then(_value.copyWith(
      buyPrice: null == buyPrice
          ? _value.buyPrice
          : buyPrice // ignore: cast_nullable_to_non_nullable
              as int,
      sellPrice: null == sellPrice
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DollarPriceCopyWith<$Res>
    implements $DollarPriceCopyWith<$Res> {
  factory _$$_DollarPriceCopyWith(
          _$_DollarPrice value, $Res Function(_$_DollarPrice) then) =
      __$$_DollarPriceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int buyPrice, int sellPrice});
}

/// @nodoc
class __$$_DollarPriceCopyWithImpl<$Res>
    extends _$DollarPriceCopyWithImpl<$Res, _$_DollarPrice>
    implements _$$_DollarPriceCopyWith<$Res> {
  __$$_DollarPriceCopyWithImpl(
      _$_DollarPrice _value, $Res Function(_$_DollarPrice) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buyPrice = null,
    Object? sellPrice = null,
  }) {
    return _then(_$_DollarPrice(
      buyPrice: null == buyPrice
          ? _value.buyPrice
          : buyPrice // ignore: cast_nullable_to_non_nullable
              as int,
      sellPrice: null == sellPrice
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DollarPrice implements _DollarPrice {
  const _$_DollarPrice({required this.buyPrice, required this.sellPrice});

  @override
  final int buyPrice;
  @override
  final int sellPrice;

  @override
  String toString() {
    return 'DollarPrice(buyPrice: $buyPrice, sellPrice: $sellPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DollarPrice &&
            (identical(other.buyPrice, buyPrice) ||
                other.buyPrice == buyPrice) &&
            (identical(other.sellPrice, sellPrice) ||
                other.sellPrice == sellPrice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, buyPrice, sellPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DollarPriceCopyWith<_$_DollarPrice> get copyWith =>
      __$$_DollarPriceCopyWithImpl<_$_DollarPrice>(this, _$identity);
}

abstract class _DollarPrice implements DollarPrice {
  const factory _DollarPrice(
      {required final int buyPrice,
      required final int sellPrice}) = _$_DollarPrice;

  @override
  int get buyPrice;
  @override
  int get sellPrice;
  @override
  @JsonKey(ignore: true)
  _$$_DollarPriceCopyWith<_$_DollarPrice> get copyWith =>
      throw _privateConstructorUsedError;
}
