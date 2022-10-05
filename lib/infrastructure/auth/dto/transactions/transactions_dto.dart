
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fortfolio/domain/user/transaction_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'transactions_dto.freezed.dart';
part 'transactions_dto.g.dart';

@freezed
abstract class TransactionItemDTO implements _$TransactionItemDTO {
  const TransactionItemDTO._();
  const factory TransactionItemDTO({
    required String description,
    required double amount,
    required String traxId,
    required String planName,
    required String status,
    required DateTime createdat,
    required String paymentMethod,
    required String currency,
    required String type,
    required int duration,
    required int roi,
  }) = _TransactionItemDTO;

  factory TransactionItemDTO.fromDomain(TransactionItem transactionItem) {
    return TransactionItemDTO(
      description: transactionItem.description,
      amount: transactionItem.amount,
    traxId: transactionItem.traxId,
    planName: transactionItem.planName,
    paymentMethod: transactionItem.paymentMethod,
    currency: transactionItem.currency,
    type: transactionItem.type,
    duration: transactionItem.duration,
    roi: transactionItem.roi,
    createdat: transactionItem.createdat,
    status: transactionItem.status
    );
  }

  factory TransactionItemDTO.empty() =>
      TransactionItemDTO.fromDomain(TransactionItem.initial());

  factory TransactionItemDTO.fromJson(Map<String, dynamic> json) =>
      _$TransactionItemDTOFromJson(json);
  
  factory TransactionItemDTO.fromFirestore(DocumentSnapshot doc){
    final Map<String, dynamic> docdata = doc.data() as Map<String, dynamic>? ??
        TransactionItemDTO.empty().toJson();
    return TransactionItemDTO.fromJson(docdata);
  }
}

extension TransactionItemDTOX on TransactionItemDTO {
  TransactionItem toDomain() {
    return TransactionItem(
    description: description,
      amount: amount,
    traxId: traxId,
    planName: planName,
    paymentMethod: paymentMethod,
    currency: currency,
    duration: duration,
    type: type,
    roi: roi,
    createdat: createdat,
    status: status
    );
  }
}