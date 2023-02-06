// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:cloud_functions/cloud_functions.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i7;
import 'package:fortfolio/application/auth/auth_cubit.dart' as _i3;
import 'package:fortfolio/application/auth/reset_password_form/reset_password_cubit.dart'
    as _i23;
import 'package:fortfolio/application/auth/sign_in_form/email/sign_in_form_email_cubit.dart'
    as _i25;
import 'package:fortfolio/application/auth/sign_in_form/phone/sign_in_form_phone_cubit.dart'
    as _i26;
import 'package:fortfolio/application/auth/sign_up_form/email/sign_up_form_cubit.dart'
    as _i27;
import 'package:fortfolio/application/auth/sign_up_form/phone/sign_up_form_phone_cubit.dart'
    as _i28;
import 'package:fortfolio/application/network/network_cubit.dart' as _i19;
import 'package:fortfolio/domain/auth/i_auth_facade.dart' as _i8;
import 'package:fortfolio/domain/auth/i_external_facade.dart' as _i10;
import 'package:fortfolio/domain/auth/i_firestore_facade.dart' as _i12;
import 'package:fortfolio/domain/auth/i_functions_facade.dart' as _i14;
import 'package:fortfolio/domain/auth/i_storage_facade.dart' as _i16;
import 'package:fortfolio/infrastructure/auth/external_facade.dart' as _i11;
import 'package:fortfolio/infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'package:fortfolio/infrastructure/auth/firebase_firestore_facade.dart'
    as _i13;
import 'package:fortfolio/infrastructure/auth/firebase_functions_facade.dart'
    as _i15;
import 'package:fortfolio/infrastructure/auth/firebase_storage_facade.dart'
    as _i17;
import 'package:fortfolio/infrastructure/core/app_injectibles.dart' as _i33;
import 'package:fortfolio/presentation/home/dashboard/cubit/dashboard_cubit.dart'
    as _i32;
import 'package:fortfolio/presentation/home/dashboard/screens/notifications/cubit/notification_cubit.dart'
    as _i20;
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/cubit/payment_method_cubit.dart'
    as _i21;
import 'package:fortfolio/presentation/home/dashboard/screens/profile/cubit/profile_cubit.dart'
    as _i22;
import 'package:fortfolio/presentation/home/dashboard/screens/security/cubit/security_cubit.dart'
    as _i24;
import 'package:fortfolio/presentation/home/dashboard/screens/verification/cubit/verification_cubit.dart'
    as _i29;
import 'package:fortfolio/presentation/home/investment/calculator/cubit/calculator_cubit.dart'
    as _i31;
import 'package:fortfolio/presentation/home/investment/cubit/investment_cubit.dart'
    as _i18;
import 'package:fortfolio/presentation/home/wallet/cubit/wallet_cubit.dart'
    as _i30;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.lazySingleton<_i3.AuthCubit>(() => _i3.AuthCubit());
    gh.lazySingleton<_i4.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i5.FirebaseFirestore>(
        () => firebaseInjectableModule.firestore);
    gh.lazySingleton<_i6.FirebaseFunctions>(
        () => firebaseInjectableModule.functions);
    gh.lazySingleton<_i7.FirebaseStorage>(
        () => firebaseInjectableModule.storage);
    gh.lazySingleton<_i8.IAuthFacade>(() => _i9.FirebaseAuthFacade(
          firestore: gh<_i5.FirebaseFirestore>(),
          firebaseAuth: gh<_i4.FirebaseAuth>(),
        ));
    gh.lazySingleton<_i10.IExternalFacade>(() => _i11.ExternalFacade());
    gh.lazySingleton<_i12.IFirestoreFacade>(() => _i13.FirebaseFirestoreFacade(
          gh<_i5.FirebaseFirestore>(),
          gh<_i4.FirebaseAuth>(),
        ));
    gh.lazySingleton<_i14.IFunctionsFacade>(() => _i15.FirebaseFunctionsFacade(
          gh<_i6.FirebaseFunctions>(),
          gh<_i10.IExternalFacade>(),
        ));
    gh.lazySingleton<_i16.IStorageFacade>(() => _i17.FirebaseStorageFacade(
          gh<_i4.FirebaseAuth>(),
          gh<_i7.FirebaseStorage>(),
        ));
    gh.factory<_i18.InvestmentCubit>(() => _i18.InvestmentCubit(
          gh<_i12.IFirestoreFacade>(),
          gh<_i10.IExternalFacade>(),
          gh<_i14.IFunctionsFacade>(),
          gh<_i8.IAuthFacade>(),
        ));
    gh.factory<_i19.NetworkCubit>(() => _i19.NetworkCubit());
    gh.factory<_i20.NotificationCubit>(
        () => _i20.NotificationCubit(gh<_i12.IFirestoreFacade>()));
    gh.factory<_i21.PaymentMethodCubit>(
        () => _i21.PaymentMethodCubit(gh<_i12.IFirestoreFacade>()));
    gh.factory<_i22.ProfileCubit>(
        () => _i22.ProfileCubit(gh<_i8.IAuthFacade>()));
    gh.factory<_i23.ResetPasswordCubit>(
        () => _i23.ResetPasswordCubit(gh<_i8.IAuthFacade>()));
    gh.factory<_i24.SecurityCubit>(
        () => _i24.SecurityCubit(gh<_i8.IAuthFacade>()));
    gh.factory<_i25.SignInFormEmailCubit>(
        () => _i25.SignInFormEmailCubit(gh<_i8.IAuthFacade>()));
    gh.factory<_i26.SignInFormPhoneCubit>(() => _i26.SignInFormPhoneCubit());
    gh.factory<_i27.SignUpFormCubit>(
        () => _i27.SignUpFormCubit(gh<_i8.IAuthFacade>()));
    gh.factory<_i28.SignUpFormPhoneCubit>(
        () => _i28.SignUpFormPhoneCubit(gh<_i3.AuthCubit>()));
    gh.factory<_i29.VerificationCubit>(() => _i29.VerificationCubit(
          gh<_i16.IStorageFacade>(),
          gh<_i12.IFirestoreFacade>(),
        ));
    gh.factory<_i30.WalletCubit>(() => _i30.WalletCubit(
          gh<_i12.IFirestoreFacade>(),
          gh<_i10.IExternalFacade>(),
          gh<_i8.IAuthFacade>(),
        ));
    gh.factory<_i31.CalculatorCubit>(
        () => _i31.CalculatorCubit(gh<_i10.IExternalFacade>()));
    gh.factory<_i32.DashboardCubit>(() => _i32.DashboardCubit(
          gh<_i8.IAuthFacade>(),
          gh<_i12.IFirestoreFacade>(),
        ));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i33.FirebaseInjectableModule {}
