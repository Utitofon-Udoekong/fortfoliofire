import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:fortfolio/constants/enums.dart';

class Deposit extends Equatable {
  String id;
  int amount;
  DateTime createdat;
  DepositStatus status;

  Deposit({
    required this.id,
    required this.amount,
    required this.createdat,
    required this.status
  });

  Deposit copyWith({
    String? id,
    int? amount,
    DateTime? createdat,
    DepositStatus? status
  }) {
    return Deposit(
      id: id ?? this.id,
      amount: amount ?? this.amount,
      createdat: createdat ?? this.createdat,
      status: status ?? this.status
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'amount': amount,
      'createdat': createdat.millisecondsSinceEpoch,
      'status': status
    };
  }

  factory Deposit.fromMap(Map<String, dynamic> map) {
    return Deposit(
      id: map['id'] ?? '',
      amount: map['amount']?.toInt() ?? 0,
      createdat: DateTime.fromMillisecondsSinceEpoch(map['createdat']),
      status: map['status'] ?? DepositStatus.PENDING
    );
  }

  String toJson() => json.encode(toMap());

  factory Deposit.fromJson(String source) => Deposit.fromMap(json.decode(source));

  static var empty = Deposit(id: "", amount: 0, createdat: DateTime.now(), status: DepositStatus.PENDING);

  @override
  String toString() => 'Deposit(id: $id, amount: $amount, createdat: $createdat, status: $status)';

  @override
  // TODO: implement props
  List<Object?> get props => [id, amount, createdat, status];

  // @override
  // int get hashCode => id.hashCode ^ amount.hashCode ^ createdat.hashCode;
}
