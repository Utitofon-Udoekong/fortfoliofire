import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/user/withdrawal_item.dart';
import 'package:fortfolio/domain/user/investment.dart';
import 'package:fortfolio/domain/user/crypto_wallet.dart';
import 'package:fortfolio/domain/user/bank_address.dart';
import 'package:fortfolio/infrastructure/auth/dto/bank_address/bank_address_dto.dart';
import 'package:fortfolio/infrastructure/auth/dto/crypto_address/crypto_address.dart';
import 'package:fortfolio/infrastructure/auth/dto/investment/investment_dto.dart';
import 'package:fortfolio/infrastructure/auth/dto/withdrawal/withdrawal_dto.dart';
import 'package:fortfolio/infrastructure/core/firestore_helpers.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IFirestoreFacade)
class FirebaseFirestoreFacade implements IFirestoreFacade {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;

  FirebaseFirestoreFacade(this.firestore, this.auth);

  @override
  Future<Option<String>> addBank({required BankAddress bankAddress}) async {
    String docId = bankAddress.accountNumber + bankAddress.id;
    try {
      await firestore.authUserCollection.doc(auth.currentUser!.uid).collection("address").doc(docId).set(BankAddressDTO.fromDomain(bankAddress).toJson());
      return some("Bank account added successfully");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return some('Unable to add wallet');
    }
  }

  @override
  Future<Either<String,String>> addCryptoWallet({required CryptoWallet cryptoWallet}) async {
    String docId = cryptoWallet.address + cryptoWallet.id;
    try {
      await firestore.authUserCollection.doc(auth.currentUser!.uid).collection("address").doc(docId).set(CryptoWalletDTO.fromDomain(cryptoWallet).toJson());
      return right("Crypto wallet added successfully");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return left('Unable to add wallet');
    }
  }

  @override
  Future<Either<String,String>> addGeneralCryptoWallet({required CryptoWallet cryptoWallet}) async {
    String docId = cryptoWallet.address + cryptoWallet.id;
    try {
      await firestore.authUserCollection.doc(auth.currentUser!.uid).collection("address").doc(docId).set(CryptoWalletDTO.fromDomain(cryptoWallet).toJson());
      return right("Crypto wallet added successfully");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return left('Unable to add wallet');
    }
  }

  @override
  Future<Option<String>> createInvestmentTransaction({required InvestmentItem investmentItem}) async {
    String docId = investmentItem.traxId + investmentItem.uid;
    try {
      // investmentItem.uid = docId;
      await firestore.authUserCollection.doc(auth.currentUser!.uid).collection("investments").doc(docId).set(InvestmentItemDTO.fromDomain(investmentItem).toJson());
      return some("Investment made. Awaiting approval");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return some('Unable to create transaction at the moment');
    }
  }

  @override
  Future<Option<String>> createWithdrawalTransaction({required WithdrawalItem withdrawalItem}) async{
    String docId = withdrawalItem.traxId + withdrawalItem.uid;
    try {
      firestore.authUserCollection.doc(auth.currentUser!.uid).collection("withdrawals").doc(docId).set(WithdrawalItemDTO.fromDomain(withdrawalItem).toJson());
      return some("Withdrawal submitted. Awaiting approval");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return some('Unable to create withdrawals at the moment');
    }
  }

  @override
  Future<Option<List<BankAddress>>> getBankAddress() async {
    final query = await firestore.authUserCollection.doc().collection("address").where("type", isEqualTo: "BANKADDRESS").get();
    try {
      if (query.docs.isNotEmpty && query.docs[0].exists) {
        final docs = query.docs;
        final newDocs = List<BankAddress>.empty();
        for(var element in docs){
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
    final query = await firestore.authUserCollection.doc(auth.currentUser!.uid).collection("address").where("type", isEqualTo: "CRYPTOWALLET").get();
    try {
     if (query.docs.isNotEmpty && query.docs[0].exists) {
        final docs = query.docs;
        final newDocs = List<CryptoWallet>.empty();
        for(var element in docs){
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
    final query = await firestore.authUserCollection.doc(auth.currentUser!.uid).collection("address").where("type", isEqualTo: "GENERALCRYPTOWALLET").get();
    try {
     if (query.docs.isNotEmpty && query.docs[0].exists) {
        final docs = query.docs;
        final newDocs = List<CryptoWallet>.empty();
        for(var element in docs){
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
    final query = await firestore.authUserCollection.doc(auth.currentUser!.uid).collection("investments").where("planName",isEqualTo: "FortDollar").get();
    try {
      if(query.docs.isNotEmpty && query.docs[0].exists){
        final docs = query.docs;
        var newDocs = List<InvestmentItem>.empty();
        for (var element in docs) {
          final doc = InvestmentItemDTO.fromFirestore(element).toDomain();
          newDocs.add(doc);
         }
        return some(newDocs);
      }else{
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
    final query = await firestore.authUserCollection.doc(auth.currentUser!.uid).collection("investments").where("planName",isEqualTo: "FortCrypto").get();
    try {
      if(query.docs.isNotEmpty && query.docs[0].exists){
        final docs = query.docs;
        var newDocs = List<InvestmentItem>.empty();
        for (var element in docs) {
          final doc = InvestmentItemDTO.fromFirestore(element).toDomain();
          newDocs.add(doc);
         }
        return some(newDocs);
      }else{
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
    final query = await firestore.authUserCollection.doc(auth.currentUser!.uid).collection("investments").where("planName",isEqualTo: "FortShield").get();
    try {
      if(query.docs.isNotEmpty && query.docs[0].exists){
        final docs = query.docs;
        var newDocs = List<InvestmentItem>.empty();
        for (var element in docs) {
          final doc = InvestmentItemDTO.fromFirestore(element).toDomain();
          newDocs.add(doc);
         }
        return some(newDocs);
      }else{
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
    final query = await firestore.authUserCollection.doc(auth.currentUser!.uid).collection("withdrawals").get();
    try {
      if(query.docs.isNotEmpty && query.docs[0].exists){
        var docs = query.docs;
        var newDocs = List<WithdrawalItem>.empty();
        for(var element in docs){
          final doc = WithdrawalItemDTO.fromFirestore(element).toDomain();
          newDocs.add(doc);
        }
        return some(newDocs);
      }else{
        log("authh getDatabaseUserWithPhoneNumber DOES NOT EXIST");
        return none();
      }
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return none();
    }
  }

  @override
  Future<Option<String>> harvestInvestment({required String docId, required int amount}) async {
    final query = firestore.authUserCollection.doc(auth.currentUser!.uid).collection("investments").doc(docId);
    try {
      await query.update({
        "planYield": amount
      });
      return some('Investment harvested');
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return some('Unable to harvest');
    }
  }
}