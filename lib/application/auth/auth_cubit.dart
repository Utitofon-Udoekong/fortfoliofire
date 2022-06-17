import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:fortfolio/domain/auth/auth_user_model.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/infrastructure/auth/dto/price/dollar_price_dto.dart';
import 'package:fortfolio/injection.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

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

  Future<void> listenAuthStateChangesStream(AuthUserModel authUser) async {
    if(authUser != AuthUserModel.empty()){
      emit(
        state.copyWith(
          userModel: authUser,
          isUserCheckedFromAuthFacade: true,
        ),
      );
      await startDatabaseUserSubscriptionIfPossible();
    }else{
        emit(
          state.copyWith(
            userModel: authUser,
            isUserCheckedFromAuthFacade: false,
          ),
        );
    }
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

  Future<void> signOut() async {
    emit(state.copyWith(isUserCheckedFromAuthFacade: false));
    await authFacade.signOut();
  }
}

// Execution failed for task ':app:mergeLibDexDebug'.
// > Could not resolve all files for configuration ':app:debugRuntimeClasspath'.
//    > Failed to transform classes.jar (project :cloud_firestore) to match attributes {artifactType=android-dex, asm-transformed-variant=NONE, com.android.build.api.attributes.AgpVersionAttr=7.1.2, com.android.build.api.attributes.BuildTypeAttr=debug, com.android.build.gradle.internal.attributes.VariantAttr=debug, dexing-enable-desugaring=true, dexing-is-debuggable=true, dexing-min-sdk=23, org.gradle.libraryelements=jar, org.gradle.usage=java-runtime}.
//       > Execution failed for DexingWithClasspathTransform: C:\Users\MrsNsikak\Videos\MEmu Video\test\fortfolio\build\cloud_firestore\intermediates\runtime_library_classes_jar\debug\classes.jar.
//          > Cannot create directory C:\Users\MrsNsikak\Videos\MEmu Video\test\fortfolio\build\cloud_firestore\.transforms\8669c97e50a6908abd64c185ae9dec4a\transformed\classes
