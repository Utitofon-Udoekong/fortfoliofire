import 'dart:convert';

import 'package:equatable/equatable.dart';

class ActivePlanModel extends Equatable {
  String plan_name;
  int amount_invested;
  int plan_duration;
  DateTime createdat;
  int plan_roi;
  int plan_balance;
  
  ActivePlanModel({
    required this.plan_name,
    required this.amount_invested,
    required this.plan_duration,
    required this.createdat,
    required this.plan_roi,
    required this.plan_balance,
  });

  @override
  // TODO: implement props
  List<Object> get props {
    return [
      plan_name,
      amount_invested,
      plan_duration,
      createdat,
      plan_roi,
      plan_balance,
    ];
  }



  ActivePlanModel copyWith({
    String? plan_name,
    int? amount_invested,
    int? plan_duration,
    DateTime? createdat,
    int? plan_roi,
    int? plan_balance,
  }) {
    return ActivePlanModel(
      plan_name: plan_name ?? this.plan_name,
      amount_invested: amount_invested ?? this.amount_invested,
      plan_duration: plan_duration ?? this.plan_duration,
      createdat: createdat ?? this.createdat,
      plan_roi: plan_roi ?? this.plan_roi,
      plan_balance: plan_balance ?? this.plan_balance,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'plan_name': plan_name,
      'amount_invested': amount_invested,
      'plan_duration': plan_duration,
      'createdat': createdat.millisecondsSinceEpoch,
      'plan_roi': plan_roi,
      'plan_balance': plan_balance,
    };
  }

  factory ActivePlanModel.fromMap(Map<String, dynamic> map) {
    return ActivePlanModel(
      plan_name: map['plan_name'] ?? '',
      amount_invested: map['amount_invested']?.toInt() ?? 0,
      plan_duration: map['plan_duration']?.toInt() ?? 0,
      createdat: DateTime.fromMillisecondsSinceEpoch(map['createdat']),
      plan_roi: map['plan_roi']?.toInt() ?? 0,
      plan_balance: map['plan_balance']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  static var empty = ActivePlanModel(plan_name: "", amount_invested: 0, plan_duration: 0, plan_roi: 0, plan_balance: 0, createdat: DateTime.now());

  factory ActivePlanModel.fromJson(String source) => ActivePlanModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ActivePlanModel(plan_name: $plan_name, amount_invested: $amount_invested, plan_duration: $plan_duration, createdat: $createdat, plan_roi: $plan_roi, plan_balance: $plan_balance)';
  }
}
