import 'package:bloc/bloc.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  AuthBloc(this._authFacade) : super(AuthState.initial()) {
    on<AuthEvent>(_authEvent);
  }

  _authEvent(AuthEvent event, Emitter<AuthState> emit) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await _authFacade.getSignedInUser();
        yield userOption.fold(
          () => const AuthState.unAuthenticated(),
          (_) => const AuthState.authenticated()
        );
      },
      signedOut: (e) async* {
        await _authFacade.signOut();
        yield const AuthState.unAuthenticated();
      },
    );
  }
}
