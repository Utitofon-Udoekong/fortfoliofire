import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Withdrawal extends Equatable {
  final String description;
  final int amount;
  final String traxId;
  final String planName;
  final String status;
  final DateTime createdat;
  final String paymentMethod;
  final Map<String,dynamic> paymentDetails;
  const Withdrawal({
    required this.description,
    required this.amount,
    required this.traxId,
    required this.planName,
    required this.status,
    required this.createdat,
    required this.paymentMethod,
    required this.paymentDetails,
  });
  

  Withdrawal copyWith({
    String? description,
    int? amount,
    String? traxId,
    String? planName,
    String? status,
    DateTime? createdat,
    String? paymentMethod,
    Map<String,dynamic>? paymentDetails,
  }) {
    return Withdrawal(
      description: description ?? this.description,
      amount: amount ?? this.amount,
      traxId: traxId ?? this.traxId,
      planName: planName ?? this.planName,
      status: status ?? this.status,
      createdat: createdat ?? this.createdat,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      paymentDetails: paymentDetails ?? this.paymentDetails,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'description': description,
      'amount': amount,
      'traxId': traxId,
      'planName': planName,
      'status': status,
      'createdat': createdat.millisecondsSinceEpoch,
      'paymentMethod': paymentMethod,
      'paymentDetails': paymentDetails,
    };
  }

  factory Withdrawal.fromMap(Map<String, dynamic> map) {
    return Withdrawal(
      description: map['description'] ?? '',
      amount: map['amount']?.toInt() ?? 0,
      traxId: map['traxId'] ?? '',
      planName: map['planName'] ?? '',
      status: map['status'] ?? '',
      createdat: DateTime.fromMillisecondsSinceEpoch(map['createdat']),
      paymentMethod: map['paymentMethod'] ?? '',
      paymentDetails: Map<String,dynamic>.from(map['paymentDetails']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Withdrawal.fromJson(String source) => Withdrawal.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Withdrawal(description: $description, amount: $amount, traxId: $traxId, planName: $planName, status: $status, createdat: $createdat, paymentMethod: $paymentMethod, paymentDetails: $paymentDetails)';
  }

  @override
  List<Object> get props {
    return [
      description,
      amount,
      traxId,
      planName,
      status,
      createdat,
      paymentMethod,
      paymentDetails,
    ];
  }
}
