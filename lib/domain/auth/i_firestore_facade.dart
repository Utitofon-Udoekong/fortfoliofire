
import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/user/bank_address.dart';
import 'package:fortfolio/domain/user/crypto_wallet.dart';
import 'package:fortfolio/domain/user/investment.dart';
import 'package:fortfolio/domain/user/withdrawal_item.dart';


abstract class IFirestoreFacade {
  Future<Option<String>> createInvestmentTransaction( {required InvestmentItem investmentItem});
  Future<Option<String>> addBank({required BankAddress bankAddress});
  Future<Option<String>> addCryptoWallet({required CryptoWallet cryptoWallet});
  Future<Option<String>> addGeneralCryptoWallet({required CryptoWallet cryptoWallet});
  Future<Option<List<BankAddress>>> getBankAddress();
  Future<Option<List<CryptoWallet>>> getCryptoWallets();
  Future<Option<List<CryptoWallet>>> getGeneralCryptoWallets();
  // Future<Option<List<InvestmentItem>>> getInvestments();
  Future<Option<List<InvestmentItem>>> getFortShieldInvestments();
  Future<Option<List<InvestmentItem>>> getFortDollarInvestments();
  Future<Option<List<InvestmentItem>>> getFortCryptoInvestments();
  Future<Option<List<WithdrawalItem>>> getWithdrawals();
  Future<Option<String>> createWithdrawalTransaction( {required WithdrawalItem withdrawalItem});
}
