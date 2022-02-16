import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fortfolio/domain/auth/auth_user_model.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/user/user.dart';
import 'package:fortfolio/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@lazySingleton
class AuthCubit extends Cubit<AuthState> {
  late final IAuthFacade _authFacade;
  ///The stream subscription for listening to the auth state changes
  late StreamSubscription<AppUser>? _authUserSubscription;
  AuthCubit() : super(AuthState.empty()){
    _authFacade = getIt<IAuthFacade>();
    _authUserSubscription = _authFacade.authStateChanges.listen(_listenToAuthStateChangesStream);
  }

  @override
  Future<void> close() async {
    await _authUserSubscription?.cancel();
    super.close();
  }

  Future<void> _listenToAuthStateChangesStream(AppUser authUser) async {
    emit(
      state.copyWith(
        userModel: authUser,
        isUserCheckedFromAuthService: true,
      ),
    );
  }

  Future<void> signOut() async {
    await _authFacade.signOut();
  }
}
