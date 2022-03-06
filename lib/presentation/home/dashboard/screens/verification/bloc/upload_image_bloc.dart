import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:fortfolio/domain/auth/i_storage_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'upload_image_event.dart';
part 'upload_image_state.dart';
part 'upload_image_bloc.freezed.dart';

@injectable
class UploadImageBloc extends Bloc<UploadImageEvent, UploadImageState> {
  final IStorageFacade storageFacade;
  UploadImageBloc(this.storageFacade) : super(UploadImageState.initial()) {
    on<UploadImageEvent>(_handleStates);
  }

  _handleStates(UploadImageEvent event, Emitter<UploadImageState> emit) async* {
    yield* event.map(
      loading: (e) async* {
        yield state.copyWith(submitting: true);
      },
      frontPicked: (e) async* {
        yield state.copyWith(frontFile: e.file);
        final response = await storageFacade.uploadImageToStorage(
            childName: "FrontDocument", file: state.frontFile);
        response.fold(() => null, (response) async* {
          yield state.copyWith(response: response);
        });
      },
      backPicked: (e) async* {
        yield state.copyWith(backFile: e.file);
        final response = await storageFacade.uploadImageToStorage(
            childName: "BackDocument", file: state.backFile);
        response.fold(() => null, (response) async* {
          yield state.copyWith(response: response);
        });
      },
      utitlityPicked: (e) async* {
        yield state.copyWith(backFile: e.file);
        final response = await storageFacade.uploadImageToStorage(
            childName: "UtilityDocument", file: state.utilityFile);
        response.fold(() => null, (response) async* {
          yield state.copyWith(response: response);
        });
      },
    );
  }
}
