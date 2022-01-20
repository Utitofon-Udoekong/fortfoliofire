import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:fortfolio/constants/enums.dart';

class WithdrawalModel extends Equatable {
  String id;
  int amount;
  WithdrawalStatus status;
  DateTime createdat;
  WithdrawalModel({
    required this.id,
    required this.amount,
    required this.status,
    required this.createdat,
  });

  @override
  // TODO: implement props
  List<Object> get props => [id, amount, status, createdat];

  WithdrawalModel copyWith({
    String? id,
    int? amount,
    WithdrawalStatus? status,
    DateTime? createdat,
  }) {
    return WithdrawalModel(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      status: status ?? this.status,
      createdat: createdat ?? this.createdat,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'amount': amount,
      'status': status,
      'createdat': createdat.millisecondsSinceEpoch,
    };
  }

  factory WithdrawalModel.fromMap(Map<String, dynamic> map) {
    return WithdrawalModel(
      id: map['id'] ?? '',
      amount: map['amount']?.toInt() ?? 0,
      status: (map['status']),
      createdat: DateTime.fromMillisecondsSinceEpoch(map['createdat']),
    );
  }

  String toJson() => json.encode(toMap());

  factory WithdrawalModel.fromJson(String source) => WithdrawalModel.fromMap(json.decode(source));

  static var empty = WithdrawalModel(id: "", amount: 0, status: WithdrawalStatus.PENDING, createdat: DateTime.now());

  @override
  String toString() {
    return 'WithdrawalModel(id: $id, amount: $amount, status: $status, createdat: $createdat, status: $status)';
  }
}
