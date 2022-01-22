import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/auth/auth_failure.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_phone_event.dart';
part 'sign_in_form_phone_state.dart';
part 'sign_in_form_phone_bloc.freezed.dart';

@injectable
class SignInFormPhoneBloc extends Bloc<SignInFormPhoneEvent, SignInFormPhoneState> {
  final IAuthFacade _authFacade;
  SignInFormPhoneBloc(this._authFacade) : super(SignInFormPhoneState.initial()) {
    on<SignInFormPhoneEvent>(_signInFormEvent);
  }

  _signInFormEvent(SignInFormPhoneEvent event, Emitter<SignInFormPhoneState> emit) async* {
    yield* event.map(phoneChanged: (e) async* {
      yield state.copyWith(
          phoneNumber: Phone(e.phoneString),
          authFailureOrSuccessOption: none());
    }, smsCodeChanged: (e) async* {
      yield state.copyWith(
          smsCode: e.smsCodeString,
          authFailureOrSuccessOption: none());
    }, signInWithPhonePressed: (e) async* {
      yield* _performActionOnAuthFacadeWithPhone(
        _authFacade.loginWithPhoneNumber
      );
    });
  }

  Stream<SignInFormPhoneState> _performActionOnAuthFacadeWithPhone(
      Future<Either<AuthFailure, Unit>> Function(
              {required Phone phone, required String smsCode})
          forwardedCall) async* {
    late Either<AuthFailure, Unit> failureOrSuccess;
    final isEmailValid = state.phoneNumber.isValid();
    final isPasswordValid = state.smsCode.isNotEmpty;
    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
          isSubmitting: true, authFailureOrSuccessOption: none());

      failureOrSuccess = await forwardedCall(
        phone: state.phoneNumber,
        smsCode: state.smsCode
      );
    }

    yield state.copyWith(
        showErrorMessages: true,
        isSubmitting: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess));
  }
}

// freezed code flutter pub run build_runner watch --delete-conflicting-outputs