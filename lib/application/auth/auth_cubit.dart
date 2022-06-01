import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fortfolio/domain/auth/auth_user_model.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/infrastructure/auth/dto/price/dollar_price_dto.dart';
import 'package:fortfolio/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@lazySingleton
class AuthCubit extends Cubit<AuthState> {
  late final IAuthFacade authFacade;
  late final IFirestoreFacade firestoreFacade;

  ///The stream subscription for listening to the auth state changes
  StreamSubscription<AuthUserModel>? _authUserSubscription;
  StreamSubscription<AuthUserModel>? _databaseUserSubscription;
  StreamSubscription<QuerySnapshot>? _dollarToNairaSubscription;
  AuthCubit() : super(AuthState.empty()) {
    authFacade = getIt<IAuthFacade>();
    firestoreFacade = getIt<IFirestoreFacade>();
    _authUserSubscription =
        authFacade.authStateChanges.listen(listenAuthStateChangesStream);
  }
  @override
  Future<void> close() async {
    await _authUserSubscription?.cancel();
    await _databaseUserSubscription?.cancel();
    await _dollarToNairaSubscription?.cancel();
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
    listenDollarStream();
  }

  void listenDollarStream() {
    _dollarToNairaSubscription = firestoreFacade.getDollarPrice().listen((event) {
      for (var change in event.docChanges) {
        final docData = DollarPriceDTO.fromFirestore(change.doc).toDomain();
        switch (change.type) {
          case DocumentChangeType.added:
            emit(state.copyWith(dollarToNaira: docData.dollarToNaira));
            break;
          case DocumentChangeType.modified:
            emit(state.copyWith(dollarToNaira: docData.dollarToNaira));
            break;
          default:
            emit(state.copyWith(dollarToNaira: 500));
        }
      }
    },onError: (error) => print("Listen failed: $error"));
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