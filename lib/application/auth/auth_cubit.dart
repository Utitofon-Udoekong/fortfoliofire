import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fortfolio/domain/auth/auth_user_model.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:fpdart/fpdart.dart';
// import 'package:dartz/dartz.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@lazySingleton
class AuthCubit extends Cubit<AuthState> {
  late final IAuthFacade authFacade;

  ///The stream subscription for listening to the auth state changes
  StreamSubscription<AuthUserModel>? _authUserSubscription;
  StreamSubscription<AuthUserModel>? _databaseUserSubscription;
  AuthCubit() : super(AuthState.empty()) {
    authFacade = getIt<IAuthFacade>();
    _authUserSubscription =
        authFacade.authStateChanges.listen(listenAuthStateChangesStream);
  }
  @override
  Future<void> close() async {
    await _authUserSubscription?.cancel();
    await _databaseUserSubscription?.cancel();
    super.close();
  }

  Future<void> startDatabaseUserSubscriptionIfPossible() async {
    await _databaseUserSubscription?.cancel();

    if (state.userModel != AuthUserModel.empty()) {
      _databaseUserSubscription =
          authFacade.databaseUserChanges(userId: state.userModel.id).listen(
        (AuthUserModel databaseUser) {
          emit(
            state.copyWith(userModel: databaseUser),
          );
        },
      );
    }
  }

  Future<void> listenAuthStateChangesStream(AuthUserModel authUser) async {
    if(authUser != AuthUserModel.empty()){
      emit(
        state.copyWith(
          userModel: authUser,
          isUserCheckedFromAuthFacade: true,
        ),
      );
    }else{
      final dbUserOption = await authFacade.getDatabaseUser(id: authUser.id);
      dbUserOption.fold(() => null, (authUser) {
        emit(
          state.copyWith(
            userModel: authUser,
            isUserCheckedFromAuthFacade: true,
          ),
        );
      });
    }
    await startDatabaseUserSubscriptionIfPossible();
  }

  Future<void> signOut() async {
    emit(state.copyWith(isUserCheckedFromAuthFacade: false));
    await authFacade.signOut();
  }
}

// @lazySingleton
// class AuthCubit extends Cubit<AuthState> {
//   final IAuthFacade authFacade;
//   ///The stream subscription for listening to the auth state changes
//   StreamSubscription<AuthUserModel>? _authUserSubscription;
//   StreamSubscription<AuthUserModel>? _databaseUserSubscription;
//   AuthCubit(this.authFacade) : super(AuthState.empty()){
//     _authUserSubscription = authFacade.authStateChanges.listen(_listenToAuthStateChangesStream);
//   }

//   @override
//   Future<void> close() async {
//     await _authUserSubscription?.cancel();
//     await _databaseUserSubscription?.cancel();
//     super.close();
//   }

//   Future<void> _startDatabaseUserSubscriptionIfPossible() async {
//     await _databaseUserSubscription?.cancel();

//     if (state.userModel != AuthUserModel.empty()) {
//       _databaseUserSubscription =
//           authFacade.databaseUserChanges(userId: state.userModel.id).listen(
//         (AuthUserModel databaseUser) {
//           emit(
//             state.copyWith(userModel: databaseUser),
//           );
//         },
//       );
//     }
//   }

//   Future<void> _listenToAuthStateChangesStream(AuthUserModel authUser) async {
//     print("authUser $authUser");
//     if (authUser == AuthUserModel.empty()) {
//       emit(state.copyWith(
//         isUserCheckedFromAuthService: true,
//       ));
//       if (!state.isAnonymousLoginInProgress) {
//         emit(state.copyWith(
//             isAnonymousLoginInProgress: true,
//             isUserCheckedFromAuthService: true));

//         await authFacade.signInAnonymously();

//         emit(state.copyWith(
//             isAnonymousLoginInProgress: false,
//             isUserCheckedFromAuthService: true));
//       }
//     } else {
//       final dbUserOption = await authFacade.getDatabaseUser(id: authUser.id);
//       dbUserOption.match(
//         (dbUser) async {
//           emit(state.copyWith(
//               userModel: dbUser, isUserCheckedFromAuthService: true));
//           if (dbUser.firstName == "") {
//             await authFacade.saveUserToDatabase(
//                 userModel:
//                     AuthUserModel.empty().copyWith(id: state.userModel.id));
//           }
//         },
//         () async {
//           emit(state.copyWith(
//               userModel: authUser, isUserCheckedFromAuthService: true));
//           await authFacade.saveUserToDatabase(
//               userModel:
//                   AuthUserModel.empty().copyWith(id: state.userModel.id));
//           log("authhhhh no db user is found ${authUser.id}");
//         },
//       );

//       await _startDatabaseUserSubscriptionIfPossible();
//     }
//   }

//   Future<void> signOut() async {
//     await authFacade.signOut();
//   }
// }
