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
import 'package:fortfolio/presentation/home/dashboard/screens/profile/profile.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/security/change_password.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/security/security.dart';
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
import 'package:fortfolio/presentation/home/investment/notifications/notifications.dart';
import 'package:fortfolio/presentation/home/investment/payment/bank/bank_invest.dart';
import 'package:fortfolio/presentation/home/investment/payment/bank/domiciliary.dart';
import 'package:fortfolio/presentation/home/investment/payment/bank/naira.dart';
import 'package:fortfolio/presentation/home/investment/payment/crypto/crypto_invest.dart';
import 'package:fortfolio/presentation/home/investment/payment/select_method.dart';
import 'package:fortfolio/presentation/home/investment/type/fortcrypto/fortcrypto.dart';
import 'package:fortfolio/presentation/home/investment/type/fortcrypto/invest.dart';
import 'package:fortfolio/presentation/home/investment/type/fortdollar/fortdollar.dart';
import 'package:fortfolio/presentation/home/investment/type/fortdollar/invest.dart';
import 'package:fortfolio/presentation/home/investment/type/fortshield/fortshield.dart';
import 'package:fortfolio/presentation/home/investment/type/fortshield/invest.dart';
import 'package:fortfolio/presentation/home/wallet/investment/fortdollar_info.dart';
import 'package:fortfolio/presentation/home/wallet/overview/wallet_engine.dart';
import 'package:fortfolio/presentation/home/wallet/overview/wallet_overview.dart';
import 'package:fortfolio/presentation/home/wallet/success.dart';
import 'package:fortfolio/presentation/home/wallet/transactions/transactions.dart';
import 'package:fortfolio/presentation/home/wallet/wallet.dart';
import 'package:fortfolio/presentation/home/wallet/withdraw/bank/bank_withdrawal.dart';
import 'package:fortfolio/presentation/home/wallet/withdraw/crypto/crypto_withdrawal.dart';
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
  AutoRoute(page: SignUpForm),
  AutoRoute(page: ResetPassword),
  AutoRoute(path: "notificationsPage", page: NotificationsPage),
  AutoRoute(path: "profilePage", page: ProfilePage),
  AutoRoute(path: "dashboardTransactions", page: DashboardTransactions),
  AutoRoute(path: "calculator", page: Calculator),
  AutoRoute(path: "security", page: Security),
  AutoRoute(path: "changepassword", page: ChangePassword),
  AutoRoute(path: "addBank", page: AddBank),
  AutoRoute(path: "verifyBank", page: VerifyBank),
  AutoRoute(path: "addCryptoWallet", page: AddCryptoWallet),
  AutoRoute(path: "verifyCryptoWallet", page: VerifyCryptoWallet),
  AutoRoute(path: "bankPage", page: BankAddress),
  AutoRoute(path: "cryptoWalletPage", page: CryptoWallet),
  AutoRoute(path: "paymentmethod", page: PaymentMethod),
  AutoRoute(path: "faq", page: FAQPage),
  AutoRoute(path: "support", page: SupportPage),
  AutoRoute(path: "tac", page: TACPage),
  AutoRoute(path: "uploadDocumentImage", page: UploadDocumentImage),
  AutoRoute(path: "uploadPage", page: UploadPage),
  AutoRoute(path: "utilityPage", page: UtilityPage),
  AutoRoute(path: "uploadUtilityDocument", page: UploadUtilityDoc),
  AutoRoute(path: "verificationPage", page: VerificationPage),
  AutoRoute(path: "uploadVerificationSuccess", page: VerificationSuccess),
  AutoRoute(path: "selectInvestmentMethod", page: SelectInvestmentMethod),
  AutoRoute(path: "bankInvestment", page: BankInvestmentPage),
  AutoRoute(path: "naira", page: NairaAccount),
  AutoRoute(path: "dollar", page: DomiciliaryAccount),
  AutoRoute(path: "cryptoInvestment", page: CryptoInvestmentPage),
  AutoRoute(path: "fortcrypto", page: FortCrypto),
  AutoRoute(path: "fortcryptoinvest", page: FortCryptoInvestment),
  AutoRoute(path: "fortdollar", page: FortDollar),
  AutoRoute(path: "fortdollarinvest", page: FortDollarInvestment),
  AutoRoute(path: "fortshield", page: FortShield),
  AutoRoute(path: "fortshieldinvest", page: FortShieldInvestment),
  AutoRoute(path: "walletOverview", page: WalletOverview),
  AutoRoute(path: "walletOverviewEngine", page: WalletOverviewEngine),
  AutoRoute(path: "walletTransactions", page: WalletTransactions),
  
  AutoRoute(path: "selectWithdrawalMethod", page: SelectWithdrawalMethod),
  AutoRoute(path: "bankwithdrawal", page: BankWithdrawal),
  AutoRoute(path: "cryptowithdrawal", page: CryptoWithdrawal),
  AutoRoute(path: "fortdollarinvestinfo", page: FortDollarInvestmentInfo),
  AutoRoute(path: "fortshieldinvestinfo", page: FortShieldInvestmentInfo),
  AutoRoute(path: "fortcryptoinvestinfo", page: FortCryptoInvestmentInfo),
  AutoRoute(path: "withdrawPage", page: WithdrawalPage),
  AutoRoute(path: "withdrawalSuccess", page: WithdrawalSuccess),
  AutoRoute(path: "noInternet", page: NoInternetPage),
  AutoRoute(path: "/home", page: HomePage, children: <AutoRoute>[
    AutoRoute(path: "dashboard", page: Dashboard),
    AutoRoute(path: "investments", page: InvestmentPage),
    AutoRoute(path: "wallet", page: Wallet),
  ])
])
class $AppRouter {}
