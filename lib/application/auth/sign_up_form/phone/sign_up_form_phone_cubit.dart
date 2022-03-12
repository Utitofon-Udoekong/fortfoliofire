import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/domain/auth/auth_failure.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:fortfolio/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_form_phone_state.dart';
part 'sign_up_form_phone_cubit.freezed.dart';

@injectable
class SignUpFormPhoneCubit extends Cubit<SignUpFormPhoneState> {
  late final IAuthFacade _authFacade;
  StreamSubscription<Either<AuthFailure, String>>?
      _phoneNumberSignUpSubscription;
  final Duration verificationCodeTimeout = const Duration(seconds: 60);
  final AuthCubit authCubit;
  SignUpFormPhoneCubit(this.authCubit) : super(SignUpFormPhoneState.initial()) {
    _authFacade = getIt<IAuthFacade>();
  }

  @override
  Future<void> close() async {
    await _phoneNumberSignUpSubscription?.cancel();

    return super.close();
  }

  void smsCodeChanged({
    required String smsCode,
  }) {
    emit(state.copyWith(smsCode: smsCode));
  }

  void phoneNumberChanged({
    required String phoneNumber,
  }) {
    emit(state.copyWith(phoneNumber: Phone(phoneNumber)));
  }

  void reset() {
    emit(
      state.copyWith(
        failureOption: none(),
        verificationIdOption: none(),
        isSubmitting: false,
      ),
    );
  }

  void signUpWithPhoneNumber() {
    emit(state.copyWith(isSubmitting: true, failureOption: none()));

    _phoneNumberSignUpSubscription = _authFacade
        .registerPhoneNumber(
            phoneNumber: state.phoneNumber, timeout: verificationCodeTimeout)
        .listen(
          (Either<AuthFailure, String> failureOrVerificationId) =>
              failureOrVerificationId.fold(
            (AuthFailure failure) {
              //This is the part where we receive failures like 'invalidPhoneNumber', 'smsTimeout' etc.
              emit(
                state.copyWith(
                    failureOption: some(failure), isSubmitting: false),
              );
            },
            (String verificationId) {
              // Catch this in Bloc Listener and take the user to SMS code entry page.
              emit(
                state.copyWith(
                  verificationIdOption: some(verificationId),
                  isSubmitting: false,
                ),
              );
            },
          ),
        );
  }

  void verifySmsCode() {
    state.verificationIdOption.fold(
      () {
        //Verification id does not exist. This should not happen.
      },
      (String verificationId) async {
        emit(
          state.copyWith(
            isSubmitting: true,
            failureOption: none(),
          ),
        );
        final Either<AuthFailure, Unit> failureOrSuccess =
            await _authFacade.verifySmsCode(
                smsCode: state.smsCode, verificationId: verificationId);
        failureOrSuccess.fold(
          (AuthFailure failure) {
            emit(
              state.copyWith(failureOption: some(failure), isSubmitting: false),
            );
          },
          (_) async {
            final usermodel = await _authFacade.getDatabaseUserWithPhoneNumber(phoneNumber: state.phoneNumber.getOrCrash());
            usermodel.fold(() => null, (user) => authCubit.listenAuthStateChangesStream(user));
            emit(state.copyWith(isSubmitting: false));
            // Verification completed successfully case.
            // Bloc Listener in the UI should listen to Auth Listener State and if user is authenticated and not anonymous, we should take them to Registration page or Feed Page.
          },
        );
      },
    );
  }


}