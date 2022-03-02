part of 'upload_image_bloc.dart';

@freezed
class UploadImageState with _$UploadImageState {
  const factory UploadImageState({
    required Uint8List frontFile,
    required Uint8List backFile,
    required Uint8List utilityFile,
    required bool submitting,
    required String response
  }) = _UploadImageState;
  factory UploadImageState.initial() => UploadImageState(
    frontFile: Uint8List(BigInt.one.toInt()),
    backFile: Uint8List(BigInt.one.toInt()),
    utilityFile: Uint8List(BigInt.one.toInt()),
    submitting: false,
    response: ""
  );
}
