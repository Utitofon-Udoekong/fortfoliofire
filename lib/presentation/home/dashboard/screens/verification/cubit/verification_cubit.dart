import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/auth/i_storage_facade.dart';
import 'package:fortfolio/domain/constants/image_model.dart';
import 'package:fortfolio/domain/user/kyc_item.dart';
import 'package:fortfolio/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'verification_state.dart';
part 'verification_cubit.freezed.dart';

@injectable
class VerificationCubit extends Cubit<VerificationState> {
  final IStorageFacade storageFacade;
  final IFirestoreFacade firestoreFacade;
  late final AuthCubit authCubit;
  VerificationCubit(this.storageFacade, this.firestoreFacade)
      : super(VerificationState.empty()) {
    authCubit = getIt<AuthCubit>();
    authCubit.stream.listen((state) {
      if (state.isLoggedIn) {
        getSubmittedState();
      }
    });
  }

  void documentTypeChanged({required String documentType}) {
    emit(state.copyWith(documentType: documentType));
  }

  void frontPicked({required File file}) async {
    emit(state.copyWith(frontFile: file));
  }

  void backPicked({required File file}) async {
    emit(state.copyWith(backFile: file));
  }

  void utilityPicked({required File file}) async {
    emit(state.copyWith(utilityFile: file));
  }

  getSubmittedState() async {
    final databaseKYC = await firestoreFacade.getKYC();
    final bool isVerified = authCubit.state.userModel.isVerified;
    if(isVerified){
      emit(state.copyWith(kycExists: false));
      return;
    }
    bool kycExists = false;
    databaseKYC.fold((l) {
      emit(state.copyWith(failure: l));
    }, (r) {
      if (r == KYCItem.empty()){
        emit(state.copyWith(kycExists: false));
        return;
      }
      if (r.status == "Approved") {
        emit(state.copyWith(status: r.status));
        return;
      }
      if (r.status == "Rejected") {
        emit(state.copyWith(
           status: r.status, rejectionReason: r.rejectionReason!));
        return;
      }
      if (r.status == "Pending") {
        emit(state.copyWith(kycExists: true));
        return;
      }
      emit(state.copyWith(kycExists: kycExists));
    });
  }

  void submitKYC() async {
    emit(state.copyWith(submitting: true, success: "", failure: ""));
    String front = "";
    String back = "";
    String utility = "";
    final frontDocument = state.frontFile;
    final backDocument = state.backFile;
    final utilityDocument = state.utilityFile;
    final documentType = state.documentType;
    final List<ImageModel> imageModelList = <ImageModel>[
      ImageModel(childName: "FrontDocument", file: frontDocument),
      ImageModel(childName: "BackDocument", file: backDocument),
      ImageModel(childName: "UtilityDocument", file: utilityDocument),
    ]; 
    final uploadImages = await storageFacade.uploadImagesToStorage(files: imageModelList);
    uploadImages.fold((failure) {
      emit(state.copyWith(submitting: false, failure: failure));
      reset();
      return;
    }, (images) {
      front = images[0];
      back = images[1];
      utility = images[2];
    });
    final documents = [
      {"name": "FrontDocument", "downloadUrl": front},
      {"name": "BackDocument", "downloadUrl": back},
      {"name": "UtilityDocument", "downloadUrl": utility}
    ];
    KYCItem kycItem = KYCItem(
        fullName:
            "${authCubit.state.userModel.firstName} ${authCubit.state.userModel.lastName}",
        id: authCubit.state.userModel.id,
        documentType: documentType,
        documents: documents,
        submitted: DateTime.now(),
        status: "Pending");
    final response = await firestoreFacade.createKYC(kycItem: kycItem);
    response.fold((failure) {
      emit(state.copyWith(submitting: false, failure: failure));
      reset();
    }, (success) {
      emit(state.copyWith(submitting: false, success: success, kycExists: true));
      reset();
    });
  }

  void reset() {
    emit(state.copyWith(
        frontFile: File(""),
        backFile: File(""),
        utilityFile: File("")));
  }
}
