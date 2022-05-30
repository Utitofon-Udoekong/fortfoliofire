import 'package:freezed_annotation/freezed_annotation.dart';

part 'dollar_price.freezed.dart';

@freezed
abstract class DollarPrice implements _$DollarPrice {
  const factory DollarPrice({
    required int dollarToNaira,
  }) = _DollarPrice;

  factory DollarPrice.empty() => const DollarPrice(
        dollarToNaira: 0,
      );
}
