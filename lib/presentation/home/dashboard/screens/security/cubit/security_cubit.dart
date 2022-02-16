import 'package:bloc/bloc.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:fortfolio/resources/auth_methods.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'security_state.dart';
part 'security_cubit.freezed.dart';

@injectable
class SecurityCubit extends Cubit<SecurityState> {
  final AuthMethods authMethods;
  SecurityCubit(this.authMethods) : super(const SecurityState.initial());

  void requestReset({
    required String emailAddress
  }){
    authMethods.resetPassword(emailAddress: EmailAddress(emailAddress));
  }
}
