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

@LazySingleton(as: IFirestoreFacade)
class FirebaseFirestoreFacade implements IFirestoreFacade {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;

  FirebaseFirestoreFacade(this.firestore, this.auth);

  @override
  Future<Either<String,String>> addBank({required BankAddress bankAddress}) async {
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
      await createNotification(notificationItem: notificationItem);
      return right("Investment made. Awaiting approval");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return left('Unable to create transaction at the moment');
    }
  }

  @override
  Future<Either<String, String>> createWithdrawalTransaction(
      {required WithdrawalItem withdrawalItem}) async {
        String docId = withdrawalItem.uid + withdrawalItem.traxId;
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
      await createNotification(notificationItem: notificationItem);
      return right("Withdrawal submitted. Awaiting approval");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return left('Unable to create withdrawals at the moment');
    }
  }

  @override
  Future<Either<String, String>> createKYC({required KYCItem kycItem}) async {
    try {
      await firestore.authUserCollection
          .doc(auth.currentUser!.uid)
          .collection("kyc")
          .doc()
          .set(KYCItemDTO.fromDomain(kycItem).toJson());
      return right("KYC Documents submitted");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return left('Unable to submit documents at the moment');
    }
  }

  @override
  Future<Either<String, String>> createNotification(
      {required NotificationItem notificationItem}) async {
    try {
      await firestore.authUserCollection
          .doc(auth.currentUser!.uid)
          .collection("notifications")
          .doc()
          .set(NotificationItemDTO.fromDomain(notificationItem).toJson());
      return right("notification created");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return left('Unable to create notifications at the moment');
    }
  }

  @override
  Future<Option<List<NotificationItem>>> getNotifications() async {
    final query = await firestore.authUserCollection
        .doc(auth.currentUser!.uid)
        .collection("notifications")
        .get();
    try {
      if (query.docs.isNotEmpty && query.docs[0].exists) {
        final docs = query.docs;
        final newDocs = List<NotificationItem>.empty();
        for (var element in docs) {
          final doc = NotificationItemDTO.fromFirestore(element).toDomain();
          newDocs.add(doc);
        }
        return some(newDocs);
      } else {
        log("Notifications could not be retrieved at this moment");
        return none();
      }
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return none();
    }
  }

  @override
  Future<Option<List<BankAddress>>> getBankAddress() async {
    final query = await firestore.authUserCollection
        .doc(auth.currentUser!.uid)
        .collection("address")
        .where("type", isEqualTo: "BANKADDRESS")
        .get();
    try {
      if (query.docs.isNotEmpty && query.docs[0].exists) {
        final docs = query.docs;
        final newDocs = List<BankAddress>.empty();
        for (var element in docs) {
          final doc = BankAddressDTO.fromFirestore(element).toDomain();
          newDocs.add(doc);
        }
        return some(newDocs);
      } else {
        log("bank add error");
        return none();
      }
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return none();
    }
  }

  @override
  Future<Option<List<CryptoWallet>>> getCryptoWallets() async {
    final query = await firestore.authUserCollection
        .doc(auth.currentUser!.uid)
        .collection("address")
        .where("type", isEqualTo: "CRYPTOWALLET")
        .get();
    try {
      if (query.docs.isNotEmpty && query.docs[0].exists) {
        final docs = query.docs;
        final newDocs = List<CryptoWallet>.empty();
        for (var element in docs) {
          final doc = CryptoWalletDTO.fromFirestore(element).toDomain();
          newDocs.add(doc);
        }
        return some(newDocs);
      } else {
        log("crypto wallet error not gen");
        return none();
      }
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return none();
    }
  }

  @override
  Future<Option<List<CryptoWallet>>> getGeneralCryptoWallets() async {
    final query = await firestore.authUserCollection
        .doc(auth.currentUser!.uid)
        .collection("address")
        .where("type", isEqualTo: "GENERALCRYPTOWALLET")
        .get();
    try {
      if (query.docs.isNotEmpty && query.docs[0].exists) {
        final docs = query.docs;
        final newDocs = List<CryptoWallet>.empty();
        for (var element in docs) {
          final doc = CryptoWalletDTO.fromFirestore(element).toDomain();
          newDocs.add(doc);
        }
        return some(newDocs);
      } else {
        log("cryptowallet error");
        return none();
      }
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return none();
    }
  }

  @override
  Future<Option<List<InvestmentItem>>> getFortDollarInvestments() async {
    final query = await firestore.authUserCollection
        .doc(auth.currentUser!.uid)
        .collection("investments")
        .where("planName", isEqualTo: "FortDollar")
        .get();
    try {
      if (query.docs.isNotEmpty && query.docs[0].exists) {
        final docs = query.docs;
        var newDocs = List<InvestmentItem>.empty();
        for (var element in docs) {
          final doc = InvestmentItemDTO.fromFirestore(element).toDomain();
          newDocs.add(doc);
        }
        return some(newDocs);
      } else {
        log("authh getDatabaseUserWithPhoneNumber DOES NOT EXIST");
        return none();
      }
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return none();
    }
  }

  @override
  Future<Option<List<InvestmentItem>>> getFortCryptoInvestments() async {
    final query = await firestore.authUserCollection
        .doc(auth.currentUser!.uid)
        .collection("investments")
        .where("planName", isEqualTo: "FortCrypto")
        .get();
    try {
      if (query.docs.isNotEmpty && query.docs[0].exists) {
        final docs = query.docs;
        var newDocs = List<InvestmentItem>.empty();
        for (var element in docs) {
          final doc = InvestmentItemDTO.fromFirestore(element).toDomain();
          newDocs.add(doc);
        }
        return some(newDocs);
      } else {
        log("authh getDatabaseUserWithPhoneNumber DOES NOT EXIST");
        return none();
      }
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return none();
    }
  }

  @override
  Future<Option<List<InvestmentItem>>> getFortShieldInvestments() async {
    final query = await firestore.authUserCollection
        .doc(auth.currentUser!.uid)
        .collection("investments")
        .where("planName", isEqualTo: "FortShield")
        .get();
    try {
      if (query.docs.isNotEmpty && query.docs[0].exists) {
        final docs = query.docs;
        var newDocs = List<InvestmentItem>.empty();
        for (var element in docs) {
          final doc = InvestmentItemDTO.fromFirestore(element).toDomain();
          newDocs.add(doc);
        }
        return some(newDocs);
      } else {
        log("authh getDatabaseUserWithPhoneNumber DOES NOT EXIST");
        return none();
      }
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return none();
    }
  }

  @override
  Future<Option<List<WithdrawalItem>>> getWithdrawals() async {
    final query = await firestore.authUserCollection
        .doc(auth.currentUser!.uid)
        .collection("withdrawals")
        .get();
    try {
      if (query.docs.isNotEmpty && query.docs[0].exists) {
        var docs = query.docs;
        var newDocs = List<WithdrawalItem>.empty();
        for (var element in docs) {
          final doc = WithdrawalItemDTO.fromFirestore(element).toDomain();
          newDocs.add(doc);
        }
        return some(newDocs);
      } else {
        log("withdrawals DOES NOT EXIST");
        return none();
      }
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return none();
    }
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
    final batch = firestore.batch();
    final notification = await firestore.authUserCollection
        .doc(auth.currentUser!.uid)
        .collection("notifications")
        .where("id", isEqualTo: notificationItem.id)
        .get();
    try {
      for (var doc in notification.docs) {
        batch.delete(doc.reference);
      }
      return right("Notification deleted successfully");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return left('Unable to delete notification');
    }
  }
}
