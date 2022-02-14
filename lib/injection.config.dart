// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_cubit.dart' as _i3;
import 'application/auth/reset_password_form/reset_password_bloc.dart' as _i14;
import 'application/auth/sign_in_form/email/sign_in_form_email_cubit.dart'
    as _i9;
import 'application/auth/sign_in_form/phone/sign_in_form_phone_cubit.dart'
    as _i10;
import 'application/auth/sign_up_form/sign_up_form_cubit.dart' as _i11;
import 'domain/auth/i_auth_facade.dart' as _i12;
import 'domain/user/i_user_repository.dart' as _i7;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i13;
import 'infrastructure/core/firebase_injectible.dart' as _i15;
import 'infrastructure/user/user_repository.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.AuthCubit>(() => _i3.AuthCubit());
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i6.FirebaseStorage>(() => firebaseInjectableModule.storage);
  gh.lazySingleton<_i7.IUserRepository>(() => _i8.UserRepository(
      get<_i5.FirebaseFirestore>(), get<_i6.FirebaseStorage>()));
  gh.factory<_i9.SignInFormEmailCubit>(() => _i9.SignInFormEmailCubit());
  gh.factory<_i10.SignInFormPhoneCubit>(() => _i10.SignInFormPhoneCubit());
  gh.factory<_i11.SignUpFormCubit>(() => _i11.SignUpFormCubit());
  gh.lazySingleton<_i12.IAuthFacade>(() => _i13.FirebaseAuthFacade(
      firebaseAuth: get<_i4.FirebaseAuth>(),
      iUserRepository: get<_i7.IUserRepository>()));
  gh.factory<_i14.ResetPasswordBloc>(
      () => _i14.ResetPasswordBloc(get<_i12.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i15.FirebaseInjectableModule {}
