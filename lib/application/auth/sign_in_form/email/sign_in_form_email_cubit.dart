import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:fortfolio/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';

part 'sign_in_form_email_state.dart';
part 'sign_in_form_email_cubit.freezed.dart';

@injectable
class SignInFormEmailCubit extends Cubit<SignInFormEmailState> {
  final IAuthFacade _authFacade;
  late final AuthCubit authCubit;
  SignInFormEmailCubit(this._authFacade, this.authCubit): super(SignInFormEmailState.initial()){
    authCubit = getIt<AuthCubit>();
  }

  @override
  Future<void> close() async {
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
    final newScure = state.isObscure;
    emit(state.copyWith(
      isObscure: !newScure
    ));
  }

  Future signInWithEmailAndPasswordpressed() async{
    final validState = state.isValidState;
    emit(state.copyWith(isSubmitting: true, failure: "",success:""));
    if(validState){
      final Either<String, String> failureOrSuccess = await _authFacade.loginWithEmailAndPassword(
          emailAddress: state.emailAddress, password: state.password);
      failureOrSuccess.fold((failure){
        emit(state.copyWith(isSubmitting: false,failure: failure));
        reset();
      }, (success) async{
        emit(state.copyWith(success: success));
        reset();
        authCubit.stream.listen((authState) {
          if(authState.isLoggedIn){
            emit(state.copyWith(isSubmitting: false));
          }
        });
      });
    }
    emit(state.copyWith(showErrorMessages: true));
  }

  void reset(){
    emit(state.copyWith(
      emailAddress: EmailAddress(""),
      password: Password(""),
    ));
  }
}
