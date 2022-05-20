import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:fortfolio/presentation/authentication/forgot_password/reset_password.dart';
import 'package:fortfolio/presentation/authentication/sign_in/confirm_login_otp.dart';
import 'package:fortfolio/presentation/authentication/sign_in/sign_in_form_email.dart';
import 'package:fortfolio/presentation/authentication/sign_in/sign_in_form_phone.dart';
import 'package:fortfolio/presentation/authentication/sign_up/confirm_signup_otp.dart';
import 'package:fortfolio/presentation/authentication/sign_up/sign_up_form.dart';
import 'package:fortfolio/presentation/home/dashboard/dashboard.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/bank/add_bank.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/bank/bank_wallet.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/bank/verify_bank.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/crypto/add_crypto_wallet.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/crypto/crypto_wallet.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/crypto/verify_crypto_wallet.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/payment_method.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/success.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/profile/confirm_phone_update.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/profile/profile.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/security/change_password.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/security/security.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/security/set_engine.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/security/set_pin.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/support/faq.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/support/support.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/tac/terms_of_service.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/transactions/transactions.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/verification/upload.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/verification/upload_document.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/verification/utility/upload_utility_doc.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/verification/utility/utility.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/verification/verification.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/verification/verification_success.dart';
import 'package:fortfolio/presentation/home/home_page.dart';
import 'package:fortfolio/presentation/home/investment/calculator/investment_calculator.dart';
import 'package:fortfolio/presentation/home/investment/investment.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/notifications/notifications.dart';
import 'package:fortfolio/presentation/home/investment/payment/bank/bank_invest.dart';
import 'package:fortfolio/presentation/home/investment/payment/bank/domiciliary.dart';
import 'package:fortfolio/presentation/home/investment/payment/bank/naira.dart';
import 'package:fortfolio/presentation/home/investment/payment/crypto/crypto_invest.dart';
import 'package:fortfolio/presentation/home/investment/payment/select_method.dart';
import 'package:fortfolio/presentation/home/investment/security/check.dart';
import 'package:fortfolio/presentation/home/investment/success.dart';
import 'package:fortfolio/presentation/home/investment/type/fortcrypto/fortcrypto.dart';
import 'package:fortfolio/presentation/home/investment/type/fortcrypto/invest.dart';
import 'package:fortfolio/presentation/home/investment/type/fortdollar/fortdollar.dart';
import 'package:fortfolio/presentation/home/investment/type/fortdollar/invest.dart';
import 'package:fortfolio/presentation/home/investment/type/fortshield/fortshield.dart';
import 'package:fortfolio/presentation/home/investment/type/fortshield/invest.dart';
import 'package:fortfolio/presentation/home/wallet/investment/fortdollar_info.dart';
import 'package:fortfolio/presentation/home/wallet/overview/wallet_overview.dart';
import 'package:fortfolio/presentation/home/wallet/success.dart';
import 'package:fortfolio/presentation/home/wallet/transactions/transactions.dart';
import 'package:fortfolio/presentation/home/wallet/wallet.dart';
import 'package:fortfolio/presentation/home/wallet/withdraw/bank/bank_withdrawal.dart';
import 'package:fortfolio/presentation/home/wallet/withdraw/crypto/crypto_withdrawal.dart';
import 'package:fortfolio/presentation/home/wallet/withdraw/security/check.dart';
import 'package:fortfolio/presentation/home/wallet/withdraw/select_method.dart';
import 'package:fortfolio/presentation/home/wallet/withdraw/withdrawal.dart';
import 'package:fortfolio/presentation/network/no_connection.dart';
import 'package:fortfolio/presentation/splash/onboarding.dart';
import 'package:fortfolio/presentation/splash/splash_Screen.dart';

import '../authentication/sign_up/sign_up_form_phone.dart';
import '../home/wallet/investment/fortcrypto_info.dart';
import '../home/wallet/investment/fortshield_info.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SplashScreen, initial: true),
  AutoRoute(page: OnboardingScreen),
  AutoRoute(page: SignInFormEmail),
  AutoRoute(page: SignInFormPhone),
  AutoRoute(page: SignUpFormPhone),
  AutoRoute(page: ConfirmLoginWithOTP),
  AutoRoute(page: ConfirmSignupWithOTP),
  AutoRoute(page: ConfirmPhoneUpdate),
  AutoRoute(page: SignUpForm),
  AutoRoute(page: ResetPassword),
  AutoRoute(page: NotificationsPage),
  AutoRoute( page: ProfilePage),
  AutoRoute( page: DashboardTransactions),
  AutoRoute( page: Calculator),
  AutoRoute( page: Security),
  AutoRoute( page: ChangePassword),
  AutoRoute( page: SetPin),
  AutoRoute( page: SetPinEngine),
  AutoRoute( page: CheckInvestment),
  AutoRoute( page: CheckWithdrawal),
  AutoRoute( page: AddBank),
  AutoRoute( page: VerifyBank),
  AutoRoute( page: AddCryptoWallet),
  AutoRoute( page: VerifyCryptoWallet),
  AutoRoute( page: BankAddressPage),
  AutoRoute( page: CryptoWalletPage),
  AutoRoute( page: PaymentMethodSuccess),
  AutoRoute( page: PaymentMethod),
  AutoRoute( page: FAQPage),
  AutoRoute( page: SupportPage),
  AutoRoute( page: TACPage),
  AutoRoute( page: UploadDocumentImage),
  AutoRoute( page: UploadPage),
  AutoRoute( page: UtilityPage),
  AutoRoute( page: UploadUtilityDoc),
  AutoRoute( page: VerificationPage),
  AutoRoute( page: VerificationSuccess),
  AutoRoute( page: SelectInvestmentMethod),
  AutoRoute( page: BankInvestmentPage),
  AutoRoute( page: NairaAccount),
  AutoRoute( page: DomiciliaryAccount),
  AutoRoute( page: CryptoInvestmentPage),
  AutoRoute( page: FortCrypto),
  AutoRoute( page: FortCryptoInvestment),
  AutoRoute( page: FortDollar),
  AutoRoute( page: FortDollarInvestment),
  AutoRoute( page: FortShield),
  AutoRoute( page: FortShieldInvestment),
  AutoRoute( page: WalletOverview),
  AutoRoute( page: WalletTransactions),
  
  AutoRoute( page: SelectWithdrawalMethod),
  AutoRoute( page: BankWithdrawal),
  AutoRoute( page: CryptoWithdrawal),
  AutoRoute( page: FortDollarInvestmentInfo),
  AutoRoute( page: FortShieldInvestmentInfo),
  AutoRoute( page: FortCryptoInvestmentInfo),
  AutoRoute( page: WithdrawalPage),
  AutoRoute( page: WithdrawalSuccess),
  AutoRoute( page: InvestmentSuccess),
  AutoRoute( page: NoInternetPage),
  AutoRoute(path: "/home", page: HomePage, children: <AutoRoute>[
    AutoRoute(path: "dashboard", page: Dashboard),
    AutoRoute(path: "investments", page: InvestmentPage),
    AutoRoute(path: "wallet", page: Wallet),
  ])
])
class $AppRouter {}
