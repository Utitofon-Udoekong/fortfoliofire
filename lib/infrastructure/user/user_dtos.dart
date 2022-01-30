
import 'package:fortfolio/domain/auth/user/items/active_plan_item.dart';
import 'package:fortfolio/domain/auth/user/items/deposit_item.dart';
import 'package:fortfolio/domain/auth/user/items/withdrawal_item.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'user_dtos.freezed.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required UserName firstName,
    required UserName lastName,
    required EmailAddress email,
    required Phone phone,
    required bool isVerified,
    required List<WithdrawalItem> withdrawals,
    required List<DepositItem> deposits,
    required List<ActivePlanItem> activePlans,
  }) = _UserDto;

  // factory UserDto.fromDomain()
}