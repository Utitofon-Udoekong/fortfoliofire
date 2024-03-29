// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i63;
import 'package:flutter/material.dart' as _i64;

import '../authentication/forgot_password/reset_password.dart' as _i8;
import '../authentication/sign_in/confirm_login_otp.dart' as _i5;
import '../authentication/sign_in/sign_in_form_email.dart' as _i3;
import '../authentication/sign_in/sign_in_form_phone.dart' as _i4;
import '../authentication/sign_up/sign_up_form.dart' as _i7;
import '../home/dashboard/dashboard.dart' as _i60;
import '../home/dashboard/screens/notifications/notifications.dart' as _i9;
import '../home/dashboard/screens/payment_method/bank/add_bank.dart' as _i18;
import '../home/dashboard/screens/payment_method/bank/bank_wallet.dart' as _i22;
import '../home/dashboard/screens/payment_method/bank/verify_bank.dart' as _i19;
import '../home/dashboard/screens/payment_method/crypto/add_crypto_wallet.dart'
    as _i20;
import '../home/dashboard/screens/payment_method/crypto/crypto_wallet.dart'
    as _i23;
import '../home/dashboard/screens/payment_method/crypto/verify_crypto_wallet.dart'
    as _i21;
import '../home/dashboard/screens/payment_method/payment_method.dart' as _i25;
import '../home/dashboard/screens/payment_method/success.dart' as _i24;
import '../home/dashboard/screens/profile/confirm_phone_update.dart' as _i6;
import '../home/dashboard/screens/profile/disclaimer.dart' as _i11;
import '../home/dashboard/screens/profile/profile.dart' as _i10;
import '../home/dashboard/screens/security/change_password.dart' as _i15;
import '../home/dashboard/screens/security/security.dart' as _i14;
import '../home/dashboard/screens/security/set_pin.dart' as _i16;
import '../home/dashboard/screens/support/faq.dart' as _i26;
import '../home/dashboard/screens/support/support.dart' as _i27;
import '../home/dashboard/screens/tac/terms_of_service.dart' as _i28;
import '../home/dashboard/screens/transactions/transactions.dart' as _i12;
import '../home/dashboard/screens/verification/upload.dart' as _i30;
import '../home/dashboard/screens/verification/upload_document.dart' as _i29;
import '../home/dashboard/screens/verification/utility/upload_utility_doc.dart'
    as _i32;
import '../home/dashboard/screens/verification/utility/utility.dart' as _i31;
import '../home/dashboard/screens/verification/verification.dart' as _i33;
import '../home/dashboard/screens/verification/verification_success.dart'
    as _i34;
import '../home/home_page.dart' as _i59;
import '../home/investment/calculator/investment_calculator.dart' as _i13;
import '../home/investment/investment.dart' as _i61;
import '../home/investment/payment/bank/bank_invest.dart' as _i36;
import '../home/investment/payment/bank/domiciliary.dart' as _i38;
import '../home/investment/payment/bank/naira.dart' as _i37;
import '../home/investment/payment/crypto/crypto_invest.dart' as _i39;
import '../home/investment/payment/select_method.dart' as _i35;
import '../home/investment/success.dart' as _i57;
import '../home/investment/type/fortcrypto/fortcrypto.dart' as _i40;
import '../home/investment/type/fortcrypto/invest.dart' as _i41;
import '../home/investment/type/fortdollar/fortdollar.dart' as _i42;
import '../home/investment/type/fortdollar/invest.dart' as _i43;
import '../home/investment/type/fortshield/fortshield.dart' as _i44;
import '../home/investment/type/fortshield/invest.dart' as _i45;
import '../home/wallet/investment/fortcrypto_info.dart' as _i54;
import '../home/wallet/investment/fortdollar_info.dart' as _i52;
import '../home/wallet/investment/fortshield_info.dart' as _i53;
import '../home/wallet/overview/wallet_overview.dart' as _i46;
import '../home/wallet/success.dart' as _i56;
import '../home/wallet/transactions/transactions.dart' as _i47;
import '../home/wallet/wallet.dart' as _i62;
import '../home/wallet/withdraw/bank/bank_withdrawal.dart' as _i50;
import '../home/wallet/withdraw/crypto/crypto_withdrawal.dart' as _i51;
import '../home/wallet/withdraw/harvest_investment.dart' as _i48;
import '../home/wallet/withdraw/security/check.dart' as _i17;
import '../home/wallet/withdraw/select_method.dart' as _i49;
import '../home/wallet/withdraw/withdrawal.dart' as _i55;
import '../network/no_connection.dart' as _i58;
import '../splash/onboarding.dart' as _i2;
import '../splash/splash_screen.dart' as _i1;

