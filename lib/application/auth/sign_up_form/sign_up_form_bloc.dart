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
    // event.map(emailChanged: (e) async* {
    //   yield state.copyWith(
    //       emailAddress: EmailAddress(e.emailString),
    //       authFailureOrSuccessOption: none());
    // }, passwordChanged: (e) async* {
    //   yield state.copyWith(
    //       password: Password(e.passwordString),
    //       authFailureOrSuccessOption: none());
    // }, signInWithEmailAndPasswordpressed: (e) async* {
    //   yield* _performActionOnAuthFacadeWithEmailAndPassword(
    //     _authFacade.loginWithEmailAndPassword
    //   );
    // });
  }

  Stream<SignUpFormState> _performActionOnAuthFacadeWithEmailAndPassword(
      Future<Either<AuthFailure, Unit>> Function(
              {required EmailAddress emailAddress, required Password password, required Phone phone, required String sms})
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
          emailAddress: state.emailAddress, password: state.password, phone: state.phoneNumber, sms: state.smsCode);
    }

    yield state.copyWith(
        showErrorMessages: true,
        isSubmitting: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess));
  }
}
