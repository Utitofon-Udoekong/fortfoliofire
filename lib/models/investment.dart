import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Investment extends Equatable {
  final String description;
  final String uid;
  final int amount;
  final String traxId;
  final String roi;
  final String planName;
  final DateTime paymentDate;
  final DateTime dueDate;
  final String duration;
  final String status;
  Investment({
    required this.description,
    required this.uid,
    required this.amount,
    required this.traxId,
    required this.roi,
    required this.planName,
    required this.paymentDate,
    required this.dueDate,
    required this.duration,
    required this.status,
  });
  

  Investment copyWith({
    String? description,
    String? uid,
    int? amount,
    String? traxId,
    String? roi,
    String? planName,
    DateTime? paymentDate,
    DateTime? dueDate,
    String? duration,
    String? status,
  }) {
    return Investment(
      description: description ?? this.description,
      uid: uid ?? this.uid,
      amount: amount ?? this.amount,
      traxId: traxId ?? this.traxId,
      roi: roi ?? this.roi,
      planName: planName ?? this.planName,
      paymentDate: paymentDate ?? this.paymentDate,
      dueDate: dueDate ?? this.dueDate,
      duration: duration ?? this.duration,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'description': description,
      'uid': uid,
      'amount': amount,
      'traxId': traxId,
      'roi': roi,
      'planName': planName,
      'paymentDate': paymentDate.millisecondsSinceEpoch,
      'dueDate': dueDate.millisecondsSinceEpoch,
      'duration': duration,
      'status': status,
    };
  }

  factory Investment.fromMap(Map<String, dynamic> map) {
    return Investment(
      description: map['description'] ?? '',
      uid: map['uid'] ?? '',
      amount: map['amount']?.toInt() ?? 0,
      traxId: map['traxId'] ?? '',
      roi: map['roi'] ?? '',
      planName: map['planName'] ?? '',
      paymentDate: DateTime.fromMillisecondsSinceEpoch(map['paymentDate']),
      dueDate: DateTime.fromMillisecondsSinceEpoch(map['dueDate']),
      duration: map['duration'] ?? '',
      status: map['status'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Investment.fromJson(String source) => Investment.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Investment(description: $description, uid: $uid, amount: $amount, traxId: $traxId, roi: $roi, planName: $planName, paymentDate: $paymentDate, dueDate: $dueDate, duration: $duration, status: $status)';
  }

  @override
  List<Object> get props {
    return [
      description,
      uid,
      amount,
      traxId,
      roi,
      planName,
      paymentDate,
      dueDate,
      duration,
      status,
    ];
  }
}
