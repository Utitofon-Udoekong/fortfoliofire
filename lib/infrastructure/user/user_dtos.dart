import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:fortfolio/domain/user/active_plan_item.dart';
import 'package:fortfolio/domain/user/deposit_item.dart';
import 'package:fortfolio/domain/user/user.dart';
import 'package:fortfolio/domain/user/value_objects.dart';
import 'package:fortfolio/domain/user/withdrawal_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

import 'package:fortfolio/domain/core/value_objects.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
abstract class UserDTO implements _$UserDTO {
  const UserDTO._();
  const factory UserDTO({
    @JsonKey(ignore: true) String? id,
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required int accountBalance,
    required List<WithdrawalItemDTO> withdrawals,
    required List<DepositItemDTO> deposits,
    required List<ActivePlanItemDTO> activePlans,
    @ServerTimeStampConverter() required FieldValue serverTimeStamp,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  factory UserDTO.fromDomain(AppUser appUser) {
    return UserDTO(
      id: appUser.id.getOrCrash(),
      serverTimeStamp: FieldValue.serverTimestamp(),
      accountBalance: appUser.accountBalance,
      email: appUser.emailAddress.getOrCrash(),
      firstName: appUser.firstName.getOrCrash(),
      lastName: appUser.lastName.getOrCrash(),
      phone: appUser.phone.getOrCrash(),
      withdrawals: appUser.withdrawals
          .getOrCrash()
          .map((withdrawalItem) => WithdrawalItemDTO.fromDomain(withdrawalItem))
          .asList(),
      deposits: appUser.deposits
          .getOrCrash()
          .map((depositItem) => DepositItemDTO.fromDomain(depositItem))
          .asList(),
      activePlans: appUser.activeplans.getOrCrash().map((activePlanItem) => ActivePlanItemDTO.fromDomain(activePlanItem)).asList()
    );
  }

  factory UserDTO.fromFirestore(DocumentSnapshot doc) {
    return UserDTO.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }

  AppUser toDomain() {
    return AppUser(
      id: UniqueId.fromUniqueString(id!),
      accountBalance: accountBalance,
      emailAddress: EmailAddress(email),
      firstName: UserName(firstName),
      lastName: UserName(lastName),
      phone: Phone(phone),
      deposits:
          ItemList(deposits.map((dto) => dto.toDomain()).toImmutableList()),
      withdrawals:
          ItemList(withdrawals.map((dto) => dto.toDomain()).toImmutableList()),
      activeplans: ItemList(activePlans.map((dto) => dto.toDomain()).toImmutableList())
    );
  }
}

class ServerTimeStampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimeStampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

@freezed
abstract class WithdrawalItemDTO implements _$WithdrawalItemDTO {
  const WithdrawalItemDTO._();
  const factory WithdrawalItemDTO({
    required String id,
    required int amount,
    required String planName,
    required bool processed,
  }) = _WithdrawalItemDTO;

  factory WithdrawalItemDTO.fromDomain(WithdrawalItem withdrawalItem) {
    return const WithdrawalItemDTO(
        amount: 0, planName: '', id: '', processed: false);
  }

  WithdrawalItem toDomain() {
    return WithdrawalItem(
      id: UniqueId.fromUniqueString(id),
      amount: amount,
      planName: ItemName(planName),
      processed: processed,
    );
  }

  factory WithdrawalItemDTO.fromJson(Map<String, dynamic> json) =>
      _$WithdrawalItemDTOFromJson(json);
}

@freezed
abstract class DepositItemDTO implements _$DepositItemDTO {
  const DepositItemDTO._();
  const factory DepositItemDTO({
    required String id,
    required int amount,
    required String planName,
    required bool processed,
  }) = _DepositItemDTO;

  factory DepositItemDTO.fromDomain(DepositItem depositItem) {
    return const DepositItemDTO(
        amount: 0, planName: '', id: '', processed: false);
  }

  DepositItem toDomain() {
    return DepositItem(
      id: UniqueId.fromUniqueString(id),
      amount: amount,
      planName: ItemName(planName),
      processed: processed,
    );
  }

  factory DepositItemDTO.fromJson(Map<String, dynamic> json) =>
      _$DepositItemDTOFromJson(json);
}

@freezed
abstract class ActivePlanItemDTO implements _$ActivePlanItemDTO {
  const ActivePlanItemDTO._();
  const factory ActivePlanItemDTO({
    required String id,
    required int amount,
    required String planName,
    required int accountBalance,
    required int duration,
    required int roi
  }) = _ActivePlanItemDTO;

  factory ActivePlanItemDTO.fromDomain(ActivePlanItem activePlanItem) {
    return const ActivePlanItemDTO(
        amount: 0, planName: '', id: '', accountBalance: 0, duration: 0, roi: 0);
  }

  ActivePlanItem toDomain() {
    return ActivePlanItem(
      id: UniqueId.fromUniqueString(id),
      amount: amount,
      planName: ItemName(planName),
      accountBalance: accountBalance,
      duration: duration,
      roi: roi,
    );
  }

  factory ActivePlanItemDTO.fromJson(Map<String, dynamic> json) =>
      _$ActivePlanItemDTOFromJson(json);
}
