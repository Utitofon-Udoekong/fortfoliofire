import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
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
  VerificationCubit(this.storageFacade, this.firestoreFacade, this.authCubit)
      : super(VerificationState.empty());

  void frontPicked({required Uint8List file}) async {
    // final response = await storageFacade.uploadImageToStorage(
    //     childName: "FrontDocument", file: file);
    emit(state.copyWith(frontFile: file));
  }

  void backPicked({required Uint8List file}) async {
    emit(state.copyWith(backFile: file));
  }

  void utilityPicked({required Uint8List file}) async {
    emit(state.copyWith(utilityFile: file));
  }

  String getFileName(int index) {
    switch (index) {
      case 0:
        return "Front";
      case 1:
        return "Back";
      case 2:
        return "Utility";
      default:
        return "Front";
    }
  }

  void submitKYC() async {
    emit(state.copyWith(submitting: true, success: "", failure: ""));

    String front = "";
    String back = "";
    String utility = "";

    final frontDocument = state.frontFile;
    final backDocument = state.backFile;
    final utilityDocument = state.utilityFile;

    List<Uint8List> images = [frontDocument, backDocument, utilityDocument];
    
    List<Option<String>> imageUrls = await Future.wait(images.map((image) async =>
        await storageFacade.uploadImageToStorage(
            childName: getFileName(images.indexOf(image)), file: image)));

    Option<String> uploadfront = imageUrls[0];
    Option<String> uploadBack = imageUrls[1];
    Option<String> uploadUtility = imageUrls[2];

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
