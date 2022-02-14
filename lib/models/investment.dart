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

  static Investment fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Investment(
      description: snapshot["description"],
      uid: snapshot["uid"],
      amount: snapshot["amount"],
      dueDate: snapshot["dueDate"],
      duration: snapshot["duration"],
      paymentDate: snapshot["paymentDate"],
      planName: snapshot["planName"],
      roi: snapshot["roi"],
      status: snapshot["status"],
      traxId: snapshot["traxId"],
    );
  }

  Map<String, dynamic> toJson() => {
      "description": description,
      "uid": uid,
      "amount": amount,
      "traxId": traxId,
      "roi": roi,
      "planName": planName,
      "paymentDate": paymentDate.millisecondsSinceEpoch,
      "dueDate": dueDate.millisecondsSinceEpoch,
      "duration": duration,
      "status": status,
      };



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
