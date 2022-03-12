import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/auth/auth_failure.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:fortfolio/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_form_state.dart';
part 'sign_up_form_cubit.freezed.dart';

@injectable
class SignUpFormCubit extends Cubit<SignUpFormState> {
  late final IAuthFacade _authFacade;
  StreamSubscription<Either<AuthFailure, String>>?
      _phoneNumberSignInSubscription;
  final Duration verificationCodeTimeout = const Duration(seconds: 60);
  // SignUpFormCubit(this._authFacade, this._firestoreFacade) : super(SignUpFormState.initial());
  SignUpFormCubit() : super(SignUpFormState.initial()){
    _authFacade = getIt<IAuthFacade>();
  }

  @override
  Future<void> close() async {
    await _phoneNumberSignInSubscription?.cancel();

    return super.close();
  }

  void emailChanged({
    required String emailAddress,
  }){
    emit(state.copyWith(emailAddress: EmailAddress(emailAddress)));
  }
  void firstNameChanged({
    required String firstName
  }){
    emit(state.copyWith(
          firstName: UserName(firstName)));
  }
  void lastNameChanged({
    required String lastName
  }){emit(state.copyWith(
          lastName: UserName(lastName)));}
  void phoneNumberChanged({
    required String phoneNumber,
  }){
    emit(state.copyWith(phoneNumber: Phone(phoneNumber)));
  }
  void passwordChanged({
    required String password
  }){
    emit(state.copyWith(
          password: Password(password)));
  }
  void smsCodeChanged({
    required String smsCode
  }){
    emit(state.copyWith(smsCode: smsCode));
  }
  void isObscureChanged(){
    final newScure = state.isObscure;
    emit(state.copyWith(isObscure: !newScure));
  }
  Future registerWithEmailAndPasswordpressed() async{
    Either<AuthFailure, Unit>? failureOrSuccess;
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    final isFirstNameValid = state.firstName.isValid();
    final isLastNameValid = state.lastName.isValid();
    final isPhoneValid = state.phoneNumber.isValid();
    final isSMSValid = state.smsCode.isNotEmpty;

    if (isEmailValid && isPasswordValid && isFirstNameValid && isLastNameValid & isPhoneValid&& isSMSValid) {
      emit(state.copyWith(
          isSubmitting: true, 
          authFailureOrSuccessOption: none()
          ));

      failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
          emailAddress: state.emailAddress, password: state.password, phone: state.phoneNumber, firstName: state.firstName, lastName: state.lastName);
    }

    failureOrSuccess!.fold((l) => null, (r) {
      
    });



    emit(state.copyWith(
        showErrorMessages: true,
        isSubmitting: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
        verificationIdOption: some(unit.toString())));
  }
  void verifyOTPpressed(){
    state.verificationIdOption.fold(
      () {
        //Verification id does not exist. This should not happen.
      },
      (String verificationId) async {
        emit(
          state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          ),
        );
        final Either<AuthFailure, Unit> failureOrSuccess =
            await _authFacade.verifySmsCode(
                smsCode: state.smsCode, verificationId: verificationId);
                emit(state.copyWith(
                  authFailureOrSuccessOption: optionOf(failureOrSuccess),
                  isSubmitting: false
                ));
        // failureOrSuccess.fold(
        //   (AuthFailure failure) {
        //     emit(
        //       state.copyWith(authFailureOrSuccessOption: some(failure), isSubmitting: false),
        //     );
        //   },
        //   (_) {
        //     emit(state.copyWith(isSubmitting: false));
        //     // Verification completed successfully case.
        //     // Bloc Listener in the UI should listen to Auth Listener State and if user is authenticated and not anonymous, we should take them to Registration page or Feed Page.
        //   },
        // );
      },
    );
  }

  void reset(){
    emit(
      state.copyWith(
        authFailureOrSuccessOption: none(),
        verificationIdOption: none(),
        isSubmitting: false,
      ),
    );
  }
}
