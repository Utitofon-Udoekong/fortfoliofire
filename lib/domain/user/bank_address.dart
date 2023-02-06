import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_address.freezed.dart';
// part 'bank_address.g.dart';

@freezed
abstract class BankAddress implements _$BankAddress {
  const BankAddress._();
  const factory BankAddress(
      {
        required String bankName,
  required String accountNumber,
  required String accountType,
  required String userName,
  required String id,
  required String trax,
  required String type,
      }) = _BankAddress;

  factory BankAddress.empty() => const BankAddress(
       bankName: "",
       accountNumber: "",
       accountType: "",
       userName: "",
       id: "",
       trax: "",
       type: ""
      );

  Map<String, dynamic> toMap() {
    return {
      'bankName': bankName,
      'accountType': accountType,
      'accountNumber': accountNumber,
      'userName': userName,
      'id': id,
      'type': type,
    };
  }
}