class AppRouter extends _i63.RootStackRouter {
  AppRouter([_i64.GlobalKey<_i64.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i63.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashScreen(),
      );
    },
    OnboardingScreenRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.OnboardingScreen(),
      );
    },
    SignInFormEmailRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SignInFormEmail(),
      );
    },
    SignInFormPhoneRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SignInFormPhone(),
      );
    },
    ConfirmLoginWithOTPRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ConfirmLoginWithOTP(),
      );
    },
    ConfirmPhoneUpdateRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ConfirmPhoneUpdate(),
      );
    },
    SignUpFormRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.SignUpForm(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.ResetPassword(),
      );
    },
    NotificationsPageRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.NotificationsPage(),
      );
    },
    ProfilePageRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.ProfilePage(),
      );
    },
    DisclaimerPageRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.DisclaimerPage(),
      );
    },
    DashboardTransactionsRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.DashboardTransactions(),
      );
    },
    CalculatorRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.Calculator(),
      );
    },
    SecurityRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.Security(),
      );
    },
    ChangePasswordRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.ChangePassword(),
      );
    },
    SetPinRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i16.SetPin(),
      );
    },
    CheckWithdrawalRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i17.CheckWithdrawal(),
      );
    },
    AddBankRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i18.AddBank(),
      );
    },
    VerifyBankRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i19.VerifyBank(),
      );
    },
    AddCryptoWalletRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i20.AddCryptoWallet(),
      );
    },
    VerifyCryptoWalletRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i21.VerifyCryptoWallet(),
      );
    },
    BankAddressPageRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i22.BankAddressPage(),
      );
    },
    CryptoWalletPageRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i23.CryptoWalletPage(),
      );
    },
    PaymentMethodSuccessRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i24.PaymentMethodSuccess(),
      );
    },
    PaymentMethodRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i25.PaymentMethod(),
      );
    },
    FAQPageRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i26.FAQPage(),
      );
    },
    SupportPageRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i27.SupportPage(),
      );
    },
    TACPageRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i28.TACPage(),
      );
    },
    UploadDocumentImageRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i29.UploadDocumentImage(),
      );
    },
    UploadPageRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i30.UploadPage(),
      );
    },
    UtilityPageRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i31.UtilityPage(),
      );
    },
    UploadUtilityDocRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i32.UploadUtilityDoc(),
      );
    },
    VerificationPageRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i33.VerificationPage(),
      );
    },
    VerificationSuccessRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i34.VerificationSuccess(),
      );
    },
    SelectInvestmentMethodRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i35.SelectInvestmentMethod(),
      );
    },
    BankInvestmentPageRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i36.BankInvestmentPage(),
      );
    },
    NairaAccountRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i37.NairaAccount(),
      );
    },
    DomiciliaryAccountRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i38.DomiciliaryAccount(),
      );
    },
    CryptoInvestmentPageRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i39.CryptoInvestmentPage(),
      );
    },
    FortCryptoRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i40.FortCrypto(),
      );
    },
    FortCryptoInvestmentRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i41.FortCryptoInvestment(),
      );
    },
    FortDollarRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i42.FortDollar(),
      );
    },
    FortDollarInvestmentRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i43.FortDollarInvestment(),
      );
    },
    FortShieldRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i44.FortShield(),
      );
    },
    FortShieldInvestmentRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i45.FortShieldInvestment(),
      );
    },
    WalletOverviewRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i46.WalletOverview(),
      );
    },
    WalletTransactionsRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i47.WalletTransactions(),
      );
    },
    HarvestInvestmentRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i48.HarvestInvestment(),
      );
    },
    SelectWithdrawalMethodRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i49.SelectWithdrawalMethod(),
      );
    },
    BankWithdrawalRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i50.BankWithdrawal(),
      );
    },
    CryptoWithdrawalRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i51.CryptoWithdrawal(),
      );
    },
    FortDollarInvestmentInfoRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i52.FortDollarInvestmentInfo(),
      );
    },
    FortShieldInvestmentInfoRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i53.FortShieldInvestmentInfo(),
      );
    },
    FortCryptoInvestmentInfoRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i54.FortCryptoInvestmentInfo(),
      );
    },
    WithdrawalPageRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i55.WithdrawalPage(),
      );
    },
    WithdrawalSuccessRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i56.WithdrawalSuccess(),
      );
    },
    InvestmentSuccessRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i57.InvestmentSuccess(),
      );
    },
    NoInternetPageRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i58.NoInternetPage(),
      );
    },
    HomePageRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i59.HomePage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i60.Dashboard(),
      );
    },
    InvestmentPageRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i61.InvestmentPage(),
      );
    },
    WalletRoute.name: (routeData) {
      return _i63.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i62.Wallet(),
      );
    },
  };

  @override
  List<_i63.RouteConfig> get routes => [
        _i63.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i63.RouteConfig(
          OnboardingScreenRoute.name,
          path: '/onboarding-screen',
        ),
        _i63.RouteConfig(
          SignInFormEmailRoute.name,
          path: '/sign-in-form-email',
        ),
        _i63.RouteConfig(
          SignInFormPhoneRoute.name,
          path: '/sign-in-form-phone',
        ),
        _i63.RouteConfig(
          ConfirmLoginWithOTPRoute.name,
          path: '/confirm-login-with-ot-p',
        ),
        _i63.RouteConfig(
          ConfirmPhoneUpdateRoute.name,
          path: '/confirm-phone-update',
        ),
        _i63.RouteConfig(
          SignUpFormRoute.name,
          path: '/sign-up-form',
        ),
        _i63.RouteConfig(
          ResetPasswordRoute.name,
          path: '/reset-password',
        ),
        _i63.RouteConfig(
          NotificationsPageRoute.name,
          path: '/notifications-page',
        ),
        _i63.RouteConfig(
          ProfilePageRoute.name,
          path: '/profile-page',
        ),
        _i63.RouteConfig(
          DisclaimerPageRoute.name,
          path: '/disclaimer-page',
        ),
        _i63.RouteConfig(
          DashboardTransactionsRoute.name,
          path: '/dashboard-transactions',
        ),
        _i63.RouteConfig(
          CalculatorRoute.name,
          path: '/Calculator',
        ),
        _i63.RouteConfig(
          SecurityRoute.name,
          path: '/Security',
        ),
        _i63.RouteConfig(
          ChangePasswordRoute.name,
          path: '/change-password',
        ),
        _i63.RouteConfig(
          SetPinRoute.name,
          path: '/set-pin',
        ),
        _i63.RouteConfig(
          CheckWithdrawalRoute.name,
          path: '/check-withdrawal',
        ),
        _i63.RouteConfig(
          AddBankRoute.name,
          path: '/add-bank',
        ),
        _i63.RouteConfig(
          VerifyBankRoute.name,
          path: '/verify-bank',
        ),
        _i63.RouteConfig(
          AddCryptoWalletRoute.name,
          path: '/add-crypto-wallet',
        ),
        _i63.RouteConfig(
          VerifyCryptoWalletRoute.name,
          path: '/verify-crypto-wallet',
        ),
        _i63.RouteConfig(
          BankAddressPageRoute.name,
          path: '/bank-address-page',
        ),
        _i63.RouteConfig(
          CryptoWalletPageRoute.name,
          path: '/crypto-wallet-page',
        ),
        _i63.RouteConfig(
          PaymentMethodSuccessRoute.name,
          path: '/payment-method-success',
        ),
        _i63.RouteConfig(
          PaymentMethodRoute.name,
          path: '/payment-method',
        ),
        _i63.RouteConfig(
          FAQPageRoute.name,
          path: '/f-aq-page',
        ),
        _i63.RouteConfig(
          SupportPageRoute.name,
          path: '/support-page',
        ),
        _i63.RouteConfig(
          TACPageRoute.name,
          path: '/t-ac-page',
        ),
        _i63.RouteConfig(
          UploadDocumentImageRoute.name,
          path: '/upload-document-image',
        ),
        _i63.RouteConfig(
          UploadPageRoute.name,
          path: '/upload-page',
        ),
        _i63.RouteConfig(
          UtilityPageRoute.name,
          path: '/utility-page',
        ),
        _i63.RouteConfig(
          UploadUtilityDocRoute.name,
          path: '/upload-utility-doc',
        ),
        _i63.RouteConfig(
          VerificationPageRoute.name,
          path: '/verification-page',
        ),
        _i63.RouteConfig(
          VerificationSuccessRoute.name,
          path: '/verification-success',
        ),
        _i63.RouteConfig(
          SelectInvestmentMethodRoute.name,
          path: '/select-investment-method',
        ),
        _i63.RouteConfig(
          BankInvestmentPageRoute.name,
          path: '/bank-investment-page',
        ),
        _i63.RouteConfig(
          NairaAccountRoute.name,
          path: '/naira-account',
        ),
        _i63.RouteConfig(
          DomiciliaryAccountRoute.name,
          path: '/domiciliary-account',
        ),
        _i63.RouteConfig(
          CryptoInvestmentPageRoute.name,
          path: '/crypto-investment-page',
        ),
        _i63.RouteConfig(
          FortCryptoRoute.name,
          path: '/fort-crypto',
        ),
        _i63.RouteConfig(
          FortCryptoInvestmentRoute.name,
          path: '/fort-crypto-investment',
        ),
        _i63.RouteConfig(
          FortDollarRoute.name,
          path: '/fort-dollar',
        ),
        _i63.RouteConfig(
          FortDollarInvestmentRoute.name,
          path: '/fort-dollar-investment',
        ),
        _i63.RouteConfig(
          FortShieldRoute.name,
          path: '/fort-shield',
        ),
        _i63.RouteConfig(
          FortShieldInvestmentRoute.name,
          path: '/fort-shield-investment',
        ),
        _i63.RouteConfig(
          WalletOverviewRoute.name,
          path: '/wallet-overview',
        ),
        _i63.RouteConfig(
          WalletTransactionsRoute.name,
          path: '/wallet-transactions',
        ),
        _i63.RouteConfig(
          HarvestInvestmentRoute.name,
          path: '/harvest-investment',
        ),
        _i63.RouteConfig(
          SelectWithdrawalMethodRoute.name,
          path: '/select-withdrawal-method',
        ),
        _i63.RouteConfig(
          BankWithdrawalRoute.name,
          path: '/bank-withdrawal',
        ),
        _i63.RouteConfig(
          CryptoWithdrawalRoute.name,
          path: '/crypto-withdrawal',
        ),
        _i63.RouteConfig(
          FortDollarInvestmentInfoRoute.name,
          path: '/fort-dollar-investment-info',
        ),
        _i63.RouteConfig(
          FortShieldInvestmentInfoRoute.name,
          path: '/fort-shield-investment-info',
        ),
        _i63.RouteConfig(
          FortCryptoInvestmentInfoRoute.name,
          path: '/fort-crypto-investment-info',
        ),
        _i63.RouteConfig(
          WithdrawalPageRoute.name,
          path: '/withdrawal-page',
        ),
        _i63.RouteConfig(
          WithdrawalSuccessRoute.name,
          path: '/withdrawal-success',
        ),
        _i63.RouteConfig(
          InvestmentSuccessRoute.name,
          path: '/investment-success',
        ),
        _i63.RouteConfig(
          NoInternetPageRoute.name,
          path: '/no-internet-page',
        ),
        _i63.RouteConfig(
          HomePageRoute.name,
          path: '/home',
          children: [
            _i63.RouteConfig(
              DashboardRoute.name,
              path: 'dashboard',
              parent: HomePageRoute.name,
            ),
            _i63.RouteConfig(
              InvestmentPageRoute.name,
              path: 'investments',
              parent: HomePageRoute.name,
            ),
            _i63.RouteConfig(
              WalletRoute.name,
              path: 'wallet',
              parent: HomePageRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i63.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.OnboardingScreen]
class OnboardingScreenRoute extends _i63.PageRouteInfo<void> {
  const OnboardingScreenRoute()
      : super(
          OnboardingScreenRoute.name,
          path: '/onboarding-screen',
        );

  static const String name = 'OnboardingScreenRoute';
}

/// generated route for
/// [_i3.SignInFormEmail]
class SignInFormEmailRoute extends _i63.PageRouteInfo<void> {
  const SignInFormEmailRoute()
      : super(
          SignInFormEmailRoute.name,
          path: '/sign-in-form-email',
        );

  static const String name = 'SignInFormEmailRoute';
}

/// generated route for
/// [_i4.SignInFormPhone]
class SignInFormPhoneRoute extends _i63.PageRouteInfo<void> {
  const SignInFormPhoneRoute()
      : super(
          SignInFormPhoneRoute.name,
          path: '/sign-in-form-phone',
        );

  static const String name = 'SignInFormPhoneRoute';
}

/// generated route for
/// [_i5.ConfirmLoginWithOTP]
class ConfirmLoginWithOTPRoute extends _i63.PageRouteInfo<void> {
  const ConfirmLoginWithOTPRoute()
      : super(
          ConfirmLoginWithOTPRoute.name,
          path: '/confirm-login-with-ot-p',
        );

  static const String name = 'ConfirmLoginWithOTPRoute';
}

/// generated route for
/// [_i6.ConfirmPhoneUpdate]
class ConfirmPhoneUpdateRoute extends _i63.PageRouteInfo<void> {
  const ConfirmPhoneUpdateRoute()
      : super(
          ConfirmPhoneUpdateRoute.name,
          path: '/confirm-phone-update',
        );

  static const String name = 'ConfirmPhoneUpdateRoute';
}

/// generated route for
/// [_i7.SignUpForm]
class SignUpFormRoute extends _i63.PageRouteInfo<void> {
  const SignUpFormRoute()
      : super(
          SignUpFormRoute.name,
          path: '/sign-up-form',
        );

  static const String name = 'SignUpFormRoute';
}

/// generated route for
/// [_i8.ResetPassword]
class ResetPasswordRoute extends _i63.PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(
          ResetPasswordRoute.name,
          path: '/reset-password',
        );

  static const String name = 'ResetPasswordRoute';
}

/// generated route for
/// [_i9.NotificationsPage]
class NotificationsPageRoute extends _i63.PageRouteInfo<void> {
  const NotificationsPageRoute()
      : super(
          NotificationsPageRoute.name,
          path: '/notifications-page',
        );

  static const String name = 'NotificationsPageRoute';
}

/// generated route for
/// [_i10.ProfilePage]
class ProfilePageRoute extends _i63.PageRouteInfo<void> {
  const ProfilePageRoute()
      : super(
          ProfilePageRoute.name,
          path: '/profile-page',
        );

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [_i11.DisclaimerPage]
class DisclaimerPageRoute extends _i63.PageRouteInfo<void> {
  const DisclaimerPageRoute()
      : super(
          DisclaimerPageRoute.name,
          path: '/disclaimer-page',
        );

  static const String name = 'DisclaimerPageRoute';
}

/// generated route for
/// [_i12.DashboardTransactions]
class DashboardTransactionsRoute extends _i63.PageRouteInfo<void> {
  const DashboardTransactionsRoute()
      : super(
          DashboardTransactionsRoute.name,
          path: '/dashboard-transactions',
        );

  static const String name = 'DashboardTransactionsRoute';
}

/// generated route for
/// [_i13.Calculator]
class CalculatorRoute extends _i63.PageRouteInfo<void> {
  const CalculatorRoute()
      : super(
          CalculatorRoute.name,
          path: '/Calculator',
        );

  static const String name = 'CalculatorRoute';
}

/// generated route for
/// [_i14.Security]
class SecurityRoute extends _i63.PageRouteInfo<void> {
  const SecurityRoute()
      : super(
          SecurityRoute.name,
          path: '/Security',
        );

  static const String name = 'SecurityRoute';
}

/// generated route for
/// [_i15.ChangePassword]
class ChangePasswordRoute extends _i63.PageRouteInfo<void> {
  const ChangePasswordRoute()
      : super(
          ChangePasswordRoute.name,
          path: '/change-password',
        );

  static const String name = 'ChangePasswordRoute';
}

/// generated route for
/// [_i16.SetPin]
class SetPinRoute extends _i63.PageRouteInfo<void> {
  const SetPinRoute()
      : super(
          SetPinRoute.name,
          path: '/set-pin',
        );

  static const String name = 'SetPinRoute';
}

/// generated route for
/// [_i17.CheckWithdrawal]
class CheckWithdrawalRoute extends _i63.PageRouteInfo<void> {
  const CheckWithdrawalRoute()
      : super(
          CheckWithdrawalRoute.name,
          path: '/check-withdrawal',
        );

  static const String name = 'CheckWithdrawalRoute';
}

/// generated route for
/// [_i18.AddBank]
class AddBankRoute extends _i63.PageRouteInfo<void> {
  const AddBankRoute()
      : super(
          AddBankRoute.name,
          path: '/add-bank',
        );

  static const String name = 'AddBankRoute';
}

/// generated route for
/// [_i19.VerifyBank]
class VerifyBankRoute extends _i63.PageRouteInfo<void> {
  const VerifyBankRoute()
      : super(
          VerifyBankRoute.name,
          path: '/verify-bank',
        );

  static const String name = 'VerifyBankRoute';
}

/// generated route for
/// [_i20.AddCryptoWallet]
class AddCryptoWalletRoute extends _i63.PageRouteInfo<void> {
  const AddCryptoWalletRoute()
      : super(
          AddCryptoWalletRoute.name,
          path: '/add-crypto-wallet',
        );

  static const String name = 'AddCryptoWalletRoute';
}

/// generated route for
/// [_i21.VerifyCryptoWallet]
class VerifyCryptoWalletRoute extends _i63.PageRouteInfo<void> {
  const VerifyCryptoWalletRoute()
      : super(
          VerifyCryptoWalletRoute.name,
          path: '/verify-crypto-wallet',
        );

  static const String name = 'VerifyCryptoWalletRoute';
}

/// generated route for
/// [_i22.BankAddressPage]
class BankAddressPageRoute extends _i63.PageRouteInfo<void> {
  const BankAddressPageRoute()
      : super(
          BankAddressPageRoute.name,
          path: '/bank-address-page',
        );

  static const String name = 'BankAddressPageRoute';
}

/// generated route for
/// [_i23.CryptoWalletPage]
class CryptoWalletPageRoute extends _i63.PageRouteInfo<void> {
  const CryptoWalletPageRoute()
      : super(
          CryptoWalletPageRoute.name,
          path: '/crypto-wallet-page',
        );

  static const String name = 'CryptoWalletPageRoute';
}

/// generated route for
/// [_i24.PaymentMethodSuccess]
class PaymentMethodSuccessRoute extends _i63.PageRouteInfo<void> {
  const PaymentMethodSuccessRoute()
      : super(
          PaymentMethodSuccessRoute.name,
          path: '/payment-method-success',
        );

  static const String name = 'PaymentMethodSuccessRoute';
}

/// generated route for
/// [_i25.PaymentMethod]
class PaymentMethodRoute extends _i63.PageRouteInfo<void> {
  const PaymentMethodRoute()
      : super(
          PaymentMethodRoute.name,
          path: '/payment-method',
        );

  static const String name = 'PaymentMethodRoute';
}

/// generated route for
/// [_i26.FAQPage]
class FAQPageRoute extends _i63.PageRouteInfo<void> {
  const FAQPageRoute()
      : super(
          FAQPageRoute.name,
          path: '/f-aq-page',
        );

  static const String name = 'FAQPageRoute';
}

/// generated route for
/// [_i27.SupportPage]
class SupportPageRoute extends _i63.PageRouteInfo<void> {
  const SupportPageRoute()
      : super(
          SupportPageRoute.name,
          path: '/support-page',
        );

  static const String name = 'SupportPageRoute';
}

/// generated route for
/// [_i28.TACPage]
class TACPageRoute extends _i63.PageRouteInfo<void> {
  const TACPageRoute()
      : super(
          TACPageRoute.name,
          path: '/t-ac-page',
        );

  static const String name = 'TACPageRoute';
}

/// generated route for
/// [_i29.UploadDocumentImage]
class UploadDocumentImageRoute extends _i63.PageRouteInfo<void> {
  const UploadDocumentImageRoute()
      : super(
          UploadDocumentImageRoute.name,
          path: '/upload-document-image',
        );

  static const String name = 'UploadDocumentImageRoute';
}

/// generated route for
/// [_i30.UploadPage]
class UploadPageRoute extends _i63.PageRouteInfo<void> {
  const UploadPageRoute()
      : super(
          UploadPageRoute.name,
          path: '/upload-page',
        );

  static const String name = 'UploadPageRoute';
}

/// generated route for
/// [_i31.UtilityPage]
class UtilityPageRoute extends _i63.PageRouteInfo<void> {
  const UtilityPageRoute()
      : super(
          UtilityPageRoute.name,
          path: '/utility-page',
        );

  static const String name = 'UtilityPageRoute';
}

/// generated route for
/// [_i32.UploadUtilityDoc]
class UploadUtilityDocRoute extends _i63.PageRouteInfo<void> {
  const UploadUtilityDocRoute()
      : super(
          UploadUtilityDocRoute.name,
          path: '/upload-utility-doc',
        );

  static const String name = 'UploadUtilityDocRoute';
}

/// generated route for
/// [_i33.VerificationPage]
class VerificationPageRoute extends _i63.PageRouteInfo<void> {
  const VerificationPageRoute()
      : super(
          VerificationPageRoute.name,
          path: '/verification-page',
        );

  static const String name = 'VerificationPageRoute';
}

/// generated route for
/// [_i34.VerificationSuccess]
class VerificationSuccessRoute extends _i63.PageRouteInfo<void> {
  const VerificationSuccessRoute()
      : super(
          VerificationSuccessRoute.name,
          path: '/verification-success',
        );

  static const String name = 'VerificationSuccessRoute';
}

/// generated route for
/// [_i35.SelectInvestmentMethod]
class SelectInvestmentMethodRoute extends _i63.PageRouteInfo<void> {
  const SelectInvestmentMethodRoute()
      : super(
          SelectInvestmentMethodRoute.name,
          path: '/select-investment-method',
        );

  static const String name = 'SelectInvestmentMethodRoute';
}

/// generated route for
/// [_i36.BankInvestmentPage]
class BankInvestmentPageRoute extends _i63.PageRouteInfo<void> {
  const BankInvestmentPageRoute()
      : super(
          BankInvestmentPageRoute.name,
          path: '/bank-investment-page',
        );

  static const String name = 'BankInvestmentPageRoute';
}

/// generated route for
/// [_i37.NairaAccount]
class NairaAccountRoute extends _i63.PageRouteInfo<void> {
  const NairaAccountRoute()
      : super(
          NairaAccountRoute.name,
          path: '/naira-account',
        );

  static const String name = 'NairaAccountRoute';
}

/// generated route for
/// [_i38.DomiciliaryAccount]
class DomiciliaryAccountRoute extends _i63.PageRouteInfo<void> {
  const DomiciliaryAccountRoute()
      : super(
          DomiciliaryAccountRoute.name,
          path: '/domiciliary-account',
        );

  static const String name = 'DomiciliaryAccountRoute';
}

/// generated route for
/// [_i39.CryptoInvestmentPage]
class CryptoInvestmentPageRoute extends _i63.PageRouteInfo<void> {
  const CryptoInvestmentPageRoute()
      : super(
          CryptoInvestmentPageRoute.name,
          path: '/crypto-investment-page',
        );

  static const String name = 'CryptoInvestmentPageRoute';
}

/// generated route for
/// [_i40.FortCrypto]
class FortCryptoRoute extends _i63.PageRouteInfo<void> {
  const FortCryptoRoute()
      : super(
          FortCryptoRoute.name,
          path: '/fort-crypto',
        );

  static const String name = 'FortCryptoRoute';
}

/// generated route for
/// [_i41.FortCryptoInvestment]
class FortCryptoInvestmentRoute extends _i63.PageRouteInfo<void> {
  const FortCryptoInvestmentRoute()
      : super(
          FortCryptoInvestmentRoute.name,
          path: '/fort-crypto-investment',
        );

  static const String name = 'FortCryptoInvestmentRoute';
}

/// generated route for
/// [_i42.FortDollar]
class FortDollarRoute extends _i63.PageRouteInfo<void> {
  const FortDollarRoute()
      : super(
          FortDollarRoute.name,
          path: '/fort-dollar',
        );

  static const String name = 'FortDollarRoute';
}

/// generated route for
/// [_i43.FortDollarInvestment]
class FortDollarInvestmentRoute extends _i63.PageRouteInfo<void> {
  const FortDollarInvestmentRoute()
      : super(
          FortDollarInvestmentRoute.name,
          path: '/fort-dollar-investment',
        );

  static const String name = 'FortDollarInvestmentRoute';
}

/// generated route for
/// [_i44.FortShield]
class FortShieldRoute extends _i63.PageRouteInfo<void> {
  const FortShieldRoute()
      : super(
          FortShieldRoute.name,
          path: '/fort-shield',
        );

  static const String name = 'FortShieldRoute';
}

/// generated route for
/// [_i45.FortShieldInvestment]
class FortShieldInvestmentRoute extends _i63.PageRouteInfo<void> {
  const FortShieldInvestmentRoute()
      : super(
          FortShieldInvestmentRoute.name,
          path: '/fort-shield-investment',
        );

  static const String name = 'FortShieldInvestmentRoute';
}

/// generated route for
/// [_i46.WalletOverview]
class WalletOverviewRoute extends _i63.PageRouteInfo<void> {
  const WalletOverviewRoute()
      : super(
          WalletOverviewRoute.name,
          path: '/wallet-overview',
        );

  static const String name = 'WalletOverviewRoute';
}

/// generated route for
/// [_i47.WalletTransactions]
class WalletTransactionsRoute extends _i63.PageRouteInfo<void> {
  const WalletTransactionsRoute()
      : super(
          WalletTransactionsRoute.name,
          path: '/wallet-transactions',
        );

  static const String name = 'WalletTransactionsRoute';
}

/// generated route for
/// [_i48.HarvestInvestment]
class HarvestInvestmentRoute extends _i63.PageRouteInfo<void> {
  const HarvestInvestmentRoute()
      : super(
          HarvestInvestmentRoute.name,
          path: '/harvest-investment',
        );

  static const String name = 'HarvestInvestmentRoute';
}

/// generated route for
/// [_i49.SelectWithdrawalMethod]
class SelectWithdrawalMethodRoute extends _i63.PageRouteInfo<void> {
  const SelectWithdrawalMethodRoute()
      : super(
          SelectWithdrawalMethodRoute.name,
          path: '/select-withdrawal-method',
        );

  static const String name = 'SelectWithdrawalMethodRoute';
}

/// generated route for
/// [_i50.BankWithdrawal]
class BankWithdrawalRoute extends _i63.PageRouteInfo<void> {
  const BankWithdrawalRoute()
      : super(
          BankWithdrawalRoute.name,
          path: '/bank-withdrawal',
        );

  static const String name = 'BankWithdrawalRoute';
}

/// generated route for
/// [_i51.CryptoWithdrawal]
class CryptoWithdrawalRoute extends _i63.PageRouteInfo<void> {
  const CryptoWithdrawalRoute()
      : super(
          CryptoWithdrawalRoute.name,
          path: '/crypto-withdrawal',
        );

  static const String name = 'CryptoWithdrawalRoute';
}

/// generated route for
/// [_i52.FortDollarInvestmentInfo]
class FortDollarInvestmentInfoRoute extends _i63.PageRouteInfo<void> {
  const FortDollarInvestmentInfoRoute()
      : super(
          FortDollarInvestmentInfoRoute.name,
          path: '/fort-dollar-investment-info',
        );

  static const String name = 'FortDollarInvestmentInfoRoute';
}

/// generated route for
/// [_i53.FortShieldInvestmentInfo]
class FortShieldInvestmentInfoRoute extends _i63.PageRouteInfo<void> {
  const FortShieldInvestmentInfoRoute()
      : super(
          FortShieldInvestmentInfoRoute.name,
          path: '/fort-shield-investment-info',
        );

  static const String name = 'FortShieldInvestmentInfoRoute';
}

/// generated route for
/// [_i54.FortCryptoInvestmentInfo]
class FortCryptoInvestmentInfoRoute extends _i63.PageRouteInfo<void> {
  const FortCryptoInvestmentInfoRoute()
      : super(
          FortCryptoInvestmentInfoRoute.name,
          path: '/fort-crypto-investment-info',
        );

  static const String name = 'FortCryptoInvestmentInfoRoute';
}

/// generated route for
/// [_i55.WithdrawalPage]
class WithdrawalPageRoute extends _i63.PageRouteInfo<void> {
  const WithdrawalPageRoute()
      : super(
          WithdrawalPageRoute.name,
          path: '/withdrawal-page',
        );

  static const String name = 'WithdrawalPageRoute';
}

/// generated route for
/// [_i56.WithdrawalSuccess]
class WithdrawalSuccessRoute extends _i63.PageRouteInfo<void> {
  const WithdrawalSuccessRoute()
      : super(
          WithdrawalSuccessRoute.name,
          path: '/withdrawal-success',
        );

  static const String name = 'WithdrawalSuccessRoute';
}

/// generated route for
/// [_i57.InvestmentSuccess]
class InvestmentSuccessRoute extends _i63.PageRouteInfo<void> {
  const InvestmentSuccessRoute()
      : super(
          InvestmentSuccessRoute.name,
          path: '/investment-success',
        );

  static const String name = 'InvestmentSuccessRoute';
}

/// generated route for
/// [_i58.NoInternetPage]
class NoInternetPageRoute extends _i63.PageRouteInfo<void> {
  const NoInternetPageRoute()
      : super(
          NoInternetPageRoute.name,
          path: '/no-internet-page',
        );

  static const String name = 'NoInternetPageRoute';
}

/// generated route for
/// [_i59.HomePage]
class HomePageRoute extends _i63.PageRouteInfo<void> {
  const HomePageRoute({List<_i63.PageRouteInfo>? children})
      : super(
          HomePageRoute.name,
          path: '/home',
          initialChildren: children,
        );

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i60.Dashboard]
class DashboardRoute extends _i63.PageRouteInfo<void> {
  const DashboardRoute()
      : super(
          DashboardRoute.name,
          path: 'dashboard',
        );

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i61.InvestmentPage]
class InvestmentPageRoute extends _i63.PageRouteInfo<void> {
  const InvestmentPageRoute()
      : super(
          InvestmentPageRoute.name,
          path: 'investments',
        );

  static const String name = 'InvestmentPageRoute';
}

/// generated route for
/// [_i62.Wallet]
class WalletRoute extends _i63.PageRouteInfo<void> {
  const WalletRoute()
      : super(
          WalletRoute.name,
          path: 'wallet',
        );

  static const String name = 'WalletRoute';
}
