import 'package:bloc/bloc.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'reset_password_state.dart';
part 'reset_password_cubit.freezed.dart';

@injectable
class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  final IAuthFacade authFacade;
  ResetPasswordCubit(this.authFacade) : super(ResetPasswordState.initial());
  void emailAddressChanged({required String emailAddress}){
    emit(state.copyWith(emailAddress: EmailAddress(emailAddress)));
  }
  void requestReset() async {
    emit(state.copyWith(isSubmitting: true, failure: "",success: ""));
    final emailAddress = state.emailAddress;
    final reset = await authFacade.resetPassword(emailAddress: emailAddress);
    reset.fold((failure) {
      emit(state.copyWith(isSubmitting: false,failure: failure));
    }, (success) {
      emit(state.copyWith(isSubmitting: false,success: success));
    });
  }
}
