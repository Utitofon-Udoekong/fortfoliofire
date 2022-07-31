
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fortfolio/domain/user/dollar_price.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dollar_price_dto.freezed.dart';
part 'dollar_price_dto.g.dart';

@freezed
abstract class DollarPriceDTO implements _$DollarPriceDTO {
  const DollarPriceDTO._();
  const factory DollarPriceDTO({
    required int buyPrice,
    required int sellPrice,

  }) = _DollarPriceDTO;

  factory DollarPriceDTO.fromDomain(DollarPrice dollarPrice) {
    return DollarPriceDTO(
      buyPrice: dollarPrice.buyPrice,
      sellPrice: dollarPrice.sellPrice,
    );
  }

  factory DollarPriceDTO.empty() =>
      DollarPriceDTO.fromDomain(DollarPrice.empty());

  factory DollarPriceDTO.fromJson(Map<String, dynamic> json) =>
      _$DollarPriceDTOFromJson(json);
  
  factory DollarPriceDTO.fromFirestore(DocumentSnapshot doc){
    final Map<String, dynamic> docdata = doc.data() as Map<String, dynamic>? ??
        DollarPriceDTO.empty().toJson();
    return DollarPriceDTO.fromJson(docdata);
  }
}

extension DollarPriceDTOX on DollarPriceDTO {
  DollarPrice toDomain() {
    return DollarPrice(
    buyPrice: buyPrice,
    sellPrice: sellPrice,
    );
  }
}