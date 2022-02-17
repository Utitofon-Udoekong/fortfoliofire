// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i8;
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:firebase_storage/firebase_storage.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_cubit.dart' as _i3;
import 'application/auth/reset_password_form/reset_password_bloc.dart' as _i22;
import 'application/auth/sign_in_form/email/sign_in_form_email_cubit.dart'
    as _i15;
import 'application/auth/sign_in_form/phone/sign_in_form_phone_cubit.dart'
    as _i16;
import 'application/auth/sign_up_form/sign_up_form_cubit.dart' as _i17;
import 'domain/auth/i_auth_facade.dart' as _i20;
import 'domain/user/i_user_repository.dart' as _i10;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i21;
import 'infrastructure/core/firebase_injectible.dart' as _i23;
import 'infrastructure/user/user_repository.dart' as _i11;
import 'presentation/home/dashboard/screens/payment_method/bank/cubit/bank_address_cubit.dart'
    as _i4;
import 'presentation/home/dashboard/screens/payment_method/crypto/bloc/crypto_wallet_bloc.dart'
    as _i6;
import 'presentation/home/dashboard/screens/profile/cubit/profile_cubit.dart'
    as _i12;
import 'presentation/home/dashboard/screens/security/cubit/security_cubit.dart'
    as _i13;
import 'presentation/home/dashboard/screens/verification/bloc/upload_image_bloc.dart'
    as _i18;
import 'resources/auth_methods.dart' as _i14;
import 'resources/firestore_methods.dart' as _i5;
import 'resources/storage_methods.dart'
    as _i19; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.AuthCubit>(() => _i3.AuthCubit());
  gh.factory<_i4.BankAddressCubit>(
      () => _i4.BankAddressCubit(get<_i5.FireStoreMethods>()));
  gh.factory<_i6.CryptoWalletBloc>(
      () => _i6.CryptoWalletBloc(get<_i5.FireStoreMethods>()));
  gh.lazySingleton<_i7.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i8.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i9.FirebaseStorage>(() => firebaseInjectableModule.storage);
  gh.lazySingleton<_i10.IUserRepository>(() => _i11.UserRepository(
      get<_i8.FirebaseFirestore>(), get<_i9.FirebaseStorage>()));
  gh.factory<_i12.ProfileCubit>(() => _i12.ProfileCubit());
  gh.factory<_i13.SecurityCubit>(
      () => _i13.SecurityCubit(get<_i14.AuthMethods>()));
  gh.factory<_i15.SignInFormEmailCubit>(() => _i15.SignInFormEmailCubit());
  gh.factory<_i16.SignInFormPhoneCubit>(() => _i16.SignInFormPhoneCubit());
  gh.factory<_i17.SignUpFormCubit>(() => _i17.SignUpFormCubit());
  gh.factory<_i18.UploadImageBloc>(
      () => _i18.UploadImageBloc(get<_i19.StorageMethods>()));
  gh.lazySingleton<_i20.IAuthFacade>(() => _i21.FirebaseAuthFacade(
      firebaseAuth: get<_i7.FirebaseAuth>(),
      iUserRepository: get<_i10.IUserRepository>()));
  gh.factory<_i22.ResetPasswordBloc>(
      () => _i22.ResetPasswordBloc(get<_i20.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i23.FirebaseInjectableModule {}
