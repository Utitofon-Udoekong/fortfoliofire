import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/auth/auth_failure.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'security_state.dart';
part 'security_cubit.freezed.dart';

@injectable
class SecurityCubit extends Cubit<SecurityState> {
  final IAuthFacade authFacade;
  SecurityCubit(this.authFacade) : super(SecurityState.empty());

  void emailAddressChanged({required String emailAddress}){
    emit(state.copyWith(emailAddress: emailAddress));
  }
  void requestReset() async {
    
    final emailAddress = state.emailAddress;
    final reset = await authFacade.resetPassword(emailAddress: EmailAddress(emailAddress));
    reset.fold((failure) {
      emit(state.copyWith(showSnackbar: true, failure: failure));
    }, (success) {
      emit(state.copyWith(showSnackbar: true, success: success));
    });
  }
}
