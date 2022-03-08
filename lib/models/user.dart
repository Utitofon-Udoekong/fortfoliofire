import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

enum Roles { user, admin }
class AppUser extends Equatable {
  final String uid;
  final String firstname;
  final String lastname;
  final String email;
  final DateTime createdAt;
  final bool isVerified;
  final String phone;
  final int balance;
  final Roles role;
    bool get isUserRole => role == Roles.user;
  bool get isAdminRole => role == Roles.admin;

  String get getFullName => firstname + " " + lastname;
  const AppUser({
    required this.uid,
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.createdAt,
    required this.isVerified,
    required this.phone,
    required this.balance,
    required this.role
  });

  @override
  List<Object> get props {
    return [
      uid,
      firstname,
      lastname,
      email,
      createdAt,
      isVerified,
      phone,
      balance,
      role,
    ];
  }

  // AppUser copyWith({
  //   String? uid,
  //   String? firstname,
  //   String? lastname,
  //   String? email,
  //   DateTime? createdAt,
  //   bool? isVerified,
  //   String? phone,
  //   int? balance,
  //   Roles? role,
  // }) {
  //   return AppUser(
  //     uid: uid ?? this.uid,
  //     firstname: firstname ?? this.firstname,
  //     lastname: lastname ?? this.lastname,
  //     email: email ?? this.email,
  //     createdAt: createdAt ?? this.createdAt,
  //     isVerified: isVerified ?? this.isVerified,
  //     phone: phone ?? this.phone,
  //     balance: balance ?? this.balance,
  //     role: role ?? this.role,
  //   );
  // }

  Map<String, dynamic> toJson() => {
      'uid': uid,
      'firstname': firstname,
      'lastname': lastname,
      'email': email,
      'createdAt': createdAt.millisecondsSinceEpoch,
      'isVerified': isVerified,
      'phone': phone,
      'balance': balance,
      'role': role
    };

  factory AppUser.fromMap(Map<String, dynamic> map) {
    return AppUser(
      uid: map['uid'] ?? '',
      firstname: map['firstname'] ?? '',
      lastname: map['lastname'] ?? '',
      email: map['email'] ?? '',
      createdAt: DateTime.fromMillisecondsSinceEpoch(map['createdAt']),
      isVerified: map['isVerified'] ?? false,
      phone: map['phone'] ?? '',
      balance: map['balance']?.toInt() ?? 0,
      role: Roles.values[map['role'] ?? 0],
    );
  }

  static AppUser fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return AppUser(
      uid: snapshot["uid"],
      email: snapshot["email"],
      balance: snapshot["balance"], 
      createdAt: snapshot["createdAt"], 
      firstname: snapshot["firstname"], 
      isVerified: snapshot["isVerified"], 
      lastname: snapshot["lastname"], 
      phone: snapshot["phone"], 
      role: snapshot["role"]
    );
  }


  // @override
  // String toString() {
  //   return 'AppUser(uid: $uid, firstname: $firstname, lastname: $lastname, email: $email, createdAt: $createdAt, isVerified: $isVerified, phone: $phone, balance: $balance)';
  // }

  // Map<String, dynamic> toMap() {
  //   return {
  //     'uid': uid,
  //     'firstname': firstname,
  //     'lastname': lastname,
  //     'email': email,
  //     'createdAt': createdAt.millisecondsSinceEpoch,
  //     'isVerified': isVerified,
  //     'phone': phone,
  //     'balance': balance,
  //     'role': role.name,
  //   };
  // }

}
