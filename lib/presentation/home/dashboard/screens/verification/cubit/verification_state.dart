part of 'verification_cubit.dart';

@freezed
class VerificationState with _$VerificationState {
  const factory VerificationState({
    required bool submitting,
    required String failure,
    required String success,
    required String frontFile,
    required String backFile,
    required String utilityFile,
  }) = _VerificationState;
  const VerificationState._();
  factory VerificationState.empty() => const VerificationState(
    submitting: false,
    failure: "",
    frontFile: "",
    backFile: "",
    utilityFile: "",
    success: ""
  );
  bool get isValidState => frontFile.isNotEmpty && backFile.isNotEmpty && utilityFile.isNotEmpty;
}
