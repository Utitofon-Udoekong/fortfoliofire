// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i9;
import 'package:firebase_auth/firebase_auth.dart' as _i8;
import 'package:firebase_storage/firebase_storage.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/app_life_cycle/app_life_cycle_cubit.dart' as _i3;
import 'application/auth/auth_cubit.dart' as _i4;
import 'application/auth/reset_password_form/reset_password_bloc.dart' as _i18;
import 'application/auth/sign_in_form/email/sign_in_form_email_cubit.dart'
    as _i20;
import 'application/auth/sign_in_form/phone/sign_in_form_phone_cubit.dart'
    as _i21;
import 'application/auth/sign_up_form/sign_up_form_cubit.dart' as _i22;
import 'domain/auth/i_auth_facade.dart' as _i11;
import 'domain/auth/i_firestore_facade.dart' as _i13;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i12;
import 'infrastructure/auth/firebase_firestore_facade.dart' as _i14;
import 'infrastructure/core/firebase_injectible.dart' as _i26;
import 'presentation/home/dashboard/screens/payment_method/bank/cubit/bank_address_cubit.dart'
    as _i5;
import 'presentation/home/dashboard/screens/payment_method/crypto/bloc/crypto_wallet_bloc.dart'
    as _i7;
import 'presentation/home/dashboard/screens/security/cubit/security_cubit.dart'
    as _i19;
import 'presentation/home/dashboard/screens/verification/bloc/upload_image_bloc.dart'
    as _i23;
import 'presentation/home/investment/cubit/investment_cubit.dart' as _i15;
import 'presentation/home/investment/type/cubit/exchange_type_cubit.dart'
    as _i16;
import 'presentation/home/wallet/cubit/wallet_cubit.dart' as _i25;
import 'resources/auth_methods.dart' as _i17;
import 'resources/firestore_methods.dart' as _i6;
import 'resources/storage_methods.dart'
    as _i24; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.singleton<_i3.AppLifeCycleCubit>(_i3.AppLifeCycleCubit());
  gh.lazySingleton<_i4.AuthCubit>(() => _i4.AuthCubit());
  gh.factory<_i5.BankAddressCubit>(
      () => _i5.BankAddressCubit(get<_i6.FireStoreMethods>()));
  gh.factory<_i7.CryptoWalletBloc>(
      () => _i7.CryptoWalletBloc(get<_i6.FireStoreMethods>()));
  gh.lazySingleton<_i8.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i9.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i10.FirebaseStorage>(
      () => firebaseInjectableModule.storage);
  gh.lazySingleton<_i11.IAuthFacade>(() => _i12.FirebaseAuthFacade(
      firestore: get<_i9.FirebaseFirestore>(),
      firebaseAuth: get<_i8.FirebaseAuth>()));
  gh.lazySingleton<_i13.IFirestoreFacade>(() => _i14.FirebaseFirestoreFacade(
      get<_i9.FirebaseFirestore>(), get<_i8.FirebaseAuth>()));
  gh.factory<_i15.InvestmentCubit>(() => _i15.InvestmentCubit(
      get<_i6.FireStoreMethods>(),
      get<_i16.ExchangeTypeCubit>(),
      get<_i17.AuthMethods>()));
  gh.factory<_i18.ResetPasswordBloc>(
      () => _i18.ResetPasswordBloc(get<_i11.IAuthFacade>()));
  gh.factory<_i19.SecurityCubit>(
      () => _i19.SecurityCubit(get<_i17.AuthMethods>()));
  gh.factory<_i20.SignInFormEmailCubit>(() => _i20.SignInFormEmailCubit());
  gh.factory<_i21.SignInFormPhoneCubit>(() => _i21.SignInFormPhoneCubit());
  gh.factory<_i22.SignUpFormCubit>(() => _i22.SignUpFormCubit());
  gh.factory<_i23.UploadImageBloc>(
      () => _i23.UploadImageBloc(get<_i24.StorageMethods>()));
  gh.factory<_i25.WalletCubit>(
      () => _i25.WalletCubit(get<_i14.FirebaseFirestoreFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i26.FirebaseInjectableModule {}
