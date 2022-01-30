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
import 'application/auth/reset_password_form/reset_password_bloc.dart' as _i9;
import 'application/auth/sign_in_form/email/sign_in_form_email_bloc.dart'
    as _i10;
import 'application/auth/sign_in_form/phone/sign_in_form_phone_cubit.dart'
    as _i11;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i12;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'infrastructure/core/firebase_injectible.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i7.IAuthFacade>(
      () => _i8.FirebaseAuthFacade(firebaseAuth: get<_i4.FirebaseAuth>()));
  gh.factory<_i9.ResetPasswordBloc>(
      () => _i9.ResetPasswordBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i10.SignInFormEmailBloc>(
      () => _i10.SignInFormEmailBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i11.SignInFormPhoneCubit>(() => _i11.SignInFormPhoneCubit());
  gh.factory<_i12.SignUpFormBloc>(
      () => _i12.SignUpFormBloc(get<_i7.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i13.FirebaseInjectableModule {}
