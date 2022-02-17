import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Withdrawal extends Equatable {
  final String description;
  final String uid;
  final int amount;
  final String traxId;
  final String planName;
  final String status;
  final DateTime createdat;

  Withdrawal({
    required this.description,
    required this.uid,
    required this.amount,
    required this.traxId,
    required this.planName,
    required this.status,
    required this.createdat
  });

  static Withdrawal fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return Withdrawal(
      description: snapshot["description"],
      uid: snapshot["uid"],
      amount: snapshot["amount"],
      planName: snapshot["planName"],
      status: snapshot["status"],
      traxId: snapshot["traxId"],
      createdat: snapshot["createdat"],
    );
  }

  Map<String, dynamic> toJson() => {
      "description": description,
      "uid": uid,
      "amount": amount,
      "traxId": traxId,
      "planName": planName,
      "status": status,
      "createdat": createdat.millisecondsSinceEpoch
      };



  @override
  List<Object> get props {
    return [
      description,
      uid,
      amount,
      traxId,
      planName,
      status,
      createdat
    ];
  }
}
