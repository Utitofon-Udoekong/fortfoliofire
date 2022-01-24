part of 'reset_password_bloc.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState({
    required EmailAddress emailAddress,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption
  }) = _ResetPasswordState;

  factory ResetPasswordState.initial() => ResetPasswordState(
    emailAddress: EmailAddress(''),
    showErrorMessages: false,
    isSubmitting: false,
    authFailureOrSuccessOption: none(), 
  );
}
