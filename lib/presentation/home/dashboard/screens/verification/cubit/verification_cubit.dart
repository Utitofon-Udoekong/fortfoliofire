import 'dart:typed_data';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/auth/i_storage_facade.dart';
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

  void frontPicked({required Uint8List file}) async {
    emit(state.copyWith(frontFile: file));
  }

  void backPicked({required Uint8List file}) async {
    emit(state.copyWith(backFile: file));
  }

  void utilityPicked({required Uint8List file}) async {
    emit(state.copyWith(utilityFile: file));
  }

  getSubmittedState() async {
    final sp = await SharedPreferences.getInstance();
    final databaseKYC = await firestoreFacade.getKYC();
    final bool isVerified = authCubit.state.userModel.isVerified;
    bool? kycExists = sp.getBool('kycExists');
    databaseKYC.fold((l) {
      emit(state.copyWith(failure: l));
    }, (r) {
      if (r.status == "Rejected" || r.status == "Approved" || isVerified) {
        sp.setBool("kycExists", false);
        if (r.status == "Approved") emit(state.copyWith(status: r.status));
        if (r.status == "Rejected")
          emit(state.copyWith(
              status: r.status, rejectionReason: r.rejectionReason!));
      } else {
        emit(state.copyWith(kycExists: kycExists!));
      }
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
    final uploadfront = await storageFacade.uploadImageToStorage(
        childName: "FrontDocument", file: frontDocument);
    final uploadBack = await storageFacade.uploadImageToStorage(
        childName: "BackDocument", file: backDocument);
    final uploadUtility = await storageFacade.uploadImageToStorage(
        childName: "UtilityDocument", file: utilityDocument);
    uploadfront.fold(() => null, (frontImage) => front = frontImage);
    uploadBack.fold(() => null, (backImage) => back = backImage);
    uploadUtility.fold(() => null, (utilityImage) => utility = utilityImage);
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
    }, (success) {
      emit(state.copyWith(submitting: false, success: success));
    });
  }

  void reset() {
    emit(state.copyWith(
        frontFile: Uint8List.fromList([]),
        backFile: Uint8List.fromList([]),
        utilityFile: Uint8List.fromList([])));
  }
}
