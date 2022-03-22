import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:fortfolio/domain/auth/i_storage_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'verification_state.dart';
part 'verification_cubit.freezed.dart';

@injectable
class VerificationCubit extends Cubit<VerificationState> {
  final IStorageFacade storageFacade;
  VerificationCubit(this.storageFacade) : super(VerificationState.empty());

  void frontPicked({required Uint8List file}) async {
    emit(state.copyWith(submitting: true,response: "",failure:""));
    final response = await storageFacade.uploadImageToStorage(
        childName: "FrontDocument", file: file);
    response.fold((failure) {
      emit(state.copyWith(submitting: false,failure: failure));
    }, (response){
      emit(state.copyWith(submitting: false,response: response));
    });
  }

  void backPicked({required Uint8List file}) async {
    emit(state.copyWith(submitting: true,response: "",failure:""));
    final response = await storageFacade.uploadImageToStorage(
        childName: "BackDocument", file: file);
    response.fold((failure) {
      emit(state.copyWith(submitting: false,failure: failure));
    }, (response){
      emit(state.copyWith(submitting: false,response: response));
    });
  }

  void utilityPicked({required Uint8List file}) async {
    emit(state.copyWith(submitting: true,response: "",failure:""));
    final response = await storageFacade.uploadImageToStorage(
        childName: "UtilityDocument", file: file);
    response.fold((failure) {
      emit(state.copyWith(submitting: false,failure: failure));
    }, (response){
      emit(state.copyWith(submitting: false,response: response));
    });
  }
}
