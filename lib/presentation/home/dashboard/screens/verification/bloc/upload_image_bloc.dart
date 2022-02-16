import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:fortfolio/resources/storage_methods.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'upload_image_event.dart';
part 'upload_image_state.dart';
part 'upload_image_bloc.freezed.dart';

@injectable
class UploadImageBloc extends Bloc<UploadImageEvent, UploadImageState> {
  final StorageMethods storageMethods;
  UploadImageBloc(this.storageMethods) : super(UploadImageState.initial()) {
    on<UploadImageEvent>(_handleStates);
  }

  _handleStates(UploadImageEvent event, Emitter<UploadImageState> emit) async* {
    yield* event.map(
      loading: (e) async* {
        yield state.copyWith(submitting: true);
      },
      frontPicked: (e) async* {
        yield state.copyWith(frontFile: e.file);
        var response = await storageMethods.uploadImageToStorage(
            "FrontDocument", state.frontFile, true);
        yield state.copyWith(response: response);
      },
      backPicked: (e) async* {
        yield state.copyWith(backFile: e.file);
        var response = await storageMethods.uploadImageToStorage(
            "BackDocument", state.backFile, true);
        yield state.copyWith(response: response);
      },
      utitlityPicked: (e) async* {
        yield state.copyWith(backFile: e.file);
        var response = await storageMethods.uploadImageToStorage(
            "UtilityDocument", state.utilityFile, true);
        yield state.copyWith(response: response);
      },
    );
  }
}
