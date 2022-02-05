import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/auth/auth_failure.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';
part 'sign_up_form_bloc.freezed.dart';

@injectable
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final IAuthFacade _authFacade;
  SignUpFormBloc(this._authFacade) : super(SignUpFormState.initial()) {
    on<SignUpFormEvent>(_signUpFormEvent);
  }

  _signUpFormEvent(SignUpFormEvent event, Emitter<SignUpFormState> emit) {
    event.map(emailChanged: (e) async* {
      yield state.copyWith(
          emailAddress: EmailAddress(e.emailString),
          authFailureOrSuccessOption: none());
    }, passwordChanged: (e) async* {
      yield state.copyWith(
          password: Password(e.passwordString),
          authFailureOrSuccessOption: none());
    }, firstNameChanged: (e) async* { 
      yield state.copyWith(
        firstName: UserName(e.firstNameString),
        authFailureOrSuccessOption: none()
      );
     }, 
    lastNameChanged: (e) async* { 
      yield state.copyWith(
        firstName: UserName(e.lastNameString),
        authFailureOrSuccessOption: none()
      );
     }, 
    phoneNumberChanged: (e) async* { 
      yield state.copyWith(
        firstName: UserName(e.phoneNumberString),
        authFailureOrSuccessOption: none()
      );
     }, 
    registerWithEmailAndPasswordpressed: (e) async* { 
      yield* _performActionOnAuthFacadeWithEmailAndPassword(
        _authFacade.registerWithEmailAndPassword
      );
     }, 
    smsCodeChanged: (e) async* { 
      yield state.copyWith(
        firstName: UserName(e.smsCodeString),
        authFailureOrSuccessOption: none()
      );
     }, reset: (e) async*{ 
       yield state.copyWith(
        authFailureOrSuccessOption: none(),
        verificationIdOption: none(),
        isSubmitting: false,
      );
      }, verifyOTPpressed: (e) async*{ 
        yield* _performAuthCodeVerification(
          _authFacade.verifySmsCode
        );
       });
  }



  Stream<SignUpFormState> _performActionOnAuthFacadeWithEmailAndPassword(
      Future<Either<AuthFailure, Unit>> Function(
              {required EmailAddress emailAddress, required Password password, required Phone phone})
          forwardedCall) async* {
    late Either<AuthFailure, Unit> failureOrSuccess;
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    final isFirstNameValid = state.firstName.isValid();
    final isLastNameValid = state.lastName.isValid();
    final isPhoneValid = state.phoneNumber.isValid();
    final isSMSValid = state.smsCode.isNotEmpty;
    if (isEmailValid && isPasswordValid && isFirstNameValid && isLastNameValid & isPhoneValid&& isSMSValid) {
      yield state.copyWith(
          isSubmitting: true, 
          authFailureOrSuccessOption: none()
          );

      failureOrSuccess = await forwardedCall(
          emailAddress: state.emailAddress, password: state.password, phone: state.phoneNumber);
    }

    yield state.copyWith(
        showErrorMessages: true,
        isSubmitting: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
        verificationIdOption: some(unit.toString()));
  }

  _performAuthCodeVerification(
      Future<Either<AuthFailure, Unit>> Function(
              {required String smsCode, required String verificationId})
          forwardedCall) async* {
    late Either<AuthFailure, Unit> failureOrSuccess;
    
    final isverificationIdOk = state.verificationIdOption.isSome();
    final isSMSValid = state.smsCode.isNotEmpty;
    if(isverificationIdOk && isSMSValid){
      yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );
        failureOrSuccess = await forwardedCall(
          verificationId: state.verificationIdOption.fold(() => "", (a) => a.toString()), smsCode: state.smsCode
        );
    }
    yield state.copyWith(
        showErrorMessages: true,
        isSubmitting: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess));

  }

  @override
  Future<void> close() async {
    // await _phoneNumberSignInSubscription?.cancel();

    return super.close();
  }
}
