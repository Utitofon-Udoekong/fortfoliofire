// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i54;
import 'package:flutter/material.dart' as _i55;

import '../authentication/forgot_password/reset_password.dart' as _i5;
import '../authentication/sign_in/confirm_login_otp.dart' as _i9;
import '../authentication/sign_in/sign_in_form_email.dart' as _i7;
import '../authentication/sign_in/sign_in_form_phone.dart' as _i8;
import '../authentication/sign_in/sign_in_page.dart' as _i3;
import '../authentication/sign_up/sign_up_form.dart' as _i4;
import '../home/dashboard/dashboard.dart' as _i10;
import '../home/dashboard/screens/payment_method/bank/add_bank.dart' as _i22;
import '../home/dashboard/screens/payment_method/bank/bank_wallet.dart' as _i20;
import '../home/dashboard/screens/payment_method/bank/verify_bank.dart' as _i23;
import '../home/dashboard/screens/payment_method/crypto/add_crypto_wallet.dart'
    as _i24;
import '../home/dashboard/screens/payment_method/crypto/crypto_wallet.dart'
    as _i21;
import '../home/dashboard/screens/payment_method/crypto/verify_crypto_wallet.dart'
    as _i25;
import '../home/dashboard/screens/payment_method/payment_method.dart' as _i15;
import '../home/dashboard/screens/profile/profile.dart' as _i13;
import '../home/dashboard/screens/security/change_password.dart' as _i19;
import '../home/dashboard/screens/security/security.dart' as _i14;
import '../home/dashboard/screens/support/faq.dart' as _i26;
import '../home/dashboard/screens/support/support.dart' as _i16;
import '../home/dashboard/screens/tac/terms_of_service.dart' as _i17;
import '../home/dashboard/screens/verification/upload.dart' as _i27;
import '../home/dashboard/screens/verification/upload_document.dart' as _i30;
import '../home/dashboard/screens/verification/utility/upload_utility_doc.dart'
    as _i31;
import '../home/dashboard/screens/verification/utility/utility.dart' as _i28;
import '../home/dashboard/screens/verification/verification.dart' as _i18;
import '../home/dashboard/screens/verification/verification_success.dart'
    as _i29;
import '../home/home_page.dart' as _i6;
import '../home/investment/calculator/investment_calculator.dart' as _i32;
import '../home/investment/investment.dart' as _i11;
import '../home/investment/notifications/notifications.dart' as _i33;
import '../home/investment/payment/bank/bank_invest.dart' as _i39;
import '../home/investment/payment/bank/domiciliary.dart' as _i41;
import '../home/investment/payment/bank/naira.dart' as _i42;
import '../home/investment/payment/crypto/crypto_invest.dart' as _i40;
import '../home/investment/payment/select_method.dart' as _i34;
import '../home/investment/transactions/transactions.dart' as _i35;
import '../home/investment/type/fortcrypto/fortcrypto.dart' as _i36;
import '../home/investment/type/fortcrypto/invest.dart' as _i43;
import '../home/investment/type/fortdollar/fortdollar.dart' as _i37;
import '../home/investment/type/fortdollar/invest.dart' as _i44;
import '../home/investment/type/fortshield/fortshield.dart' as _i38;
import '../home/investment/type/fortshield/invest.dart' as _i45;
import '../home/wallet/overview/wallet_overview.dart' as _i46;
import '../home/wallet/success.dart' as _i51;
import '../home/wallet/transactions/transactions.dart' as _i47;
import '../home/wallet/wallet.dart' as _i12;
import '../home/wallet/withdraw/bank/bank_withdrawal.dart' as _i52;
import '../home/wallet/withdraw/crypto/crypto_withdrawal.dart' as _i53;
import '../home/wallet/withdraw/select_investment.dart' as _i49;
import '../home/wallet/withdraw/select_method.dart' as _i50;
import '../home/wallet/withdraw/withdrawal.dart' as _i48;
import '../splash/onboarding.dart' as _i2;
import '../splash/splash_Screen.dart' as _i1;

