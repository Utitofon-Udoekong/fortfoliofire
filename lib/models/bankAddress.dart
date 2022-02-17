import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class BankAddress extends Equatable {
  final String bankName;
  final String accountNumber;
  final String userName;
  final String type;
  const BankAddress({
    required this.bankName,
    required this.accountNumber,
    required this.userName,
    required this.type,
  });
  

  BankAddress copyWith({
    String? bankName,
    String? accountNumber,
    String? userName,
    String? type,
  }) {
    return BankAddress(
      bankName: bankName ?? this.bankName,
      accountNumber: accountNumber ?? this.accountNumber,
      userName: userName ?? this.userName,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'bankName': bankName,
      'accountNumber': accountNumber,
      'userName': userName,
      'type': type,
    };
  }

  factory BankAddress.fromMap(Map<String, dynamic> map) {
    return BankAddress(
      bankName: map['bankName'] ?? '',
      accountNumber: map['accountNumber'] ?? '',
      userName: map['userName'] ?? '',
      type: map['type'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory BankAddress.fromJson(String source) => BankAddress.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BankAddress(bankName: $bankName, accountNumber: $accountNumber, userName: $userName, type: $type)';
  }

  @override
  List<Object> get props => [bankName, accountNumber, userName, type];
}
