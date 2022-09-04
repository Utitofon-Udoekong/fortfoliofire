// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$DollarPriceDTOCopyWithImpl<$Res>;
  $Res call({int buyPrice, int sellPrice});
}

/// @nodoc
class _$DollarPriceDTOCopyWithImpl<$Res>
    implements $DollarPriceDTOCopyWith<$Res> {
  _$DollarPriceDTOCopyWithImpl(this._value, this._then);

  final DollarPriceDTO _value;
  // ignore: unused_field
  final $Res Function(DollarPriceDTO) _then;

  @override
  $Res call({
    Object? buyPrice = freezed,
    Object? sellPrice = freezed,
  }) {
    return _then(_value.copyWith(
      buyPrice: buyPrice == freezed
          ? _value.buyPrice
          : buyPrice // ignore: cast_nullable_to_non_nullable
              as int,
      sellPrice: sellPrice == freezed
          ? _value.sellPrice
          : sellPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_DollarPriceDTOCopyWith<$Res>
    implements $DollarPriceDTOCopyWith<$Res> {
  factory _$$_DollarPriceDTOCopyWith(
          _$_DollarPriceDTO value, $Res Function(_$_DollarPriceDTO) then) =
      __$$_DollarPriceDTOCopyWithImpl<$Res>;
  @override
  $Res call({int buyPrice, int sellPrice});
}

/// @nodoc
class __$$_DollarPriceDTOCopyWithImpl<$Res>
    extends _$DollarPriceDTOCopyWithImpl<$Res>
    implements _$$_DollarPriceDTOCopyWith<$Res> {
  __$$_DollarPriceDTOCopyWithImpl(
      _$_DollarPriceDTO _value, $Res Function(_$_DollarPriceDTO) _then)
      : super(_value, (v) => _then(v as _$_DollarPriceDTO));

  @override
  _$_DollarPriceDTO get _value => super._value as _$_DollarPriceDTO;

  @override
  $Res call({
    Object? buyPrice = freezed,
    Object? sellPrice = freezed,
  }) {
    return _then(_$_DollarPriceDTO(
      buyPrice: buyPrice == freezed
          ? _value.buyPrice
          : buyPrice // ignore: cast_nullable_to_non_nullable
              as int,
      sellPrice: sellPrice == freezed
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
            const DeepCollectionEquality().equals(other.buyPrice, buyPrice) &&
            const DeepCollectionEquality().equals(other.sellPrice, sellPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(buyPrice),
      const DeepCollectionEquality().hash(sellPrice));

  @JsonKey(ignore: true)
  @override
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
