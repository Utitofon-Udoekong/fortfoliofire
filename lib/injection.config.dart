// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:firebase_storage/firebase_storage.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/app_life_cycle/app_life_cycle_cubit.dart' as _i3;
import 'application/auth/auth_cubit.dart' as _i4;
import 'application/auth/reset_password_form/reset_password_bloc.dart' as _i16;
import 'application/auth/sign_in_form/email/sign_in_form_email_cubit.dart'
    as _i18;
import 'application/auth/sign_in_form/phone/sign_in_form_phone_cubit.dart'
    as _i19;
import 'application/auth/sign_up_form/sign_up_form_cubit.dart' as _i20;
import 'domain/auth/i_auth_facade.dart' as _i9;
import 'domain/auth/i_firestore_facade.dart' as _i11;
import 'domain/auth/i_storage_facade.dart' as _i13;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i10;
import 'infrastructure/auth/firebase_firestore_facade.dart' as _i12;
import 'infrastructure/auth/firebase_storage_facade.dart' as _i14;
import 'infrastructure/core/firebase_injectible.dart' as _i25;
import 'presentation/home/dashboard/screens/payment_method/bank/cubit/bank_address_cubit.dart'
    as _i23;
import 'presentation/home/dashboard/screens/payment_method/crypto/bloc/crypto_wallet_bloc.dart'
    as _i24;
import 'presentation/home/dashboard/screens/security/cubit/security_cubit.dart'
    as _i17;
import 'presentation/home/dashboard/screens/verification/bloc/upload_image_bloc.dart'
    as _i21;
import 'presentation/home/investment/cubit/investment_cubit.dart' as _i15;
import 'presentation/home/investment/type/cubit/exchange_type_cubit.dart'
    as _i5;
import 'presentation/home/wallet/cubit/wallet_cubit.dart'
    as _i22; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.singleton<_i3.AppLifeCycleCubit>(_i3.AppLifeCycleCubit());
  gh.lazySingleton<_i4.AuthCubit>(() => _i4.AuthCubit());
  gh.factory<_i5.ExchangeTypeCubit>(() => _i5.ExchangeTypeCubit());
  gh.lazySingleton<_i6.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i7.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i8.FirebaseStorage>(() => firebaseInjectableModule.storage);
  gh.lazySingleton<_i9.IAuthFacade>(() => _i10.FirebaseAuthFacade(
      firestore: get<_i7.FirebaseFirestore>(),
      firebaseAuth: get<_i6.FirebaseAuth>()));
  gh.lazySingleton<_i11.IFirestoreFacade>(() => _i12.FirebaseFirestoreFacade(
      get<_i7.FirebaseFirestore>(), get<_i6.FirebaseAuth>()));
  gh.lazySingleton<_i13.IStorageFacade>(() => _i14.FirebaseStorageFacade(
      get<_i6.FirebaseAuth>(), get<_i8.FirebaseStorage>()));
  gh.factory<_i15.InvestmentCubit>(() => _i15.InvestmentCubit(
      get<_i5.ExchangeTypeCubit>(),
      get<_i9.IAuthFacade>(),
      get<_i11.IFirestoreFacade>()));
  gh.factory<_i16.ResetPasswordBloc>(
      () => _i16.ResetPasswordBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i17.SecurityCubit>(
      () => _i17.SecurityCubit(get<_i9.IAuthFacade>()));
  gh.factory<_i18.SignInFormEmailCubit>(() => _i18.SignInFormEmailCubit());
  gh.factory<_i19.SignInFormPhoneCubit>(() => _i19.SignInFormPhoneCubit());
  gh.factory<_i20.SignUpFormCubit>(() => _i20.SignUpFormCubit());
  gh.factory<_i21.UploadImageBloc>(
      () => _i21.UploadImageBloc(get<_i13.IStorageFacade>()));
  gh.factory<_i22.WalletCubit>(
      () => _i22.WalletCubit(get<_i11.IFirestoreFacade>()));
  gh.factory<_i23.BankAddressCubit>(
      () => _i23.BankAddressCubit(get<_i11.IFirestoreFacade>()));
  gh.factory<_i24.CryptoWalletBloc>(
      () => _i24.CryptoWalletBloc(get<_i11.IFirestoreFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i25.FirebaseInjectableModule {}