class AppRouter extends _i54.RootStackRouter {
  AppRouter([_i55.GlobalKey<_i55.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i54.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    OnboardingScreenRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.OnboardingScreen());
    },
    SignInPageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignInPage());
    },
    SignUpFormRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SignUpForm());
    },
    ResetPasswordRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ResetPassword());
    },
    HomePageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.HomePage());
    },
    SignInFormEmailRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.SignInFormEmail());
    },
    SignInFormPhoneRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.SignInFormPhone());
    },
    ConfirmLoginWithOTPRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.ConfirmLoginWithOTP());
    },
    DashboardRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.Dashboard());
    },
    InvestmentPageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.InvestmentPage());
    },
    WalletRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.Wallet());
    },
    ProfilePageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.ProfilePage());
    },
    SecurityRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.Security());
    },
    PaymentMethodRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.PaymentMethod());
    },
    SupportPageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.SupportPage());
    },
    TACPageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.TACPage());
    },
    VerificationPageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.VerificationPage());
    },
    ChangePasswordRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.ChangePassword());
    },
    BankAddressRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.BankAddress());
    },
    CryptoWalletRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.CryptoWallet());
    },
    AddBankRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i22.AddBank());
    },
    VerifyBankRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i23.VerifyBank());
    },
    AddCryptoWalletRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i24.AddCryptoWallet());
    },
    VerifyCryptoWalletRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i25.VerifyCryptoWallet());
    },
    FAQPageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i26.FAQPage());
    },
    UploadPageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i27.UploadPage());
    },
    UtilityPageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i28.UtilityPage());
    },
    VerificationSuccessRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i29.VerificationSuccess());
    },
    UploadDocumentImageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i30.UploadDocumentImage());
    },
    UploadUtilityDocRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i31.UploadUtilityDoc());
    },
    CalculatorRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i32.Calculator());
    },
    NotificationsPageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i33.NotificationsPage());
    },
    SelectInvestmentMethodRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i34.SelectInvestmentMethod());
    },
    InvestmentTransactionsRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i35.InvestmentTransactions());
    },
    FortCryptoRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i36.FortCrypto());
    },
    FortDollarRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i37.FortDollar());
    },
    FortShieldRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i38.FortShield());
    },
    BankInvestmentPageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i39.BankInvestmentPage());
    },
    CryptoInvestmentPageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i40.CryptoInvestmentPage());
    },
    DomiciliaryAccountRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i41.DomiciliaryAccount());
    },
    NairaAccountRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i42.NairaAccount());
    },
    FortCryptoInvestmentRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i43.FortCryptoInvestment());
    },
    FortDollarInvestmentRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i44.FortDollarInvestment());
    },
    FortShieldInvestmentRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i45.FortShieldInvestment());
    },
    WalletOverviewRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i46.WalletOverview());
    },
    WalletTransactionsRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i47.WalletTransactions());
    },
    WithdrawalPageRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i48.WithdrawalPage());
    },
    SelectInvestmentToWithdrawRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i49.SelectInvestmentToWithdraw());
    },
    SelectWithdrawalMethodRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i50.SelectWithdrawalMethod());
    },
    WithdrawalSuccessRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i51.WithdrawalSuccess());
    },
    BankWithdrawalRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i52.BankWithdrawal());
    },
    CryptoWithdrawalRoute.name: (routeData) {
      return _i54.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i53.CryptoWithdrawal());
    }
  };

  @override
  List<_i54.RouteConfig> get routes => [
        _i54.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i54.RouteConfig(OnboardingScreenRoute.name,
            path: '/onboarding-screen'),
        _i54.RouteConfig(SignInPageRoute.name,
            path: '/sign-in-page',
            children: [
              _i54.RouteConfig(SignInFormEmailRoute.name,
                  path: 'sign-in-form-email', parent: SignInPageRoute.name),
              _i54.RouteConfig(SignInFormPhoneRoute.name,
                  path: 'sign-in-form-phone', parent: SignInPageRoute.name),
              _i54.RouteConfig(ConfirmLoginWithOTPRoute.name,
                  path: 'confirm-login-with-ot-p', parent: SignInPageRoute.name)
            ]),
        _i54.RouteConfig(SignUpFormRoute.name, path: '/sign-up-form'),
        _i54.RouteConfig(ResetPasswordRoute.name, path: '/reset-password'),
        _i54.RouteConfig(HomePageRoute.name, path: '/home-page', children: [
          _i54.RouteConfig(DashboardRoute.name,
              path: 'Dashboard',
              parent: HomePageRoute.name,
              children: [
                _i54.RouteConfig(ProfilePageRoute.name,
                    path: 'profile-page', parent: DashboardRoute.name),
                _i54.RouteConfig(SecurityRoute.name,
                    path: 'Security',
                    parent: DashboardRoute.name,
                    children: [
                      _i54.RouteConfig(ChangePasswordRoute.name,
                          path: 'change-password', parent: SecurityRoute.name)
                    ]),
                _i54.RouteConfig(PaymentMethodRoute.name,
                    path: 'payment-method',
                    parent: DashboardRoute.name,
                    children: [
                      _i54.RouteConfig(BankAddressRoute.name,
                          path: 'bank-address',
                          parent: PaymentMethodRoute.name,
                          children: [
                            _i54.RouteConfig(AddBankRoute.name,
                                path: 'add-bank',
                                parent: BankAddressRoute.name),
                            _i54.RouteConfig(VerifyBankRoute.name,
                                path: 'verify-bank',
                                parent: BankAddressRoute.name)
                          ]),
                      _i54.RouteConfig(CryptoWalletRoute.name,
                          path: 'crypto-wallet',
                          parent: PaymentMethodRoute.name,
                          children: [
                            _i54.RouteConfig(AddCryptoWalletRoute.name,
                                path: 'add-crypto-wallet',
                                parent: CryptoWalletRoute.name),
                            _i54.RouteConfig(VerifyCryptoWalletRoute.name,
                                path: 'verify-crypto-wallet',
                                parent: CryptoWalletRoute.name)
                          ])
                    ]),
                _i54.RouteConfig(SupportPageRoute.name,
                    path: 'support-page',
                    parent: DashboardRoute.name,
                    children: [
                      _i54.RouteConfig(FAQPageRoute.name,
                          path: 'f-aq-page', parent: SupportPageRoute.name)
                    ]),
                _i54.RouteConfig(TACPageRoute.name,
                    path: 't-ac-page', parent: DashboardRoute.name),
                _i54.RouteConfig(VerificationPageRoute.name,
                    path: 'verification-page',
                    parent: DashboardRoute.name,
                    children: [
                      _i54.RouteConfig(UploadPageRoute.name,
                          path: 'upload-page',
                          parent: VerificationPageRoute.name,
                          children: [
                            _i54.RouteConfig(UploadDocumentImageRoute.name,
                                path: 'upload-document-image',
                                parent: UploadPageRoute.name)
                          ]),
                      _i54.RouteConfig(UtilityPageRoute.name,
                          path: 'utility-page',
                          parent: VerificationPageRoute.name,
                          children: [
                            _i54.RouteConfig(UploadUtilityDocRoute.name,
                                path: 'upload-utility-doc',
                                parent: UtilityPageRoute.name)
                          ]),
                      _i54.RouteConfig(VerificationSuccessRoute.name,
                          path: 'verification-success',
                          parent: VerificationPageRoute.name)
                    ])
              ]),
          _i54.RouteConfig(InvestmentPageRoute.name,
              path: 'investment-page',
              parent: HomePageRoute.name,
              children: [
                _i54.RouteConfig(CalculatorRoute.name,
                    path: 'Calculator', parent: InvestmentPageRoute.name),
                _i54.RouteConfig(NotificationsPageRoute.name,
                    path: 'notifications-page',
                    parent: InvestmentPageRoute.name),
                _i54.RouteConfig(SelectInvestmentMethodRoute.name,
                    path: 'select-investment-method',
                    parent: InvestmentPageRoute.name,
                    children: [
                      _i54.RouteConfig(BankInvestmentPageRoute.name,
                          path: 'bank-investment-page',
                          parent: SelectInvestmentMethodRoute.name,
                          children: [
                            _i54.RouteConfig(DomiciliaryAccountRoute.name,
                                path: 'domiciliary-account',
                                parent: BankInvestmentPageRoute.name),
                            _i54.RouteConfig(NairaAccountRoute.name,
                                path: 'naira-account',
                                parent: BankInvestmentPageRoute.name)
                          ]),
                      _i54.RouteConfig(CryptoInvestmentPageRoute.name,
                          path: 'crypto-investment-page',
                          parent: SelectInvestmentMethodRoute.name)
                    ]),
                _i54.RouteConfig(InvestmentTransactionsRoute.name,
                    path: 'investment-transactions',
                    parent: InvestmentPageRoute.name),
                _i54.RouteConfig(FortCryptoRoute.name,
                    path: 'fort-crypto',
                    parent: InvestmentPageRoute.name,
                    children: [
                      _i54.RouteConfig(FortCryptoInvestmentRoute.name,
                          path: 'fort-crypto-investment',
                          parent: FortCryptoRoute.name)
                    ]),
                _i54.RouteConfig(FortDollarRoute.name,
                    path: 'fort-dollar',
                    parent: InvestmentPageRoute.name,
                    children: [
                      _i54.RouteConfig(FortDollarInvestmentRoute.name,
                          path: 'fort-dollar-investment',
                          parent: FortDollarRoute.name)
                    ]),
                _i54.RouteConfig(FortShieldRoute.name,
                    path: 'fort-shield',
                    parent: InvestmentPageRoute.name,
                    children: [
                      _i54.RouteConfig(FortShieldInvestmentRoute.name,
                          path: 'fort-shield-investment',
                          parent: FortShieldRoute.name)
                    ])
              ]),
          _i54.RouteConfig(WalletRoute.name,
              path: 'Wallet',
              parent: HomePageRoute.name,
              children: [
                _i54.RouteConfig(WalletOverviewRoute.name,
                    path: 'wallet-overview', parent: WalletRoute.name),
                _i54.RouteConfig(WalletTransactionsRoute.name,
                    path: 'wallet-transactions', parent: WalletRoute.name),
                _i54.RouteConfig(WithdrawalPageRoute.name,
                    path: 'withdrawal-page',
                    parent: WalletRoute.name,
                    children: [
                      _i54.RouteConfig(SelectInvestmentToWithdrawRoute.name,
                          path: 'select-investment-to-withdraw',
                          parent: WithdrawalPageRoute.name),
                      _i54.RouteConfig(SelectWithdrawalMethodRoute.name,
                          path: 'select-withdrawal-method',
                          parent: WithdrawalPageRoute.name,
                          children: [
                            _i54.RouteConfig(BankWithdrawalRoute.name,
                                path: 'bank-withdrawal',
                                parent: SelectWithdrawalMethodRoute.name),
                            _i54.RouteConfig(CryptoWithdrawalRoute.name,
                                path: 'crypto-withdrawal',
                                parent: SelectWithdrawalMethodRoute.name)
                          ]),
                      _i54.RouteConfig(WithdrawalSuccessRoute.name,
                          path: 'withdrawal-success',
                          parent: WithdrawalPageRoute.name)
                    ])
              ])
        ])
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i54.PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.OnboardingScreen]
class OnboardingScreenRoute extends _i54.PageRouteInfo<void> {
  const OnboardingScreenRoute()
      : super(OnboardingScreenRoute.name, path: '/onboarding-screen');

