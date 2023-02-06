part of 'verification_cubit.dart';

@freezed
class VerificationState with _$VerificationState {
  const factory VerificationState({
    required bool submitting,
    required bool kycExists,
    required String failure,
    required String rejectionReason,
    required String success,
    required String status,
    required String documentType,
    required File frontFile,
    required File backFile,
    required File utilityFile,
  }) = _VerificationState;
  const VerificationState._();
  factory VerificationState.empty() => VerificationState(
    submitting: false,
    kycExists: false,
    failure: "",
    rejectionReason: "",
    frontFile: File(""),
    backFile: File(""),
    utilityFile: File(""),
    success: "",
    status: "",
    documentType: ""
  );
  bool get isValidState => frontFile.path.isNotEmpty && backFile.path.isNotEmpty;
  bool get isRejected => status == "Rejected";
}
