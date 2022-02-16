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
import 'application/auth/reset_password_form/reset_password_bloc.dart' as _i19;
import 'application/auth/sign_in_form/email/sign_in_form_email_cubit.dart'
    as _i12;
import 'application/auth/sign_in_form/phone/sign_in_form_phone_cubit.dart'
    as _i13;
import 'application/auth/sign_up_form/sign_up_form_cubit.dart' as _i14;
import 'domain/auth/i_auth_facade.dart' as _i17;
import 'domain/user/i_user_repository.dart' as _i7;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i18;
import 'infrastructure/core/firebase_injectible.dart' as _i20;
import 'infrastructure/user/user_repository.dart' as _i8;
import 'presentation/home/dashboard/screens/profile/cubit/profile_cubit.dart'
    as _i9;
import 'presentation/home/dashboard/screens/security/cubit/security_cubit.dart'
    as _i10;
import 'presentation/home/dashboard/screens/verification/bloc/upload_image_bloc.dart'
    as _i15;
import 'resources/auth_methods.dart' as _i11;
import 'resources/storage_methods.dart'
    as _i16; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i9.ProfileCubit>(() => _i9.ProfileCubit());
  gh.factory<_i10.SecurityCubit>(
      () => _i10.SecurityCubit(get<_i11.AuthMethods>()));
  gh.factory<_i12.SignInFormEmailCubit>(() => _i12.SignInFormEmailCubit());
  gh.factory<_i13.SignInFormPhoneCubit>(() => _i13.SignInFormPhoneCubit());
  gh.factory<_i14.SignUpFormCubit>(() => _i14.SignUpFormCubit());
  gh.factory<_i15.UploadImageBloc>(
      () => _i15.UploadImageBloc(get<_i16.StorageMethods>()));
  gh.lazySingleton<_i17.IAuthFacade>(() => _i18.FirebaseAuthFacade(
      firebaseAuth: get<_i4.FirebaseAuth>(),
      iUserRepository: get<_i7.IUserRepository>()));
  gh.factory<_i19.ResetPasswordBloc>(
      () => _i19.ResetPasswordBloc(get<_i17.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i20.FirebaseInjectableModule {}