  static const String name = 'OnboardingScreenRoute';
}

/// generated route for
/// [_i3.SignInPage]
class SignInPageRoute extends _i54.PageRouteInfo<void> {
  const SignInPageRoute({List<_i54.PageRouteInfo>? children})
      : super(SignInPageRoute.name,
            path: '/sign-in-page', initialChildren: children);

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i4.SignUpForm]
class SignUpFormRoute extends _i54.PageRouteInfo<void> {
  const SignUpFormRoute() : super(SignUpFormRoute.name, path: '/sign-up-form');

  static const String name = 'SignUpFormRoute';
}

/// generated route for
/// [_i5.ResetPassword]
class ResetPasswordRoute extends _i54.PageRouteInfo<void> {
  const ResetPasswordRoute()
      : super(ResetPasswordRoute.name, path: '/reset-password');

  static const String name = 'ResetPasswordRoute';
}

/// generated route for
/// [_i6.HomePage]
class HomePageRoute extends _i54.PageRouteInfo<void> {
  const HomePageRoute({List<_i54.PageRouteInfo>? children})
      : super(HomePageRoute.name,
            path: '/home-page', initialChildren: children);

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i7.SignInFormEmail]
class SignInFormEmailRoute extends _i54.PageRouteInfo<void> {
  const SignInFormEmailRoute()
      : super(SignInFormEmailRoute.name, path: 'sign-in-form-email');

