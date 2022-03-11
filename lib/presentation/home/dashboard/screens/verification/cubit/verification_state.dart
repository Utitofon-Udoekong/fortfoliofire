part of 'verification_cubit.dart';

@freezed
class VerificationState with _$VerificationState {
  const factory VerificationState({
    required Uint8List frontFile,
    required Uint8List backFile,
    required Uint8List utilityFile,
    required bool submitting,
    required String response
  }) = _Initial;
  const VerificationState._();
  factory VerificationState.empty() => VerificationState(
    frontFile: Uint8List(BigInt.one.toInt()),
    backFile: Uint8List(BigInt.one.toInt()),
    utilityFile: Uint8List(BigInt.one.toInt()),
    submitting: false,
    response: ""
  );
}
