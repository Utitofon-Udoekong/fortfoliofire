import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/user/kyc_item.dart';
import 'package:fortfolio/domain/user/notification_item.dart';
import 'package:fortfolio/domain/user/withdrawal_item.dart';
import 'package:fortfolio/domain/user/investment.dart';
import 'package:fortfolio/domain/user/crypto_wallet.dart';
import 'package:fortfolio/domain/user/bank_address.dart';
import 'package:fortfolio/infrastructure/auth/dto/bank_address/bank_address_dto.dart';
import 'package:fortfolio/infrastructure/auth/dto/crypto_address/crypto_address.dart';
import 'package:fortfolio/infrastructure/auth/dto/investment/investment_dto.dart';
import 'package:fortfolio/infrastructure/auth/dto/kyc/kyc_dto.dart';
import 'package:fortfolio/infrastructure/auth/dto/notification/notification_dto.dart';
import 'package:fortfolio/infrastructure/auth/dto/withdrawal/withdrawal_dto.dart';
import 'package:fortfolio/infrastructure/core/firestore_helpers.dart';
import 'package:injectable/injectable.dart';
import 'package:nanoid/nanoid.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IFirestoreFacade)
class FirebaseFirestoreFacade implements IFirestoreFacade {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;

  FirebaseFirestoreFacade(this.firestore, this.auth);

  @override
  Future<Either<String, String>> addBank(
      {required BankAddress bankAddress}) async {
    String docId = bankAddress.trax + bankAddress.id;
    try {
      await firestore.authUserCollection
          .doc(auth.currentUser!.uid)
          .collection("address")
          .doc(docId)
          .set(BankAddressDTO.fromDomain(bankAddress).toJson());
      return right("Bank account added successfully");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return left('Unable to add wallet');
    }
  }

  @override
  Future<Either<String, String>> addCryptoWallet(
      {required CryptoWallet cryptoWallet}) async {
    String docId = cryptoWallet.trax + cryptoWallet.id;
    try {
      await firestore.authUserCollection
          .doc(auth.currentUser!.uid)
          .collection("address")
          .doc(docId)
          .set(CryptoWalletDTO.fromDomain(cryptoWallet).toJson());
      return right("Crypto wallet added successfully");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return left('Unable to add wallet');
    }
  }

  @override
  Future<Either<String, String>> addGeneralCryptoWallet(
      {required CryptoWallet cryptoWallet}) async {
    String docId = cryptoWallet.trax + cryptoWallet.id;
    try {
      await firestore.authUserCollection
          .doc(auth.currentUser!.uid)
          .collection("address")
          .doc(docId)
          .set(CryptoWalletDTO.fromDomain(cryptoWallet).toJson());
      return right("Crypto wallet added successfully");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return left('Unable to add wallet');
    }
  }

  @override
  Future<Either<String, String>> createInvestmentTransaction(
      {required InvestmentItem investmentItem}) async {
    String docId = investmentItem.uid + investmentItem.traxId;
    final sp = await SharedPreferences.getInstance();
    if(!sp.containsKey("notificationCount")){
      sp.setInt("notificationCount", 0);
      sp.reload();
    }
    int? notificationCount = sp.getInt("notificationCount");
    try {
      await firestore.authUserCollection
          .doc(auth.currentUser!.uid)
          .collection("investments")
          .doc(docId)
          .set(InvestmentItemDTO.fromDomain(investmentItem).toJson());
      NotificationItem notificationItem = NotificationItem(
          createdat: investmentItem.paymentDate,
          title: investmentItem.description,
          type: "Investment",
          id: nanoid(8),
          status: investmentItem.status);
      await createNotification(notificationItem: notificationItem).then((_){
        sp.setInt("notificationCount", (notificationCount! + 1));
      });
      return right("Investment made. Awaiting approval");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return left('Unable to create transaction at the moment');
    }
  }

  @override
  Future<Either<String, String>> createWithdrawalTransaction(
      {required WithdrawalItem withdrawalItem}) async {
        final sp = await SharedPreferences.getInstance();
    String docId = withdrawalItem.uid + withdrawalItem.traxId;
    if(!sp.containsKey("notificationCount")){
      sp.setInt("notificationCount", 0);
      sp.reload();
    }
    int? notificationCount = sp.getInt("notificationCount");
    try {
      await firestore.authUserCollection
          .doc(auth.currentUser!.uid)
          .collection("withdrawals")
          .doc(docId)
          .set(WithdrawalItemDTO.fromDomain(withdrawalItem).toJson());
      NotificationItem notificationItem = NotificationItem(
        id: nanoid(8),
        type: "Withdrawal",
        title: withdrawalItem.description,
        createdat: withdrawalItem.createdat,
        status: withdrawalItem.status,
      );
      await createNotification(notificationItem: notificationItem).then((_) {
        sp.setInt("notificationCount", (notificationCount! + 1));
      });
      return right("Withdrawal submitted. Awaiting approval");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return left('Unable to create withdrawals at the moment');
    }
  }

