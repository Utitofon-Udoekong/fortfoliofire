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

part 'sign_in_form_phone_state.dart';
part 'sign_in_form_phone_cubit.freezed.dart';

@injectable
class SignInFormPhoneCubit extends Cubit<SignInFormPhoneState> {
  late final IAuthFacade _authFacade;
  StreamSubscription<Either<AuthFailure, String>>?
      _phoneNumberSignInSubscription;
  final Duration verificationCodeTimeout = const Duration(seconds: 60);
  final AuthCubit authCubit;
  SignInFormPhoneCubit(this.authCubit) : super(SignInFormPhoneState.initial()) {
    _authFacade = getIt<IAuthFacade>();
  }

  @override
  Future<void> close() async {
    await _phoneNumberSignInSubscription?.cancel();

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
        verificationId: "",
        isSubmitting: false,
      ),
    );
  }

  void signInWithPhoneNumber() {
    emit(state.copyWith(isSubmitting: true, failureOption: none()));

    _phoneNumberSignInSubscription = _authFacade
        .signInWithPhoneNumber(
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
                  verificationId: verificationId,
                  isSubmitting: false,
                ),
              );
            },
          ),
        );
  }

  void verifySmsCode() async {
    emit(
      state.copyWith(
        isSubmitting: true,
        failureOption: none(),
      ),
    );
    final verificationId = state.verificationId;
    final String phoneNumber = state.phoneNumber.getOrCrash();
    final Either<AuthFailure, Unit> failureOrSuccess = await _authFacade
        .verifySmsCode(smsCode: state.smsCode, verificationId: verificationId);
    failureOrSuccess.fold(
      (AuthFailure failure) {
        emit(
          state.copyWith(failureOption: some(failure), isSubmitting: false),
        );
      },
      (_) async {
        final usermodel = await _authFacade.getDatabaseUserWithPhoneNumber(
            phoneNumber: phoneNumber);
        usermodel.fold(
            () => null, (user) => authCubit.listenAuthStateChangesStream(user));
        authCubit.loggedInChanged(loggedIn: true);
        emit(state.copyWith(isSubmitting: false));
        // Verification completed successfully case.
      },
    );
  }


}