  static const String name = 'SignInFormEmailRoute';
}

/// generated route for
/// [_i8.SignInFormPhone]
class SignInFormPhoneRoute extends _i54.PageRouteInfo<void> {
  const SignInFormPhoneRoute()
      : super(SignInFormPhoneRoute.name, path: 'sign-in-form-phone');

  static const String name = 'SignInFormPhoneRoute';
}

/// generated route for
/// [_i9.ConfirmLoginWithOTP]
class ConfirmLoginWithOTPRoute extends _i54.PageRouteInfo<void> {
  const ConfirmLoginWithOTPRoute()
      : super(ConfirmLoginWithOTPRoute.name, path: 'confirm-login-with-ot-p');

  static const String name = 'ConfirmLoginWithOTPRoute';
}

/// generated route for
/// [_i10.Dashboard]
class DashboardRoute extends _i54.PageRouteInfo<void> {
  const DashboardRoute({List<_i54.PageRouteInfo>? children})
      : super(DashboardRoute.name,
            path: 'Dashboard', initialChildren: children);

  static const String name = 'DashboardRoute';
}

/// generated route for
/// [_i11.InvestmentPage]
class InvestmentPageRoute extends _i54.PageRouteInfo<void> {
  const InvestmentPageRoute({List<_i54.PageRouteInfo>? children})
      : super(InvestmentPageRoute.name,
            path: 'investment-page', initialChildren: children);

