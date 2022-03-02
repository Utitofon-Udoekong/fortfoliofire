import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/auth/auth_failure.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:fortfolio/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_email_state.dart';
part 'sign_in_form_email_cubit.freezed.dart';

@injectable
class SignInFormEmailCubit extends Cubit<SignInFormEmailState> {
  late final IAuthFacade _authFacade;
  StreamSubscription<Either<AuthFailure, String>>?
      _emailSignInSubscription;
  SignInFormEmailCubit() : super(SignInFormEmailState.initial()){
    _authFacade = getIt<IAuthFacade>();
  }

  @override
  Future<void> close() async {
    await _emailSignInSubscription?.cancel();

    return super.close();
  }

  void emailChanged({required String emailString}){
    emit(state.copyWith(
      emailAddress: EmailAddress(emailString)
    ));
  }

  void passwordChanged({required String passwordString}){
    emit(state.copyWith(
      password: Password(passwordString)
    ));
  }
  void isObscureChanged(){
    emit(state.copyWith(
      isObscure: !state.isObscure
    ));
  }

  Future signInWithEmailAndPasswordpressed() async{
    emit(state.copyWith(isSubmitting: true, authFailureOrSuccessOption: none()));
    late Either<AuthFailure, Unit> failureOrSuccess;
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
          isSubmitting: true, authFailureOrSuccessOption: none()));

      failureOrSuccess = await _authFacade.loginWithEmailAndPassword(
          emailAddress: state.emailAddress, password: state.password);
    }
    emit(state.copyWith(
        showErrorMessages: true,
        isSubmitting: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess)));
  }
}
