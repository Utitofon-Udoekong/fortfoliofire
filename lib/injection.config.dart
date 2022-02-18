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
import 'application/auth/reset_password_form/reset_password_bloc.dart' as _i24;
import 'application/auth/sign_in_form/email/sign_in_form_email_cubit.dart'
    as _i17;
import 'application/auth/sign_in_form/phone/sign_in_form_phone_cubit.dart'
    as _i18;
import 'application/auth/sign_up_form/sign_up_form_cubit.dart' as _i19;
import 'domain/auth/i_auth_facade.dart' as _i22;
import 'domain/user/i_user_repository.dart' as _i10;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i23;
import 'infrastructure/core/firebase_injectible.dart' as _i25;
import 'infrastructure/user/user_repository.dart' as _i11;
import 'presentation/home/dashboard/screens/payment_method/bank/cubit/bank_address_cubit.dart'
    as _i4;
import 'presentation/home/dashboard/screens/payment_method/crypto/bloc/crypto_wallet_bloc.dart'
    as _i6;
import 'presentation/home/dashboard/screens/profile/cubit/profile_cubit.dart'
    as _i15;
import 'presentation/home/dashboard/screens/security/cubit/security_cubit.dart'
    as _i16;
import 'presentation/home/dashboard/screens/verification/bloc/upload_image_bloc.dart'
    as _i20;
import 'presentation/home/investment/cubit/investment_cubit.dart' as _i12;
import 'presentation/home/investment/type/cubit/exchange_type_cubit.dart'
    as _i13;
import 'resources/auth_methods.dart' as _i14;
import 'resources/firestore_methods.dart' as _i5;
import 'resources/storage_methods.dart'
    as _i21; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i12.InvestmentCubit>(() => _i12.InvestmentCubit(
      get<_i5.FireStoreMethods>(),
      get<_i13.ExchangeTypeCubit>(),
      get<_i14.AuthMethods>()));
  gh.factory<_i15.ProfileCubit>(() => _i15.ProfileCubit());
  gh.factory<_i16.SecurityCubit>(
      () => _i16.SecurityCubit(get<_i14.AuthMethods>()));
  gh.factory<_i17.SignInFormEmailCubit>(() => _i17.SignInFormEmailCubit());
  gh.factory<_i18.SignInFormPhoneCubit>(() => _i18.SignInFormPhoneCubit());
  gh.factory<_i19.SignUpFormCubit>(() => _i19.SignUpFormCubit());
  gh.factory<_i20.UploadImageBloc>(
      () => _i20.UploadImageBloc(get<_i21.StorageMethods>()));
  gh.lazySingleton<_i22.IAuthFacade>(() => _i23.FirebaseAuthFacade(
      firebaseAuth: get<_i7.FirebaseAuth>(),
      iUserRepository: get<_i10.IUserRepository>()));
  gh.factory<_i24.ResetPasswordBloc>(
      () => _i24.ResetPasswordBloc(get<_i22.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i25.FirebaseInjectableModule {}
