import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/auth/auth_failure.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_email_event.dart';
part 'sign_in_form_email_state.dart';
part 'sign_in_form_email_bloc.freezed.dart';

@injectable
class SignInFormEmailBloc extends Bloc<SignInFormEmailEvent, SignInFormEmailState> {
  final IAuthFacade _authFacade;
  SignInFormEmailBloc(this._authFacade) : super(SignInFormEmailState.initial()) {
    on<SignInFormEmailEvent>(_signInFormEvent);
  }

  _signInFormEvent(SignInFormEmailEvent event, Emitter<SignInFormEmailState> emit) async* {
    yield* event.map(emailChanged: (e) async* {
      yield state.copyWith(
          emailAddress: EmailAddress(e.emailString),
          authFailureOrSuccessOption: none());
    }, passwordChanged: (e) async* {
      yield state.copyWith(
          password: Password(e.passwordString),
          authFailureOrSuccessOption: none());
    }, signInWithEmailAndPasswordpressed: (e) async* {
      yield* _performActionOnAuthFacadeWithEmailAndPassword(
        _authFacade.loginWithEmailAndPassword
      );
    });
  }

  Stream<SignInFormEmailState> _performActionOnAuthFacadeWithEmailAndPassword(
      Future<Either<AuthFailure, Unit>> Function(
              {required EmailAddress emailAddress, required Password password})
          forwardedCall) async* {
    late Either<AuthFailure, Unit> failureOrSuccess;
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
          isSubmitting: true, authFailureOrSuccessOption: none());

      failureOrSuccess = await forwardedCall(
          emailAddress: state.emailAddress, password: state.password);
    }

    yield state.copyWith(
        showErrorMessages: true,
        isSubmitting: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess));
  }
}

// freezed code flutter pub run build_runner watch --delete-conflicting-outputs