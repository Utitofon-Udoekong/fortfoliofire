import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fortfolio/domain/user/payment_details.dart';
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
    required String traxId,
    required String planName,
    required String status,
    required DateTime createdat,
    required String paymentMethod,
    required PaymentDetails paymentDetails,
  }) = _WithdrawalItemDTO;

  factory WithdrawalItemDTO.fromDomain(WithdrawalItem withdrawalItem) {
    return WithdrawalItemDTO(
      amount: 0,
      planName: '',
      createdat: DateTime.now(),
      description: '',
      paymentDetails: PaymentDetails.empty(),
      paymentMethod: '',
      status: '',
      traxId: '',
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
      planName: planName,
      createdat: createdat,
      description: description,
      paymentDetails: paymentDetails,
      paymentMethod: paymentMethod,
      status: status,
      traxId: traxId
    );
  }
}
