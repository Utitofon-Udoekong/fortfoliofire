import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_cubit.freezed.dart';

part 'profile_state.dart';

@injectable
class ProfileCubit extends Cubit<ProfileState> {
  final IAuthFacade authFacade;
  StreamSubscription<Either<String, String>>? _phoneNumberChangeSubscription;
  final Duration verificationCodeTimeout = const Duration(seconds: 60);
  ProfileCubit(this.authFacade) : super(ProfileState.initial());

  void firstNameChanged({required String firstName}) {
    emit(state.copyWith(firstName: firstName));
  }


  void lastNameChanged({required String lastName}) {
    emit(state.copyWith(lastName: lastName));
  }

  void emailChanged({required String email}) {
    emit(state.copyWith(email: email));
  }

  void phoneNumberChanged({required String phoneNumber}) {
    emit(state.copyWith(phoneNumber: phoneNumber));
  }
  void smsCodeChanged({required String smsCode}) {
    emit(state.copyWith(smsCode: smsCode));
  }

  void changeEmail() async {
    emit(state.copyWith(loading: true, failure: "", success: ""));
    final newEmail = state.email;
    final changeFuture = await authFacade.updateEmail(newEmail: newEmail);
    changeFuture.fold((failure) {
      emit(state.copyWith(failure: failure, loading: false));
    }, (success) {
      emit(state.copyWith(success: success, loading: false));
    });
  }

  void changeName() async {
    emit(state.copyWith(loading: true, failure: "", success: ""));
    final firstName = state.firstName;
    final lastName = state.lastName;
    final changeFuture =
        await authFacade.updateName(firstName: firstName, lastName: lastName);
    changeFuture.fold((failure) {
      emit(state.copyWith(failure: failure, loading: false));
    }, (success) {
      emit(state.copyWith(success: success, loading: false));
    });
  }

  void changePhone() {
    emit(state.copyWith(loading: true, failure: "", success: ""));
    final phoneNumber = state.phoneNumber;
    _phoneNumberChangeSubscription = authFacade
        .updatePhone(phoneNumber: phoneNumber, timeout: verificationCodeTimeout)
        .listen((Either<String, String> failureOrVerificationId) => failureOrVerificationId.fold((failure) {
          emit(state.copyWith(loading: false, failure: failure));
        }, (verificationId) {
          emit(state.copyWith(loading: false, verificationId: verificationId));
        }));
  }

  void verifySmsCode() async {
    emit(state.copyWith(loading: true, failure: "", success: ""));
    final verificationId = state.verificationId;
    final String phoneNumber = state.phoneNumber;
    final String smsCode = state.smsCode;
    final Either<String, String> failureOrSuccess = await authFacade
        .verifyPhoneUpdate(smsCode: smsCode, verificationId: verificationId, phoneNumber: phoneNumber);
    failureOrSuccess.fold(
      (failure) {
        emit(
          state.copyWith(failure: failure, loading: false),
        );
      },
      (success) async {
        emit(
          state.copyWith(success: success, loading: false),
        );
      },
    );
  }

  void deleteUser() async {
    emit(state.copyWith(loading: true, failure: "", success: ""));
    final Either<String, String> failureOrSuccess =
        await authFacade.deleteUser();
    failureOrSuccess.fold((failure) {
      emit(
        state.copyWith(failure: failure, loading: false),
      );
    }, (success) {
      emit(
        state.copyWith(success: success, loading: false),
      );
    });
  }

  void reset() {
    emit(
      state.copyWith(failure: "", smsCode: "", loading: false, success: ""
      ),
    );
  }
}
