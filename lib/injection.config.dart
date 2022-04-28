// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:cloud_functions/cloud_functions.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_cubit.dart' as _i3;
import 'application/auth/reset_password_form/reset_password_cubit.dart' as _i19;
import 'application/auth/sign_in_form/email/sign_in_form_email_cubit.dart'
    as _i21;
import 'application/auth/sign_in_form/phone/sign_in_form_phone_cubit.dart'
    as _i22;
import 'application/auth/sign_up_form/email/sign_up_form_cubit.dart' as _i23;
import 'application/auth/sign_up_form/phone/sign_up_form_phone_cubit.dart'
    as _i24;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/auth/i_firestore_facade.dart' as _i10;
import 'domain/auth/i_functions_facade.dart' as _i12;
import 'domain/auth/i_storage_facade.dart' as _i14;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/auth/firebase_firestore_facade.dart' as _i11;
import 'infrastructure/auth/firebase_functions_facade.dart' as _i13;
import 'infrastructure/auth/firebase_storage_facade.dart' as _i15;
import 'infrastructure/core/firebase_injectible.dart' as _i30;
import 'presentation/home/dashboard/cubit/dashboard_cubit.dart' as _i29;
import 'presentation/home/dashboard/screens/notifications/cubit/notification_cubit.dart'
    as _i17;
import 'presentation/home/dashboard/screens/payment_method/bank/cubit/bank_address_cubit.dart'
    as _i27;
import 'presentation/home/dashboard/screens/payment_method/crypto/cubit/crypto_wallet_cubit.dart'
    as _i28;
import 'presentation/home/dashboard/screens/profile/cubit/profile_cubit.dart'
    as _i18;
import 'presentation/home/dashboard/screens/security/cubit/security_cubit.dart'
    as _i20;
import 'presentation/home/dashboard/screens/verification/cubit/verification_cubit.dart'
    as _i25;
import 'presentation/home/investment/cubit/investment_cubit.dart' as _i16;
import 'presentation/home/wallet/cubit/wallet_cubit.dart'
    as _i26; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i6.FirebaseFunctions>(
      () => firebaseInjectableModule.functions);
  gh.lazySingleton<_i7.FirebaseStorage>(() => firebaseInjectableModule.storage);
  gh.lazySingleton<_i8.IAuthFacade>(() => _i9.FirebaseAuthFacade(
      firestore: get<_i5.FirebaseFirestore>(),
      firebaseAuth: get<_i4.FirebaseAuth>()));
  gh.lazySingleton<_i10.IFirestoreFacade>(() => _i11.FirebaseFirestoreFacade(
      get<_i5.FirebaseFirestore>(), get<_i4.FirebaseAuth>()));
  gh.lazySingleton<_i12.IFunctionsFacade>(() => _i13.FirebaseFunctionsFacade());
  gh.lazySingleton<_i14.IStorageFacade>(() => _i15.FirebaseStorageFacade(
      get<_i4.FirebaseAuth>(), get<_i7.FirebaseStorage>()));
  gh.factory<_i16.InvestmentCubit>(
      () => _i16.InvestmentCubit(get<_i10.IFirestoreFacade>()));
  gh.factory<_i17.NotificationCubit>(
      () => _i17.NotificationCubit(get<_i10.IFirestoreFacade>()));
  gh.factory<_i18.ProfileCubit>(
      () => _i18.ProfileCubit(get<_i8.IAuthFacade>()));
  gh.factory<_i19.ResetPasswordCubit>(
      () => _i19.ResetPasswordCubit(get<_i8.IAuthFacade>()));
  gh.factory<_i20.SecurityCubit>(
      () => _i20.SecurityCubit(get<_i8.IAuthFacade>()));
  gh.factory<_i21.SignInFormEmailCubit>(() =>
      _i21.SignInFormEmailCubit(get<_i8.IAuthFacade>(), get<_i3.AuthCubit>()));
  gh.factory<_i22.SignInFormPhoneCubit>(
      () => _i22.SignInFormPhoneCubit(get<_i3.AuthCubit>()));
  gh.factory<_i23.SignUpFormCubit>(
      () => _i23.SignUpFormCubit(get<_i8.IAuthFacade>()));
  gh.factory<_i24.SignUpFormPhoneCubit>(
      () => _i24.SignUpFormPhoneCubit(get<_i3.AuthCubit>()));
  gh.factory<_i25.VerificationCubit>(() => _i25.VerificationCubit(
      get<_i14.IStorageFacade>(),
      get<_i10.IFirestoreFacade>(),
      get<_i3.AuthCubit>()));
  gh.factory<_i26.WalletCubit>(
      () => _i26.WalletCubit(get<_i10.IFirestoreFacade>()));
  gh.factory<_i27.BankAddressCubit>(
      () => _i27.BankAddressCubit(get<_i10.IFirestoreFacade>()));
  gh.factory<_i28.CryptoWalletCubit>(
      () => _i28.CryptoWalletCubit(get<_i10.IFirestoreFacade>()));
  gh.factory<_i29.DashboardCubit>(
      () => _i29.DashboardCubit(get<_i14.IStorageFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i30.FirebaseInjectableModule {}
