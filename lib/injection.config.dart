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
import 'application/auth/reset_password_form/reset_password_cubit.dart' as _i16;
import 'application/auth/sign_in_form/email/sign_in_form_email_cubit.dart'
    as _i18;
import 'application/auth/sign_in_form/phone/sign_in_form_phone_cubit.dart'
    as _i19;
import 'application/auth/sign_up_form/email/sign_up_form_cubit.dart' as _i20;
import 'application/auth/sign_up_form/phone/sign_up_form_phone_cubit.dart'
    as _i21;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/auth/i_firestore_facade.dart' as _i9;
import 'domain/auth/i_storage_facade.dart' as _i11;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'infrastructure/auth/firebase_firestore_facade.dart' as _i10;
import 'infrastructure/auth/firebase_storage_facade.dart' as _i12;
import 'infrastructure/core/firebase_injectible.dart' as _i27;
import 'presentation/home/dashboard/cubit/dashboard_cubit.dart' as _i26;
import 'presentation/home/dashboard/screens/notifications/cubit/notification_cubit.dart'
    as _i14;
import 'presentation/home/dashboard/screens/payment_method/bank/cubit/bank_address_cubit.dart'
    as _i24;
import 'presentation/home/dashboard/screens/payment_method/crypto/cubit/crypto_wallet_cubit.dart'
    as _i25;
import 'presentation/home/dashboard/screens/profile/cubit/profile_cubit.dart'
    as _i15;
import 'presentation/home/dashboard/screens/security/cubit/security_cubit.dart'
    as _i17;
import 'presentation/home/dashboard/screens/verification/cubit/verification_cubit.dart'
    as _i22;
import 'presentation/home/investment/cubit/investment_cubit.dart' as _i13;
import 'presentation/home/wallet/cubit/wallet_cubit.dart'
    as _i23; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i7.IAuthFacade>(() => _i8.FirebaseAuthFacade(
      firestore: get<_i5.FirebaseFirestore>(),
      firebaseAuth: get<_i4.FirebaseAuth>()));
  gh.lazySingleton<_i9.IFirestoreFacade>(() => _i10.FirebaseFirestoreFacade(
      get<_i5.FirebaseFirestore>(), get<_i4.FirebaseAuth>()));
  gh.lazySingleton<_i11.IStorageFacade>(() => _i12.FirebaseStorageFacade(
      get<_i4.FirebaseAuth>(), get<_i6.FirebaseStorage>()));
  gh.factory<_i13.InvestmentCubit>(
      () => _i13.InvestmentCubit(get<_i9.IFirestoreFacade>()));
  gh.factory<_i14.NotificationCubit>(
      () => _i14.NotificationCubit(get<_i9.IFirestoreFacade>()));
  gh.factory<_i15.ProfileCubit>(
      () => _i15.ProfileCubit(get<_i7.IAuthFacade>()));
  gh.factory<_i16.ResetPasswordCubit>(
      () => _i16.ResetPasswordCubit(get<_i7.IAuthFacade>()));
  gh.factory<_i17.SecurityCubit>(
      () => _i17.SecurityCubit(get<_i7.IAuthFacade>()));
  gh.factory<_i18.SignInFormEmailCubit>(() =>
      _i18.SignInFormEmailCubit(get<_i7.IAuthFacade>(), get<_i3.AuthCubit>()));
  gh.factory<_i19.SignInFormPhoneCubit>(
      () => _i19.SignInFormPhoneCubit(get<_i3.AuthCubit>()));
  gh.factory<_i20.SignUpFormCubit>(
      () => _i20.SignUpFormCubit(get<_i7.IAuthFacade>()));
  gh.factory<_i21.SignUpFormPhoneCubit>(
      () => _i21.SignUpFormPhoneCubit(get<_i3.AuthCubit>()));
  gh.factory<_i22.VerificationCubit>(() => _i22.VerificationCubit(
      get<_i11.IStorageFacade>(),
      get<_i9.IFirestoreFacade>(),
      get<_i3.AuthCubit>()));
  gh.factory<_i23.WalletCubit>(
      () => _i23.WalletCubit(get<_i9.IFirestoreFacade>()));
  gh.factory<_i24.BankAddressCubit>(
      () => _i24.BankAddressCubit(get<_i9.IFirestoreFacade>()));
  gh.factory<_i25.CryptoWalletCubit>(
      () => _i25.CryptoWalletCubit(get<_i9.IFirestoreFacade>()));
  gh.factory<_i26.DashboardCubit>(
      () => _i26.DashboardCubit(get<_i11.IStorageFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i27.FirebaseInjectableModule {}
