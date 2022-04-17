part of 'verification_cubit.dart';

@freezed
class VerificationState with _$VerificationState {
  const factory VerificationState({
    required bool submitting,
    required String failure,
    required String success,
    required Uint8List frontFile,
    required Uint8List backFile,
    required Uint8List utilityFile,
  }) = _VerificationState;
  const VerificationState._();
  factory VerificationState.empty() => VerificationState(
    submitting: false,
    failure: "",
    frontFile: Uint8List.fromList(),
    backFile: "",
    utilityFile: "",
    success: ""
  );
  bool get isValidState => frontFile.isNotEmpty && backFile.isNotEmpty;
}
