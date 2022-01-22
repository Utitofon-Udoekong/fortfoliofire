import 'package:fortfolio/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError({required this.valueFailure});

  @override
  String toString() {
    const String explanation = 'Encountered a ValueFailure at an unrecoverable point. Terminanting.';
    return Error.safeToString('$explanation Failure was $valueFailure');
  }
}