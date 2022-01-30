
import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    required String failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.invalidPassword({
    required String failedValue,
  }) = InvalidPassword<T>;
  const factory ValueFailure.shortPassword({
    required String failedValue,
  }) = ShortPassword<T>;
  const factory ValueFailure.shortName({
    required String failedValue,
  }) = ShortName<T>;
  const factory ValueFailure.invalidPhone({
    required String failedValue,
  }) = InvalidPhone<T>;
}

