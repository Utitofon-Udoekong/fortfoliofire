import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/auth/auth_failure.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'reset_password_event.dart';
part 'reset_password_state.dart';
part 'reset_password_bloc.freezed.dart';

@injectable
class ResetPasswordBloc extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  final IAuthFacade _authFacade;
  ResetPasswordBloc(this._authFacade) : super(ResetPasswordState.initial()) {
    on<ResetPasswordEvent>(_resetPasswordEvent);
  }

  _resetPasswordEvent(
      ResetPasswordEvent event, Emitter<ResetPasswordState> emit) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailString),
          authFailureOrSuccessOption: none()
        );
      },
      resetPasswordPressed: (e) async* {
        yield _performcall(_authFacade.resetPassword);
      }
    );
  }

  Stream<ResetPasswordState> _performcall(Future<Either<AuthFailure, Unit>> Function({required EmailAddress emailAddress}) actionCall) async* {
    late Either<AuthFailure, Unit> failureOrSuccess;
    final isEmailValid = state.emailAddress.isValid();
    if(isEmailValid){
      yield state.copyWith(
          isSubmitting: true, authFailureOrSuccessOption: none());
      failureOrSuccess = await actionCall(emailAddress: state.emailAddress);
    }
    yield state.copyWith(
        showErrorMessages: true,
        isSubmitting: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess));
  }
}
