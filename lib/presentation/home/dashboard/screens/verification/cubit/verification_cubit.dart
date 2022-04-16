import 'dart:io';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/auth/i_storage_facade.dart';
import 'package:fortfolio/domain/user/kyc_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';

part 'verification_state.dart';
part 'verification_cubit.freezed.dart';

@injectable
class VerificationCubit extends Cubit<VerificationState> {
  final IStorageFacade storageFacade;
  final IFirestoreFacade firestoreFacade;
  final AuthCubit authCubit;
  VerificationCubit(this.storageFacade, this.firestoreFacade, this.authCubit) : super(VerificationState.empty());

  void frontPicked({required File file}) async {
    emit(state.copyWith(submitting: true,success: "",failure:""));
    final response = await storageFacade.uploadImageToStorage(
        childName: "FrontDocument", file: file);
    response.fold((failure) {
      emit(state.copyWith(submitting: false,failure: failure));
    }, (response){
      emit(state.copyWith(submitting: false, frontFile: response, success: "File uploaded"));
    });
  }

  void backPicked({required File file}) async {
    emit(state.copyWith(submitting: true,success: "",failure:""));
    final response = await storageFacade.uploadImageToStorage(
        childName: "BackDocument", file: file);
    response.fold((failure) {
      emit(state.copyWith(submitting: false,failure: failure));
    }, (response){
      emit(state.copyWith(submitting: false,backFile: response, success: "File uploaded"));
    });
  }

  void utilityPicked({required File file}) async {
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
    KYCItem kycItem = KYCItem(fullName: "${authCubit.state.userModel.firstName} ${authCubit.state.userModel.lastName}", id: authCubit.state.userModel.id, documents: documents, submitted: DateTime.now(), status: "Pending");
    final response = await firestoreFacade.createKYC(kycItem: kycItem);
    response.fold((failure){
      emit(state.copyWith(submitting: false, failure: failure));
    }, (success) {
      emit(state.copyWith(submitting: false, success: success));
    });
  }
}
