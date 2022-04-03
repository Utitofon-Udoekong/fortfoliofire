import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fortfolio/domain/user/investment.dart';
import 'package:fortfolio/utils/pages.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'investment_dto.freezed.dart';
part 'investment_dto.g.dart';

@freezed
abstract class InvestmentItemDTO implements _$InvestmentItemDTO {
  const InvestmentItemDTO._();
  const factory InvestmentItemDTO({
    required String description,
    required String uid,
    required int amount,
    required String traxId,
    required int roi,
    required int numberOfDays,
    required String planName,
    required DateTime paymentDate,
    required DateTime dueDate,
    required double duration,
    required String status,
    required int planYield,
    required String paymentMethod
  }) = _InvestmentItemDTO;

  factory InvestmentItemDTO.fromDomain(InvestmentItem investmentItem) {
    return InvestmentItemDTO(
      amount: 0,
      planName: '',
      description: '',
      dueDate: DateTime.fromMillisecondsSinceEpoch(0),
      duration: 0.0,
      paymentDate: DateTime.fromMillisecondsSinceEpoch(0),
      planYield: 0,
      numberOfDays: 0,
      roi: 0,
      status: '',
      traxId: '',
      uid: '',
      paymentMethod: ''
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
      dueDate: dueDate,
      duration: duration,
      paymentDate: paymentDate,
      planYield: planYield,
      roi: roi,
      status: status,
      traxId: traxId,
      uid: uid,
      paymentMethod: paymentMethod,
      numberOfDays: numberOfDays
    );
  }
}
