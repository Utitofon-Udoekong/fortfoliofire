import 'package:auto_route/annotations.dart';
import 'package:fortfolio/presentation/authentication/sign_in/sign_in_page.dart';
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
import 'package:fortfolio/presentation/home/investment/transactions/transactions.dart';
import 'package:fortfolio/presentation/home/investment/type/fortcrypto/fortcrypto.dart';
import 'package:fortfolio/presentation/home/investment/type/fortcrypto/invest.dart';
import 'package:fortfolio/presentation/home/investment/type/fortdollar/fortdollar.dart';
import 'package:fortfolio/presentation/home/investment/type/fortdollar/invest.dart';
import 'package:fortfolio/presentation/home/investment/type/fortshield/fortshield.dart';
import 'package:fortfolio/presentation/home/investment/type/fortshield/invest.dart';
import 'package:fortfolio/presentation/home/wallet/overview/wallet_overview.dart';
import 'package:fortfolio/presentation/home/wallet/success.dart';
import 'package:fortfolio/presentation/home/wallet/transactions/transactions.dart';
import 'package:fortfolio/presentation/home/wallet/wallet.dart';
import 'package:fortfolio/presentation/home/wallet/withdraw/bank/bank_withdrawal.dart';
import 'package:fortfolio/presentation/home/wallet/withdraw/crypto/crypto_withdrawal.dart';
import 'package:fortfolio/presentation/home/wallet/withdraw/select_investment.dart';
import 'package:fortfolio/presentation/home/wallet/withdraw/select_method.dart';
import 'package:fortfolio/presentation/home/wallet/withdraw/withdrawal.dart';
import 'package:fortfolio/presentation/splash/splash_Screen.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SplashScreen, initial: true),
  AutoRoute(page: SignInPage),
  AutoRoute(page: SignUpForm),
  AutoRoute(page: HomePage, children: <AutoRoute>[
    AutoRoute(page: Dashboard, children: <AutoRoute>[
      AutoRoute(page: ProfilePage),
      AutoRoute(
        page: Security,
        children: <AutoRoute>[AutoRoute(page: ChangePassword)],
      ),
      AutoRoute(
        page: PaymentMethod,
        children: <AutoRoute>[
          AutoRoute(
            page: BankAddress,
            children: <AutoRoute>[
              AutoRoute(page: AddBank),
              AutoRoute(page: VerifyBank),
            ],
          ),
          AutoRoute(
            page: CryptoWallet,
            children: <AutoRoute>[
              AutoRoute(page: AddCryptoWallet),
              AutoRoute(page: VerifyCryptoWallet),
            ],
          ),
        ],
      ),
      AutoRoute(
        page: SupportPage,
        children: <AutoRoute>[AutoRoute(page: FAQPage)],
      ),
      AutoRoute(page: TACPage),
      AutoRoute(
        page: VerificationPage,
        children: <AutoRoute>[
          AutoRoute(
              page: UploadPage,
              children: <AutoRoute>[AutoRoute(page: UploadDocumentImage)]),
          AutoRoute(
              page: UtilityPage,
              children: <AutoRoute>[AutoRoute(page: UploadUtilityDoc)]),
          AutoRoute(page: VerificationSuccess)
        ],
      )
    ]),
    AutoRoute(
      page: InvestmentPage,
      children: <AutoRoute>[
        AutoRoute(page: Calculator),
        AutoRoute(page: NotificationsPage),
        AutoRoute(
          page: SelectInvestmentMethod,
          children: <AutoRoute>[
            AutoRoute(
              page: BankInvestmentPage,
              children: <AutoRoute>[
                AutoRoute(page: DomiciliaryAccount),
                AutoRoute(page: NairaAccount)
              ],
            ),
            AutoRoute(page: CryptoInvestmentPage)
          ],
        ),
        AutoRoute(page: InvestmentTransactions),
        AutoRoute(
          page: FortCrypto,
          children: <AutoRoute>[
            AutoRoute(page: FortCryptoInvestment),
          ],
        ),
        AutoRoute(
          page: FortDollar,
          children: <AutoRoute>[
            AutoRoute(page: FortDollarInvestment),
          ],
        ),
        AutoRoute(
          page: FortShield,
          children: <AutoRoute>[
            AutoRoute(page: FortShieldInvestment),
          ],
        )
      ],
    ),
    AutoRoute(
      page: Wallet,
      children: <AutoRoute>[
        AutoRoute(page: WalletOverview),
        AutoRoute(page: WalletTransactions),
        AutoRoute(
          page: WithdrawalPage,
          children: <AutoRoute>[
            AutoRoute(page: SelectInvestmentToWithdraw),
            AutoRoute(page: SelectWithdrawalMethod, children: <AutoRoute>[
              AutoRoute(page: BankWithdrawal),
              AutoRoute(page: CryptoWithdrawal),
            ]),
            AutoRoute(page: WithdrawalSuccess)
          ],
        )
      ],
    )
  ])
])
class $AppRouter {}