  static const String name = 'InvestmentPageRoute';
}

/// generated route for
/// [_i12.Wallet]
class WalletRoute extends _i54.PageRouteInfo<void> {
  const WalletRoute({List<_i54.PageRouteInfo>? children})
      : super(WalletRoute.name, path: 'Wallet', initialChildren: children);

  static const String name = 'WalletRoute';
}

/// generated route for
/// [_i13.ProfilePage]
class ProfilePageRoute extends _i54.PageRouteInfo<void> {
  const ProfilePageRoute() : super(ProfilePageRoute.name, path: 'profile-page');

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [_i14.Security]
class SecurityRoute extends _i54.PageRouteInfo<void> {
  const SecurityRoute({List<_i54.PageRouteInfo>? children})
      : super(SecurityRoute.name, path: 'Security', initialChildren: children);

  static const String name = 'SecurityRoute';
}

/// generated route for
/// [_i15.PaymentMethod]
class PaymentMethodRoute extends _i54.PageRouteInfo<void> {
  const PaymentMethodRoute({List<_i54.PageRouteInfo>? children})
      : super(PaymentMethodRoute.name,
            path: 'payment-method', initialChildren: children);

  static const String name = 'PaymentMethodRoute';
}

/// generated route for
/// [_i16.SupportPage]
class SupportPageRoute extends _i54.PageRouteInfo<void> {
  const SupportPageRoute({List<_i54.PageRouteInfo>? children})
      : super(SupportPageRoute.name,
            path: 'support-page', initialChildren: children);

  static const String name = 'SupportPageRoute';
}

/// generated route for
/// [_i17.TACPage]
class TACPageRoute extends _i54.PageRouteInfo<void> {
  const TACPageRoute() : super(TACPageRoute.name, path: 't-ac-page');

