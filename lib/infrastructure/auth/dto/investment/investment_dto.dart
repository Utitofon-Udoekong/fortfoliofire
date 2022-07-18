import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fortfolio/domain/user/investment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'investment_dto.freezed.dart';
part 'investment_dto.g.dart';

@freezed
abstract class InvestmentItemDTO implements _$InvestmentItemDTO {
  const InvestmentItemDTO._();
  const factory InvestmentItemDTO({
    required String description,
    required String uid,
    String? coin,
    String? bankAccountType,
    required double amount,
    required String traxId,
    required int roi,
    required int numberOfDays,
    required String planName,
    required DateTime paymentDate,
    required DateTime dueDate,
    required int duration,
    required String status,
    required String currency,
    required double planYield,
    required String paymentMethod,
    required String refId,
  }) = _InvestmentItemDTO;

  factory InvestmentItemDTO.fromDomain(InvestmentItem investmentItem) {
    return InvestmentItemDTO(
      amount: investmentItem.amount,
      planName: investmentItem.planName,
      currency: investmentItem.currency,
      description: investmentItem.description,
      dueDate: investmentItem.dueDate,
      duration: investmentItem.duration,
      paymentDate: investmentItem.paymentDate,
      planYield: investmentItem.planYield,
      numberOfDays: investmentItem.numberOfDays,
      roi: investmentItem.roi,
      status: investmentItem.status,
      traxId: investmentItem.traxId,
      uid: investmentItem.uid,
      refId: investmentItem.refId,
      coin: investmentItem.coin,
      paymentMethod: investmentItem.paymentMethod
    );
  }

  factory InvestmentItemDTO.empty() =>
      InvestmentItemDTO.fromDomain(InvestmentItem.empty());

  factory InvestmentItemDTO.fromJson(Map<String, dynamic> json) =>
      _$InvestmentItemDTOFromJson(json);
  
  factory InvestmentItemDTO.fromFirestore(DocumentSnapshot doc){
    final Map<String, dynamic> docdata = doc.data() as Map<String, dynamic>? ??
        InvestmentItemDTO.empty().toJson();
    return InvestmentItemDTO.fromJson(docdata);
  }
}

extension InvestmentItemDTOX on InvestmentItemDTO {
  InvestmentItem toDomain() {
    return InvestmentItem(
      amount: amount,
      planName: planName,
      description: description,
      currency: currency,
      dueDate: dueDate,
      duration: duration,
      paymentDate: paymentDate,
      planYield: planYield,
      roi: roi,
      status: status,
      traxId: traxId,
      uid: uid,
      refId: refId,
      coin: coin,
      bankAccountType: bankAccountType,
      paymentMethod: paymentMethod,
      numberOfDays: numberOfDays
    );
  }
}
