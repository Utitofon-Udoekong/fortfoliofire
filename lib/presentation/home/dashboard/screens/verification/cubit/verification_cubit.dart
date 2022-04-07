import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:fortfolio/domain/auth/auth_user_model.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/auth/i_storage_facade.dart';
import 'package:fortfolio/domain/user/kyc_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'verification_state.dart';
part 'verification_cubit.freezed.dart';

@injectable
class VerificationCubit extends Cubit<VerificationState> {
  final IStorageFacade storageFacade;
  final IFirestoreFacade firestoreFacade;
  final AuthUserModel userModel;
  VerificationCubit(this.storageFacade, this.firestoreFacade, this.userModel) : super(VerificationState.empty());

  void frontPicked({required Uint8List file}) async {
    emit(state.copyWith(submitting: true,success: "",failure:""));
    final response = await storageFacade.uploadImageToStorage(
        childName: "FrontDocument", file: file);
    response.fold((failure) {
      emit(state.copyWith(submitting: false,failure: failure));
    }, (response){
      emit(state.copyWith(submitting: false,frontFile: response, success: "File uploaded"));
    });
  }

  void backPicked({required Uint8List file}) async {
    emit(state.copyWith(submitting: true,success: "",failure:""));
    final response = await storageFacade.uploadImageToStorage(
        childName: "BackDocument", file: file);
    response.fold((failure) {
      emit(state.copyWith(submitting: false,failure: failure));
    }, (response){
      emit(state.copyWith(submitting: false,backFile: response, success: "File uploaded"));
    });
  }

  void utilityPicked({required Uint8List file}) async {
    emit(state.copyWith(submitting: true,success: "",failure:""));
    final response = await storageFacade.uploadImageToStorage(
        childName: "UtilityDocument", file: file);
    response.fold((failure) {
      emit(state.copyWith(submitting: false,failure: failure));
    }, (response){
      emit(state.copyWith(submitting: false, utilityFile: response, success: "File uploaded"));
    });
  }

  void submitKYC() async {
    emit(state.copyWith(submitting: true,success: "",failure:""));
    final frontDocument = state.frontFile;
    final backDocument = state.backFile;
    final utilityDocument = state.utilityFile;
    final documents = [{
      "name": "FrontDocument",
      "downloadUrl": frontDocument
    },
    {
      "name": "BackDocument",
      "downloadUrl": backDocument
    },
    {
      "name": "UtilityDocument",
      "downloadUrl": utilityDocument
    }];
    KYCItem kycItem = KYCItem(fullName: "${userModel.firstName} ${userModel.lastName}", id: userModel.id, documents: documents, submitted: DateTime.now(), status: "Pending");
    final response = await firestoreFacade.createKYC(kycItem: kycItem);
    response.fold((failure){
      emit(state.copyWith(submitting: false, failure: failure));
    }, (success) {
      emit(state.copyWith(submitting: false, success: success));
    });
  }
}
