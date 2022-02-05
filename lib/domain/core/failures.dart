
import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.auth(AuthValueFailure<T> f) = _Auth<T>;
  const factory ValueFailure.notes(NotesValueFailure<T> f) = _Notes<T>;
}

@freezed
abstract class AuthValueFailure<T> with _$AuthValueFailure<T> {
  const factory AuthValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  const factory AuthValueFailure.invalidPassword({
    required T failedValue,
  }) = InvalidPassword<T>;
  const factory AuthValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
  const factory AuthValueFailure.shortName({
    required T failedValue,
  }) = ShortName<T>;
  const factory AuthValueFailure.invalidPhone({
    required T failedValue,
  }) = InvalidPhone<T>;
}

@freezed
abstract class NotesValueFailure<T> with _$NotesValueFailure<T> {
  const factory NotesValueFailure.exceedinglength({
    required T failedValue,
    required int max
  }) = ExceedingLength<T>;
  const factory NotesValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;
  const factory NotesValueFailure.multiLine({
    required T failedValue,
  }) = MultiLine<T>;
  const factory NotesValueFailure.listTooLong({
    required T failedValue,
    required int max
  }) = ListTooLong<T>;
}

