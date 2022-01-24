import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:fortfolio/domain/core/value_objects.dart';
import 'package:fortfolio/domain/user/active_plan_item.dart';
import 'package:fortfolio/domain/user/deposit_item.dart';
import 'package:fortfolio/domain/user/withdrawal_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required UniqueId id,
    required UserName firstName,
    required UserName lastName,
    required EmailAddress email,
    required Phone phone,
    required bool isVerified,
    required List<WithdrawalItem> withdrawals,
    required List<DepositItem> deposits,
    required List<ActivePlanItem> activePlans, 
  }) = _User;

  factory User.empty() => User(
    id: UniqueId(),
    firstName: UserName(''),
    lastName: UserName(''),
    email: EmailAddress(''),
    phone: Phone(''),
    isVerified: false,
    withdrawals: List.empty(),
    deposits: List.empty(),
    activePlans: List.empty()
  );
}