  @override
  Future<Either<String, String>> createKYC({required KYCItem kycItem}) async {
    final sp = await SharedPreferences.getInstance();
    try {
      await firestore.authUserCollection
          .doc(auth.currentUser!.uid)
          .collection("kyc")
          .doc()
          .set(KYCItemDTO.fromDomain(kycItem).toJson());
      sp.setBool("kycExists", true);
      return right("KYC Documents submitted");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return left('Unable to submit documents at the moment');
    }
  }

  @override
  Future<Either<String, String>> createNotification(
      {required NotificationItem notificationItem}) async {
    final sp = await SharedPreferences.getInstance();
    try {
      await firestore.authUserCollection
          .doc(auth.currentUser!.uid)
          .collection("notifications")
          .doc()
          .set(NotificationItemDTO.fromDomain(notificationItem).toJson());
      if(!sp.containsKey("notificationCount")){
        sp.setInt("notificationCount", 0);
      }
      return right("notification created");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return left('Unable to create notifications at the moment');
    }
  }

  @override
  Stream<QuerySnapshot> getNotifications() async* {
    yield* firestore.authUserCollection
        .doc(auth.currentUser!.uid)
        .collection("notifications")
        .snapshots();
  }

  @override
  Stream<QuerySnapshot> getBankAddress() async* {
    yield* firestore.authUserCollection
        .doc(auth.currentUser!.uid)
        .collection("address")
        .where("type", isEqualTo: "BANKADDRESS")
        .snapshots();
  }

  @override
  Stream<QuerySnapshot> getCryptoWallets() async* {
    yield* firestore.authUserCollection
        .doc(auth.currentUser!.uid)
        .collection("address")
        .where("type", isEqualTo: "CRYPTOWALLET")
        .snapshots();
  }

  @override
  Stream<QuerySnapshot> getGeneralCryptoWallets() async* {
    yield* firestore.authUserCollection
        .doc(auth.currentUser!.uid)
        .collection("address")
        .where("type", isEqualTo: "GENERALCRYPTOWALLET")
        .snapshots();
  }

  @override
  Stream<QuerySnapshot> getFortDollarInvestments() async* {
    yield* firestore.authUserCollection
        .doc(auth.currentUser!.uid)
        .collection("investments")
        .where("planName", isEqualTo: "FortDollar")
        .snapshots();
  }

  @override
  Stream<QuerySnapshot> getFortCryptoInvestments() async* {
    yield* firestore.authUserCollection
        .doc(auth.currentUser!.uid)
        .collection("investments")
        .where("planName", isEqualTo: "FortCrypto")
        .snapshots();
  }

  @override
  Stream<QuerySnapshot> getFortShieldInvestments() async* {
    yield* firestore.authUserCollection
        .doc(auth.currentUser!.uid)
        .collection("investments")
        .where("planName", isEqualTo: "FortShield")
        .snapshots();
  }

  @override
  Stream<QuerySnapshot> getWithdrawals() async* {
    yield* firestore.authUserCollection
        .doc(auth.currentUser!.uid)
        .collection("withdrawals")
        .snapshots();
  }

  @override
  Future<Either<String, String>> harvestInvestment(
      {required String docId, required int amount}) async {
    final query = firestore.authUserCollection
        .doc(auth.currentUser!.uid)
        .collection("investments")
        .doc(docId);
    try {
      await query.update({"planYield": amount});
      return right('Investment harvested');
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return left('Unable to harvest');
    }
  }

  @override
  Future<Either<String, String>> deleteAllNotifications() async {
    final batch = firestore.batch();
    final query = await firestore.authUserCollection
        .doc(auth.currentUser!.uid)
        .collection("notifications")
        .get();
    try {
      for (var doc in query.docs) {
        batch.delete(doc.reference);
      }
      await batch.commit();
      return right("Notifications deleted successfully");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return left('Unable to delete notifications');
    }
  }

  @override
  Future<Either<String, String>> deleteNotification(
      {required NotificationItem notificationItem}) async {
    final notification = await firestore.authUserCollection
        .doc(auth.currentUser!.uid)
        .collection("notifications")
        .where("id", isEqualTo: notificationItem.id)
        .get();
    try {
      for (var doc in notification.docs) {
        doc.reference.delete();
      }
      return right("Notification deleted successfully");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return left('Unable to delete notification');
    }
  }
}