  static const String name = 'TACPageRoute';
}

/// generated route for
/// [_i18.VerificationPage]
class VerificationPageRoute extends _i54.PageRouteInfo<void> {
  const VerificationPageRoute({List<_i54.PageRouteInfo>? children})
      : super(VerificationPageRoute.name,
            path: 'verification-page', initialChildren: children);

  static const String name = 'VerificationPageRoute';
}

/// generated route for
/// [_i19.ChangePassword]
class ChangePasswordRoute extends _i54.PageRouteInfo<void> {
  const ChangePasswordRoute()
      : super(ChangePasswordRoute.name, path: 'change-password');

  static const String name = 'ChangePasswordRoute';
}

/// generated route for
/// [_i20.BankAddress]
class BankAddressRoute extends _i54.PageRouteInfo<void> {
  const BankAddressRoute({List<_i54.PageRouteInfo>? children})
      : super(BankAddressRoute.name,
            path: 'bank-address', initialChildren: children);

  static const String name = 'BankAddressRoute';
}

/// generated route for
/// [_i21.CryptoWallet]
class CryptoWalletRoute extends _i54.PageRouteInfo<void> {
  const CryptoWalletRoute({List<_i54.PageRouteInfo>? children})
      : super(CryptoWalletRoute.name,
            path: 'crypto-wallet', initialChildren: children);

  static const String name = 'CryptoWalletRoute';
}

/// generated route for
/// [_i22.AddBank]
class AddBankRoute extends _i54.PageRouteInfo<void> {
  const AddBankRoute() : super(AddBankRoute.name, path: 'add-bank');

  static const String name = 'AddBankRoute';
}

/// generated route for
/// [_i23.VerifyBank]
class VerifyBankRoute extends _i54.PageRouteInfo<void> {
  const VerifyBankRoute() : super(VerifyBankRoute.name, path: 'verify-bank');

  static const String name = 'VerifyBankRoute';
}

/// generated route for
/// [_i24.AddCryptoWallet]
class AddCryptoWalletRoute extends _i54.PageRouteInfo<void> {
  const AddCryptoWalletRoute()
      : super(AddCryptoWalletRoute.name, path: 'add-crypto-wallet');

  static const String name = 'AddCryptoWalletRoute';
}

/// generated route for
/// [_i25.VerifyCryptoWallet]
class VerifyCryptoWalletRoute extends _i54.PageRouteInfo<void> {
  const VerifyCryptoWalletRoute()
      : super(VerifyCryptoWalletRoute.name, path: 'verify-crypto-wallet');

  static const String name = 'VerifyCryptoWalletRoute';
}

/// generated route for
/// [_i26.FAQPage]
class FAQPageRoute extends _i54.PageRouteInfo<void> {
  const FAQPageRoute() : super(FAQPageRoute.name, path: 'f-aq-page');

  static const String name = 'FAQPageRoute';
}

/// generated route for
/// [_i27.UploadPage]
class UploadPageRoute extends _i54.PageRouteInfo<void> {
  const UploadPageRoute({List<_i54.PageRouteInfo>? children})
      : super(UploadPageRoute.name,
            path: 'upload-page', initialChildren: children);

  static const String name = 'UploadPageRoute';
}

/// generated route for
/// [_i28.UtilityPage]
class UtilityPageRoute extends _i54.PageRouteInfo<void> {
  const UtilityPageRoute({List<_i54.PageRouteInfo>? children})
      : super(UtilityPageRoute.name,
            path: 'utility-page', initialChildren: children);

  static const String name = 'UtilityPageRoute';
}

/// generated route for
/// [_i29.VerificationSuccess]
class VerificationSuccessRoute extends _i54.PageRouteInfo<void> {
  const VerificationSuccessRoute()
      : super(VerificationSuccessRoute.name, path: 'verification-success');

  static const String name = 'VerificationSuccessRoute';
}

/// generated route for
/// [_i30.UploadDocumentImage]
class UploadDocumentImageRoute extends _i54.PageRouteInfo<void> {
  const UploadDocumentImageRoute()
      : super(UploadDocumentImageRoute.name, path: 'upload-document-image');

