import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:fortfolio/domain/core/value_objects.dart';
import 'package:fortfolio/domain/user/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'active_plan_item.dart';
import 'deposit_item.dart';
import 'withdrawal_item.dart';

part 'user.freezed.dart';
@freezed
abstract class AppUser implements _$AppUser {
  const AppUser._();
  const factory AppUser({
    required UniqueId id,
    required UserName firstName,
    required UserName lastName,
    required EmailAddress emailAddress,
    required Phone phone,
    required int accountBalance,
    required bool isVerified,
    required ItemList<WithdrawalItem> withdrawals,
    required ItemList<DepositItem> deposits,
    required ItemList<ActivePlanItem> activeplans,
  }) = _AppUser;

  factory AppUser.empty() => AppUser(
        id: UniqueId(),
        accountBalance: 0,
        activeplans: ItemList(emptyList()),
        deposits: ItemList(emptyList()),
        emailAddress: EmailAddress(""),
        firstName: UserName(""),
        lastName: UserName(""),
        phone: Phone(""),
        withdrawals: ItemList(emptyList()), isVerified: false,
      );

 
}
