// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_storage/firebase_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_cubit.dart' as _i3;
import 'application/auth/reset_password_form/reset_password_bloc.dart' as _i15;
import 'application/auth/sign_in_form/email/sign_in_form_email_cubit.dart'
    as _i17;
import 'application/auth/sign_in_form/phone/sign_in_form_phone_cubit.dart'
    as _i18;
import 'application/auth/sign_up_form/sign_up_form_cubit.dart' as _i19;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/auth/i_firestore_facade.dart' as _i10;
import 'domain/auth/i_storage_facade.dart' as _i12;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/auth/firebase_firestore_facade.dart' as _i11;
import 'infrastructure/auth/firebase_storage_facade.dart' as _i13;
import 'infrastructure/core/firebase_injectible.dart' as _i24;
import 'presentation/home/dashboard/screens/payment_method/bank/cubit/bank_address_cubit.dart'
    as _i22;
import 'presentation/home/dashboard/screens/payment_method/crypto/bloc/crypto_wallet_bloc.dart'
    as _i23;
import 'presentation/home/dashboard/screens/security/cubit/security_cubit.dart'
    as _i16;
import 'presentation/home/dashboard/screens/verification/bloc/upload_image_bloc.dart'
    as _i20;
import 'presentation/home/investment/cubit/investment_cubit.dart' as _i14;
import 'presentation/home/investment/type/cubit/exchange_type_cubit.dart'
    as _i4;
import 'presentation/home/wallet/cubit/wallet_cubit.dart'
    as _i21; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.AuthCubit>(() => _i3.AuthCubit());
  gh.factory<_i4.ExchangeTypeCubit>(() => _i4.ExchangeTypeCubit());
  gh.lazySingleton<_i5.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i6.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i7.FirebaseStorage>(() => firebaseInjectableModule.storage);
  gh.lazySingleton<_i8.IAuthFacade>(() => _i9.FirebaseAuthFacade(
      firestore: get<_i6.FirebaseFirestore>(),
      firebaseAuth: get<_i5.FirebaseAuth>()));
  gh.lazySingleton<_i10.IFirestoreFacade>(() => _i11.FirebaseFirestoreFacade(
      get<_i6.FirebaseFirestore>(), get<_i5.FirebaseAuth>()));
  gh.lazySingleton<_i12.IStorageFacade>(() => _i13.FirebaseStorageFacade(
      get<_i5.FirebaseAuth>(), get<_i7.FirebaseStorage>()));
  gh.factory<_i14.InvestmentCubit>(() => _i14.InvestmentCubit(
      get<_i4.ExchangeTypeCubit>(),
      get<_i8.IAuthFacade>(),
      get<_i10.IFirestoreFacade>()));
  gh.factory<_i15.ResetPasswordBloc>(
      () => _i15.ResetPasswordBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i16.SecurityCubit>(
      () => _i16.SecurityCubit(get<_i8.IAuthFacade>()));
  gh.factory<_i17.SignInFormEmailCubit>(() => _i17.SignInFormEmailCubit());
  gh.factory<_i18.SignInFormPhoneCubit>(() => _i18.SignInFormPhoneCubit());
  gh.factory<_i19.SignUpFormCubit>(() => _i19.SignUpFormCubit());
  gh.factory<_i20.UploadImageBloc>(
      () => _i20.UploadImageBloc(get<_i12.IStorageFacade>()));
  gh.factory<_i21.WalletCubit>(() =>
      _i21.WalletCubit(get<_i10.IFirestoreFacade>(), get<_i8.IAuthFacade>()));
  gh.factory<_i22.BankAddressCubit>(
      () => _i22.BankAddressCubit(get<_i10.IFirestoreFacade>()));
  gh.factory<_i23.CryptoWalletBloc>(
      () => _i23.CryptoWalletBloc(get<_i10.IFirestoreFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i24.FirebaseInjectableModule {}
