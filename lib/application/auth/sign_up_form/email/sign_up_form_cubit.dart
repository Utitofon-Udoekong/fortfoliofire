import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_form_state.dart';
part 'sign_up_form_cubit.freezed.dart';

@injectable
class SignUpFormCubit extends Cubit<SignUpFormState> {
  final IAuthFacade _authFacade;
  final Duration verificationCodeTimeout = const Duration(seconds: 60);
  SignUpFormCubit(this._authFacade) : super(SignUpFormState.initial());

  void emailChanged({
    required String emailAddress,
  }) {
    emit(state.copyWith(emailAddress: EmailAddress(emailAddress)));
  }

  void firstNameChanged({required String firstName}) {
    emit(state.copyWith(firstName: UserName(firstName)));
  }

  void lastNameChanged({required String lastName}) {
    emit(state.copyWith(lastName: UserName(lastName)));
  }

  void passwordChanged({required String password}) {
    emit(state.copyWith(password: Password(password)));
  }

  void isObscureChanged() {
    final newScure = state.isObscure;
    emit(state.copyWith(isObscure: !newScure));
  }

  Future registerWithEmailAndPasswordpressed() async {
    final validState = state.isValidState;
    emit(state.copyWith(isSubmitting: true, failure: "",success:""));
    if(validState){
      final Either<String, String> failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
            emailAddress: state.emailAddress, password: state.password, firstName: state.firstName, lastName: state.lastName);
      failureOrSuccess.fold((failure){
        emit(state.copyWith(isSubmitting: false,failure: failure));
      }, (success) {
        emit(state.copyWith(isSubmitting: false,success: success));
        reset();
      });
    }
    emit(state.copyWith(showErrorMessages: true));
  }
  void reset(){
    emit(state.copyWith(
      emailAddress: EmailAddress(""),
      password: Password(""),
      firstName: UserName(""),
      lastName: UserName(""),
    ));
  }
}
