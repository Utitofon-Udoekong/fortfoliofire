part of 'reset_password_cubit.dart';


@freezed
class ResetPasswordState with _$ResetPasswordState {
  const ResetPasswordState._();
  const factory ResetPasswordState({
    required EmailAddress emailAddress,
    required bool isSubmitting,
    required String failure,
    required String success,
  }) = _ResetPasswordState;
  factory ResetPasswordState.initial() => ResetPasswordState(
    emailAddress: EmailAddress(''),
    isSubmitting: false,
    failure: "",
    success: ""
  );
}
