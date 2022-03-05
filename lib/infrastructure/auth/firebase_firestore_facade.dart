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
import 'package:uuid/uuid.dart';

@LazySingleton(as: IFirestoreFacade)
class FirebaseFirestoreFacade implements IFirestoreFacade {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;

  FirebaseFirestoreFacade(this.firestore, this.auth);

  @override
  Future<Option<String>> addBank({required BankAddress bankAddress}) async {
    String docId = const Uuid().v4();
    try {
      await firestore.authUserCollection.doc(docId).set(BankAddressDTO.fromDomain(bankAddress).toJson());
      return some("Bank account added successfully");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return none();
    }
  }

  @override
  Future<Option<String>> addCryptoWallet({required CryptoWallet cryptoWallet}) async {
    String docId = const Uuid().v4();
    try {
      await firestore.authUserCollection.doc(docId).set(CryptoWalletDTO.fromDomain(cryptoWallet).toJson());
      return some("Crypto wallet added successfully");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return none();
    }
  }

  @override
  Future<Option<String>> addGeneralCryptoWallet({required CryptoWallet cryptoWallet}) async {
    String docId = const Uuid().v4();
    try {
      await firestore.authUserCollection.doc(docId).set(CryptoWalletDTO.fromDomain(cryptoWallet).toJson());
      return some("Crypto wallet added successfully");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return none();
    }
  }

  @override
  Future<Option<String>> createInvestmentTransaction({required InvestmentItem investmentItem}) async {
    String docId = const Uuid().v4();
    try {
      await firestore.investmentCollection.doc(docId).set(InvestmentItemDTO.fromDomain(investmentItem).toJson());
      return some("Investment made. Awaiting approval");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return none();
    }
  }

  @override
  Future<Option<String>> createWithdrawalTransaction({required WithdrawalItem withdrawalItem}) async{
    String docId = const Uuid().v4();
    try {
      firestore.withdrawalsCollection.doc(docId).set(WithdrawalItemDTO.fromDomain(withdrawalItem).toJson());
      return some("Withdrawal submitted. Awaiting approval");
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return none();
    }
  }

  @override
  Future<Option<List<BankAddress>>> getBankAddress() async {
    final query = await firestore.addressCollection.where("type", isEqualTo: "BANKADDRESS").get();
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
        log("authh getDatabaseUserWithPhoneNumber DOES NOT EXIST");
        return none();
      }
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return none();
    }
  }

  @override
  Future<Option<List<CryptoWallet>>> getCryptoWallets() async {
    final query = await firestore.addressCollection .where("type", isEqualTo: "CRYPTOWALLET").get();
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
        log("authh getDatabaseUserWithPhoneNumber DOES NOT EXIST");
        return none();
      }
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return none();
    }
    
  }

  @override
  Future<Option<List<CryptoWallet>>> getGeneralCryptoWallets() async {
    final query = await firestore.addressCollection.where("type", isEqualTo: "GENERALCRYPTOWALLET").get();
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
        log("authh getDatabaseUserWithPhoneNumber DOES NOT EXIST");
        return none();
      }
    } on FirebaseException catch (e) {
      log("Code: ${e.code}, Message: ${e.message}");
      return none();
    }
    
  }

  @override
  Future<Option<List<InvestmentItem>>> getFortDollarInvestments() async {
    final query = await firestore.investmentCollection.where("planName",isEqualTo: "FORTDOLLAR").get();
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
    final query = await firestore.investmentCollection.where("planName",isEqualTo: "FORTCRYPTO").get();
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
    final query = await firestore.investmentCollection.where("planName",isEqualTo: "FORTSHIELD").get();
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
    final query = await firestore.withdrawalsCollection.get();
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
}