  static const String name = 'UploadDocumentImageRoute';
}

/// generated route for
/// [_i31.UploadUtilityDoc]
class UploadUtilityDocRoute extends _i54.PageRouteInfo<void> {
  const UploadUtilityDocRoute()
      : super(UploadUtilityDocRoute.name, path: 'upload-utility-doc');

  static const String name = 'UploadUtilityDocRoute';
}

/// generated route for
/// [_i32.Calculator]
class CalculatorRoute extends _i54.PageRouteInfo<void> {
  const CalculatorRoute() : super(CalculatorRoute.name, path: 'Calculator');

  static const String name = 'CalculatorRoute';
}

/// generated route for
/// [_i33.NotificationsPage]
class NotificationsPageRoute extends _i54.PageRouteInfo<void> {
  const NotificationsPageRoute()
      : super(NotificationsPageRoute.name, path: 'notifications-page');

  static const String name = 'NotificationsPageRoute';
}

/// generated route for
/// [_i34.SelectInvestmentMethod]
class SelectInvestmentMethodRoute extends _i54.PageRouteInfo<void> {
  const SelectInvestmentMethodRoute({List<_i54.PageRouteInfo>? children})
      : super(SelectInvestmentMethodRoute.name,
            path: 'select-investment-method', initialChildren: children);

  static const String name = 'SelectInvestmentMethodRoute';
}

/// generated route for
/// [_i35.InvestmentTransactions]
class InvestmentTransactionsRoute extends _i54.PageRouteInfo<void> {
  const InvestmentTransactionsRoute()
      : super(InvestmentTransactionsRoute.name,
            path: 'investment-transactions');

  static const String name = 'InvestmentTransactionsRoute';
}

/// generated route for
/// [_i36.FortCrypto]
class FortCryptoRoute extends _i54.PageRouteInfo<void> {
  const FortCryptoRoute({List<_i54.PageRouteInfo>? children})
      : super(FortCryptoRoute.name,
            path: 'fort-crypto', initialChildren: children);

  static const String name = 'FortCryptoRoute';
}

/// generated route for
/// [_i37.FortDollar]
class FortDollarRoute extends _i54.PageRouteInfo<void> {
  const FortDollarRoute({List<_i54.PageRouteInfo>? children})
      : super(FortDollarRoute.name,
            path: 'fort-dollar', initialChildren: children);

  static const String name = 'FortDollarRoute';
}

/// generated route for
/// [_i38.FortShield]
class FortShieldRoute extends _i54.PageRouteInfo<void> {
  const FortShieldRoute({List<_i54.PageRouteInfo>? children})
      : super(FortShieldRoute.name,
            path: 'fort-shield', initialChildren: children);

  static const String name = 'FortShieldRoute';
}

/// generated route for
/// [_i39.BankInvestmentPage]
class BankInvestmentPageRoute extends _i54.PageRouteInfo<void> {
  const BankInvestmentPageRoute({List<_i54.PageRouteInfo>? children})
      : super(BankInvestmentPageRoute.name,
            path: 'bank-investment-page', initialChildren: children);

  static const String name = 'BankInvestmentPageRoute';
}

/// generated route for
/// [_i40.CryptoInvestmentPage]
class CryptoInvestmentPageRoute extends _i54.PageRouteInfo<void> {
  const CryptoInvestmentPageRoute()
      : super(CryptoInvestmentPageRoute.name, path: 'crypto-investment-page');

  static const String name = 'CryptoInvestmentPageRoute';
}

/// generated route for
/// [_i41.DomiciliaryAccount]
class DomiciliaryAccountRoute extends _i54.PageRouteInfo<void> {
  const DomiciliaryAccountRoute()
      : super(DomiciliaryAccountRoute.name, path: 'domiciliary-account');

  static const String name = 'DomiciliaryAccountRoute';
}

/// generated route for
/// [_i42.NairaAccount]
class NairaAccountRoute extends _i54.PageRouteInfo<void> {
  const NairaAccountRoute()
      : super(NairaAccountRoute.name, path: 'naira-account');

