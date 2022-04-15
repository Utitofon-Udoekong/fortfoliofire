import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fortfolio/domain/auth/status.dart';
import 'package:fortfolio/domain/user/withdrawal_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'withdrawal_dto.freezed.dart';
part 'withdrawal_dto.g.dart';

@freezed
abstract class WithdrawalItemDTO implements _$WithdrawalItemDTO {
  const WithdrawalItemDTO._();
  const factory WithdrawalItemDTO({
    required String description,
    required int amount,
    required int duration,
    required int roi,
    required String traxId,
    required String uid,
    required String planName,
    required String status,
    required DateTime createdat,
    required String paymentMethod,
    required String currency,
  }) = _WithdrawalItemDTO;

  factory WithdrawalItemDTO.fromDomain(WithdrawalItem withdrawalItem) {
    return WithdrawalItemDTO(
      amount: withdrawalItem.amount,
      duration: withdrawalItem.duration,
      roi: withdrawalItem.roi,
      planName: withdrawalItem.planName,
      currency: withdrawalItem.currency,
      createdat: withdrawalItem.createdat,
      description: withdrawalItem.description,
      paymentMethod: withdrawalItem.paymentMethod,
      status: withdrawalItem.status,
      traxId: withdrawalItem.traxId,
      uid: withdrawalItem.uid,
    );
  }

  factory WithdrawalItemDTO.empty() =>
      WithdrawalItemDTO.fromDomain(WithdrawalItem.empty());

  factory WithdrawalItemDTO.fromJson(Map<String, dynamic> json) =>
      _$WithdrawalItemDTOFromJson(json);
  
  factory WithdrawalItemDTO.fromFirestore(DocumentSnapshot doc){
    final Map<String, dynamic> docdata = doc.data() as Map<String, dynamic>? ??
        WithdrawalItemDTO.empty().toJson();
    return WithdrawalItemDTO.fromJson(docdata);
  }
}

extension WithdrawalItemDTOX on WithdrawalItemDTO {
  WithdrawalItem toDomain() {
    return WithdrawalItem(
      amount: amount,
      duration: duration,
      roi: roi,
      planName: planName,
      createdat: createdat,
      description: description,
      paymentMethod: paymentMethod,
      status: status,
      traxId: traxId,
      uid: uid,
      currency: currency
    );
  }
}
