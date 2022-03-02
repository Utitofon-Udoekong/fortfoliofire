part of 'upload_image_bloc.dart';

@freezed
class UploadImageEvent with _$UploadImageEvent {
  const factory UploadImageEvent.loading() = _Loading;
  const factory UploadImageEvent.frontPicked(Uint8List file) = _FrontPicked;
  const factory UploadImageEvent.backPicked(Uint8List file) = _BackPicked;
  const factory UploadImageEvent.utitlityPicked(Uint8List file) = _UtitlityPicked;
}