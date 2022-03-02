
import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/auth/firestore_failure.dart';
import 'package:fortfolio/domain/user/bank_address.dart';
import 'package:fortfolio/domain/user/crypto_wallet.dart';
import 'package:fortfolio/domain/user/investment.dart';
import 'package:fortfolio/domain/user/withdrawal_item.dart';

import 'auth_failure.dart';
import 'auth_user_model.dart';

abstract class IFirestoreFacade {
  Future<Option<String>> createInvestmentTransaction( {required InvestmentItem investmentItem});
  Future<Option<String>> addBank({required BankAddress bankAddress});
  Future<Option<String>> addCryptoWallet({required CryptoWallet cryptoWallet});
  Future<Option<String>> addGeneralCryptoWallet({required CryptoWallet cryptoWallet});
  Future<Option<BankAddress>> getBankAddress();
  Future<Option<CryptoWallet>> getCryptoWallets();
  Future<Option<CryptoWallet>> getGeneralCryptoWallets();
  Future<Option<String>> createWithdrawalTransaction( {required WithdrawalItem withdrawalItem});
}
