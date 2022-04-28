import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fortfolio/domain/auth/auth_user_model.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';


@lazySingleton
class AuthCubit extends Cubit<AuthState> {
  late final IAuthFacade _authFacade;

  ///The stream subscription for listening to the auth state changes
  late StreamSubscription<AuthUserModel>? _authUserSubscription;
  AuthCubit() : super(AuthState.empty()) {
    _authFacade = getIt<IAuthFacade>();
    _authUserSubscription =
        _authFacade.authStateChanges.listen(listenAuthStateChangesStream);
  }
  @override
  Future<void> close() async {
    await _authUserSubscription?.cancel();
    super.close();
  }

  // getUser() async {
  //   final userId = _authFacade.getUserId();
  //   if(userId.isNotEmpty){
  //     final userModel = await _authFacade.getDatabaseUser(id: userId);
  //     userModel.fold(() => null, (authUser) {
  //       listenAuthStateChangesStream(authUser);
  //       loggedInChanged(loggedIn: true);
  //     });
  //   }else{
  //     loggedInChanged(loggedIn: false);
  //   }
  // }

  Future<void> listenAuthStateChangesStream(AuthUserModel authUser) async {
    emit(
      state.copyWith(
        userModel: authUser,
        isUserCheckedFromAuthFacade: true,
      ),
    );
  }

  void loggedInChanged({required bool loggedIn}){
    emit(state.copyWith(isloggedIn: loggedIn));
  }

  Future<void> signOut() async {
    await _authFacade.signOut();
  }
}

// @lazySingleton
// class AuthCubit extends Cubit<AuthState> {
//   final IAuthFacade _authFacade;
//   ///The stream subscription for listening to the auth state changes
//   StreamSubscription<AuthUserModel>? _authUserSubscription;
//   StreamSubscription<AuthUserModel>? _databaseUserSubscription;
//   AuthCubit(this._authFacade) : super(AuthState.empty()){
//     _authUserSubscription = _authFacade.authStateChanges.listen(_listenToAuthStateChangesStream);
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
//           _authFacade.databaseUserChanges(userId: state.userModel.id).listen(
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

//         await _authFacade.signInAnonymously();

//         emit(state.copyWith(
//             isAnonymousLoginInProgress: false,
//             isUserCheckedFromAuthService: true));
//       }
//     } else {
//       final dbUserOption = await _authFacade.getDatabaseUser(id: authUser.id);
//       dbUserOption.match(
//         (dbUser) async {
//           emit(state.copyWith(
//               userModel: dbUser, isUserCheckedFromAuthService: true));
//           if (dbUser.firstName == "") {
//             await _authFacade.saveUserToDatabase(
//                 userModel:
//                     AuthUserModel.empty().copyWith(id: state.userModel.id));
//           }
//         },
//         () async {
//           emit(state.copyWith(
//               userModel: authUser, isUserCheckedFromAuthService: true));
//           await _authFacade.saveUserToDatabase(
//               userModel:
//                   AuthUserModel.empty().copyWith(id: state.userModel.id));
//           log("authhhhh no db user is found ${authUser.id}");
//         },
//       );

//       await _startDatabaseUserSubscriptionIfPossible();
//     }
//   }

//   Future<void> signOut() async {
//     await _authFacade.signOut();
//   }
// }
