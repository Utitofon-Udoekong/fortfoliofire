// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dollar_price_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DollarPriceDTO _$DollarPriceDTOFromJson(Map<String, dynamic> json) {
  return _DollarPriceDTO.fromJson(json);
}

/// @nodoc
mixin _$DollarPriceDTO {
  int get buyPrice => throw _privateConstructorUsedError;
  int get sellPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DollarPriceDTOCopyWith<DollarPriceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DollarPriceDTOCopyWith<$Res> {
  factory $DollarPriceDTOCopyWith(
          DollarPriceDTO value, $Res Function(DollarPriceDTO) then) =
      _$DollarPriceDTOCopyWithImpl<$Res, DollarPriceDTO>;
  @useResult
  $Res call({int buyPrice, int sellPrice});
}

/// @nodoc
class _$DollarPriceDTOCopyWithImpl<$Res, $Val extends DollarPriceDTO>
    implements $DollarPriceDTOCopyWith<$Res> {
  _$DollarPriceDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$_DollarPriceDTOCopyWith<$Res>
    implements $DollarPriceDTOCopyWith<$Res> {
  factory _$$_DollarPriceDTOCopyWith(
          _$_DollarPriceDTO value, $Res Function(_$_DollarPriceDTO) then) =
      __$$_DollarPriceDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int buyPrice, int sellPrice});
}

/// @nodoc
class __$$_DollarPriceDTOCopyWithImpl<$Res>
    extends _$DollarPriceDTOCopyWithImpl<$Res, _$_DollarPriceDTO>
    implements _$$_DollarPriceDTOCopyWith<$Res> {
  __$$_DollarPriceDTOCopyWithImpl(
      _$_DollarPriceDTO _value, $Res Function(_$_DollarPriceDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buyPrice = null,
    Object? sellPrice = null,
  }) {
    return _then(_$_DollarPriceDTO(
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
@JsonSerializable()
class _$_DollarPriceDTO extends _DollarPriceDTO {
  const _$_DollarPriceDTO({required this.buyPrice, required this.sellPrice})
      : super._();

  factory _$_DollarPriceDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DollarPriceDTOFromJson(json);

  @override
  final int buyPrice;
  @override
  final int sellPrice;

  @override
  String toString() {
    return 'DollarPriceDTO(buyPrice: $buyPrice, sellPrice: $sellPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DollarPriceDTO &&
            (identical(other.buyPrice, buyPrice) ||
                other.buyPrice == buyPrice) &&
            (identical(other.sellPrice, sellPrice) ||
                other.sellPrice == sellPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, buyPrice, sellPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DollarPriceDTOCopyWith<_$_DollarPriceDTO> get copyWith =>
      __$$_DollarPriceDTOCopyWithImpl<_$_DollarPriceDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DollarPriceDTOToJson(
      this,
    );
  }
}

abstract class _DollarPriceDTO extends DollarPriceDTO {
  const factory _DollarPriceDTO(
      {required final int buyPrice,
      required final int sellPrice}) = _$_DollarPriceDTO;
  const _DollarPriceDTO._() : super._();

  factory _DollarPriceDTO.fromJson(Map<String, dynamic> json) =
      _$_DollarPriceDTO.fromJson;

  @override
  int get buyPrice;
  @override
  int get sellPrice;
  @override
  @JsonKey(ignore: true)
  _$$_DollarPriceDTOCopyWith<_$_DollarPriceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
