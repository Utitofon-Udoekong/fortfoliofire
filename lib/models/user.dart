import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'active_plan_model.dart';
import 'deposit_model.dart';
import 'withdrawal_model.dart';

class UserModel extends Equatable {
  String userID;
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  bool? isVerified;
  int? balance;
  DateTime? createdat;
  WithdrawalModel? withdrawals;
  Deposit? deposits;
  ActivePlanModel? activeInvestments;
  UserModel({
    required this.userID,
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.isVerified,
    this.balance,
    this.createdat,
    this.withdrawals,
    this.deposits,
    this.activeInvestments,
  });

  @override
  // TODO: implement props
  List<Object?> get props {
    return [
      userID,
      firstName,
      lastName,
      email,
      phone,
      isVerified,
      balance,
      createdat,
      withdrawals,
      deposits,
      activeInvestments,
    ];
  }
  

  UserModel copyWith({
    String? userID,
    String? firstName,
    String? lastName,
    String? email,
    String? phone,
    bool? isVerified,
    int? balance,
    DateTime? createdat,
    WithdrawalModel? withdrawals,
    Deposit? deposits,
    ActivePlanModel? activeInvestments,
  }) {
    return UserModel(
      userID: userID ?? this.userID,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      isVerified: isVerified ?? this.isVerified,
      balance: balance ?? this.balance,
      createdat: createdat ?? this.createdat,
      withdrawals: withdrawals ?? this.withdrawals,
      deposits: deposits ?? this.deposits,
      activeInvestments: activeInvestments ?? this.activeInvestments,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userID': userID,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'phone': phone,
      'isVerified': isVerified,
      'balance': balance,
      'createdat': createdat!.millisecondsSinceEpoch,
      'withdrawals': withdrawals!.toMap(),
      'deposits': deposits!.toMap(),
      'activeInvestments': activeInvestments!.toMap(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      userID: map['userID'] ?? '',
      firstName: map['firstName'] ?? '',
      lastName: map['lastName'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'] ?? '',
      isVerified: map['isVerified'] ?? false,
      balance: map['balance']?.toInt() ?? 0,
      createdat: DateTime.fromMillisecondsSinceEpoch(map['createdat']),
      withdrawals: WithdrawalModel.fromMap(map['withdrawals']),
      deposits: Deposit.fromMap(map['deposits']),
      activeInvestments: ActivePlanModel.fromMap(map['activeInvestments']),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));

  static final empty = UserModel(userID: '');

  /// Convenience getter to determine whether the current user is empty.
  bool get isEmpty => this == UserModel.empty;

  /// Convenience getter to determine whether the current user is not empty.
  bool get isNotEmpty => this != UserModel.empty;


  @override
  String toString() {
    return 'UserModel(userID: $userID, firstName: $firstName, lastName: $lastName, email: $email, phone: $phone, isVerified: $isVerified, balance: $balance, createdat: $createdat, withdrawals: $withdrawals, deposits: $deposits, activeInvestments: $activeInvestments)';
  }
}