  static const String name = 'NairaAccountRoute';
}

/// generated route for
/// [_i43.FortCryptoInvestment]
class FortCryptoInvestmentRoute extends _i54.PageRouteInfo<void> {
  const FortCryptoInvestmentRoute()
      : super(FortCryptoInvestmentRoute.name, path: 'fort-crypto-investment');

  static const String name = 'FortCryptoInvestmentRoute';
}

/// generated route for
/// [_i44.FortDollarInvestment]
class FortDollarInvestmentRoute extends _i54.PageRouteInfo<void> {
  const FortDollarInvestmentRoute()
      : super(FortDollarInvestmentRoute.name, path: 'fort-dollar-investment');

  static const String name = 'FortDollarInvestmentRoute';
}

/// generated route for
/// [_i45.FortShieldInvestment]
class FortShieldInvestmentRoute extends _i54.PageRouteInfo<void> {
  const FortShieldInvestmentRoute()
      : super(FortShieldInvestmentRoute.name, path: 'fort-shield-investment');

  static const String name = 'FortShieldInvestmentRoute';
}

/// generated route for
/// [_i46.WalletOverview]
class WalletOverviewRoute extends _i54.PageRouteInfo<void> {
  const WalletOverviewRoute()
      : super(WalletOverviewRoute.name, path: 'wallet-overview');

  static const String name = 'WalletOverviewRoute';
}

/// generated route for
/// [_i47.WalletTransactions]
class WalletTransactionsRoute extends _i54.PageRouteInfo<void> {
  const WalletTransactionsRoute()
      : super(WalletTransactionsRoute.name, path: 'wallet-transactions');

  static const String name = 'WalletTransactionsRoute';
}

/// generated route for
/// [_i48.WithdrawalPage]
class WithdrawalPageRoute extends _i54.PageRouteInfo<void> {
  const WithdrawalPageRoute({List<_i54.PageRouteInfo>? children})
      : super(WithdrawalPageRoute.name,
            path: 'withdrawal-page', initialChildren: children);

  static const String name = 'WithdrawalPageRoute';
}

/// generated route for
/// [_i49.SelectInvestmentToWithdraw]
class SelectInvestmentToWithdrawRoute extends _i54.PageRouteInfo<void> {
  const SelectInvestmentToWithdrawRoute()
      : super(SelectInvestmentToWithdrawRoute.name,
            path: 'select-investment-to-withdraw');

  static const String name = 'SelectInvestmentToWithdrawRoute';
}

/// generated route for
/// [_i50.SelectWithdrawalMethod]
class SelectWithdrawalMethodRoute extends _i54.PageRouteInfo<void> {
  const SelectWithdrawalMethodRoute({List<_i54.PageRouteInfo>? children})
      : super(SelectWithdrawalMethodRoute.name,
            path: 'select-withdrawal-method', initialChildren: children);

  static const String name = 'SelectWithdrawalMethodRoute';
}

/// generated route for
/// [_i51.WithdrawalSuccess]
class WithdrawalSuccessRoute extends _i54.PageRouteInfo<void> {
  const WithdrawalSuccessRoute()
      : super(WithdrawalSuccessRoute.name, path: 'withdrawal-success');

  static const String name = 'WithdrawalSuccessRoute';
}

/// generated route for
/// [_i52.BankWithdrawal]
class BankWithdrawalRoute extends _i54.PageRouteInfo<void> {
  const BankWithdrawalRoute()
      : super(BankWithdrawalRoute.name, path: 'bank-withdrawal');

  static const String name = 'BankWithdrawalRoute';
}

/// generated route for
/// [_i53.CryptoWithdrawal]
class CryptoWithdrawalRoute extends _i54.PageRouteInfo<void> {
  const CryptoWithdrawalRoute()
      : super(CryptoWithdrawalRoute.name, path: 'crypto-withdrawal');

  static const String name = 'CryptoWithdrawalRoute';
}
