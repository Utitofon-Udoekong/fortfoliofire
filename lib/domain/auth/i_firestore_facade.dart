
import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/user/bank_address.dart';
import 'package:fortfolio/domain/user/crypto_wallet.dart';
import 'package:fortfolio/domain/user/investment.dart';
import 'package:fortfolio/domain/user/kyc_item.dart';
import 'package:fortfolio/domain/user/notification_item.dart';
import 'package:fortfolio/domain/user/withdrawal_item.dart';


abstract class IFirestoreFacade {
  Future<Either<String,String>> createInvestmentTransaction( {required InvestmentItem investmentItem});
  Future<Either<String,String>> harvestInvestment( {required String docId, required int amount});
  Future<Option<String>> addBank({required BankAddress bankAddress});
  Future<Either<String,String>> addCryptoWallet({required CryptoWallet cryptoWallet});
  Future<Either<String,String>> addGeneralCryptoWallet({required CryptoWallet cryptoWallet});
  Future<Option<List<NotificationItem>>> getNotifications();
  Future<Option<List<BankAddress>>> getBankAddress();
  Future<Option<List<CryptoWallet>>> getCryptoWallets();
  Future<Option<List<CryptoWallet>>> getGeneralCryptoWallets();
  // Future<Option<List<InvestmentItem>>> getInvestments();
  Future<Option<List<InvestmentItem>>> getFortShieldInvestments();
  Future<Option<List<InvestmentItem>>> getFortDollarInvestments();
  Future<Option<List<InvestmentItem>>> getFortCryptoInvestments();
  Future<Option<List<WithdrawalItem>>> getWithdrawals();
  Future<Either<String,String>> createWithdrawalTransaction( {required WithdrawalItem withdrawalItem});
  Future<Either<String,String>> createNotification( {required NotificationItem notificationItem});
  Future<Either<String,String>> createKYC( {required KYCItem kycItem});
  Future<Either<String,String>> deleteNotification( {required NotificationItem notificationItem});
  Future<Either<String,String>> deleteAllNotifications();
}
