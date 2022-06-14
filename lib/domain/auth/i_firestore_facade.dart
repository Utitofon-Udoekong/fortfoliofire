
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/user/bank_address.dart';
import 'package:fortfolio/domain/user/crypto_wallet.dart';
import 'package:fortfolio/domain/user/investment.dart';
import 'package:fortfolio/domain/user/kyc_item.dart';
import 'package:fortfolio/domain/user/notification_item.dart';
import 'package:fortfolio/domain/user/withdrawal_item.dart';


abstract class IFirestoreFacade {
  Future<Either<String,String>> createInvestmentTransaction( {required InvestmentItem investmentItem});
  Future<Either<String,String>> harvestInvestment( {required String docId, required double amount});
  Future<Either<String,String>> addBank({required BankAddress bankAddress});
  Future<Either<String,String>> addCryptoWallet({required CryptoWallet cryptoWallet});
  Future<Either<String,String>> addGeneralCryptoWallet({required CryptoWallet cryptoWallet});
  Stream<QuerySnapshot> getNotifications();
  Stream<QuerySnapshot> getBankAddress();
  Stream<QuerySnapshot> getCryptoWallets();
  Stream<QuerySnapshot> getGeneralCryptoWallets();
  // Future<Option<List<InvestmentItem>>> getInvestments();
  Stream<QuerySnapshot> getFortShieldInvestments();
  Stream<QuerySnapshot> getFortDollarInvestments();
  Stream<QuerySnapshot> getFortCryptoInvestments();
  Stream<QuerySnapshot> getWithdrawals();
  Stream<QuerySnapshot> getDollarPrice();
  Future<Either<String,KYCItem>> getKYC();
  Future<Either<String,String>> createWithdrawalTransaction( {required WithdrawalItem withdrawalItem});
  Future<Either<String,String>> createNotification( {required NotificationItem notificationItem});
  Future<Either<String,String>> createKYC( {required KYCItem kycItem});
  Future<Either<String,String>> deleteNotification( {required NotificationItem notificationItem});
  Future<Either<String,String>> deleteAllNotifications();
}
