part of 'verification_cubit.dart';

@freezed
class VerificationState with _$VerificationState {
  const factory VerificationState({
    required bool submitting,
    required String response,
    required String failure,
  }) = _VerificationState;
  const VerificationState._();
  factory VerificationState.empty() => const VerificationState(
    submitting: false,
    response: "",
    failure: ""
  );
  bool get isValidState => response.isNotEmpty;
}
