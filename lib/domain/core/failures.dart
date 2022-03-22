
import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({required T failedValue,}) = InvalidEmail<T>;
  const factory ValueFailure.invalidPassword({required T failedValue,}) = InvalidPassword<T>;
  const factory ValueFailure.invalidPhone({required T failedValue,}) = InvalidPhone<T>;
  const factory ValueFailure.shortPassword({required T failedValue,}) = ShortPassword<T>;
  const factory ValueFailure.shortName({required T failedValue,}) = ShortName<T>;
  const factory ValueFailure.empty({required T failedValue,}) = Empty<T>;
  const factory ValueFailure.listTooLong({ required T failedValue, required int max }) = ListTooLong<T>;
}


