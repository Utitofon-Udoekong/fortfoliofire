import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_address.freezed.dart';

@freezed
abstract class BankAddress implements _$BankAddress {
  const BankAddress._();
  const factory BankAddress(
      {
        required String bankName,
  required String accountNumber,
  required String userName,
  required String type,
      }) = _BankAddress;

  factory BankAddress.empty() => const BankAddress(
       bankName: "",
       accountNumber: "",
       userName: "",
       type: ""
      );
  
}
