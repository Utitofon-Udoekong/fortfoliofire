import 'package:fortfolio/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_objects.dart';
import 'items/active_plan_item.dart';
import 'items/deposit_item.dart';
import 'items/withdrawal_item.dart';
part 'user.freezed.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required UniqueId id,
  }) = _AppUser;
}