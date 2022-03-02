import 'package:bloc/bloc.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'security_state.dart';
part 'security_cubit.freezed.dart';

@injectable
class SecurityCubit extends Cubit<SecurityState> {
  final IAuthFacade authFacade;
  SecurityCubit(this.authFacade) : super(const SecurityState.initial());

  void requestReset({
    required String emailAddress
  }){
    authFacade.resetPassword(emailAddress: EmailAddress(emailAddress));
  }
}
