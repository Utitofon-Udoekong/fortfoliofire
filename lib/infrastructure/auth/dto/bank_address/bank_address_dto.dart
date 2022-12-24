import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fortfolio/domain/user/bank_address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_address_dto.freezed.dart';
part 'bank_address_dto.g.dart';

@freezed
abstract class BankAddressDTO implements _$BankAddressDTO {
  const BankAddressDTO._();
  const factory BankAddressDTO({
    required String bankName,
    required String accountNumber,
    required String accountType,
    required String userName,
    required String id,
    required String trax,
    required String type,
  }) = _BankAddressDTO;

  factory BankAddressDTO.fromDomain(BankAddress bankAddress) {
    return BankAddressDTO(
        accountNumber: bankAddress.accountNumber,
        accountType: bankAddress.accountType,
        bankName: bankAddress.bankName,
        trax: bankAddress.trax,
        type: bankAddress.type,
        userName: bankAddress.userName,
        id: bankAddress.id);
  }

  factory BankAddressDTO.empty() =>
      BankAddressDTO.fromDomain(BankAddress.empty());

  factory BankAddressDTO.fromJson(Map<String, dynamic> json) =>
      _$BankAddressDTOFromJson(json);

  factory BankAddressDTO.fromFirestore(DocumentSnapshot doc) {
    final Map<String, dynamic> docdata =
        doc.data() as Map<String, dynamic>? ?? BankAddressDTO.empty().toJson();
    return BankAddressDTO.fromJson(docdata);
  }
}

extension BankAddressDTOX on BankAddressDTO {
  BankAddress toDomain() {
    return BankAddress(
        bankName: bankName,
        accountNumber: accountNumber,
        accountType: accountType,
        userName: userName,
        id: id,
        trax: trax,
        type: type);
  }
}
