import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fortfolio/domain/auth/firestore_failure.dart';
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
  Future<Option<Unit>> addBank({required BankAddress bankAddress}) async {
    String docId = const Uuid().v4();
    try {
      await firestore.authUserCollection.doc(docId).set(BankAddressDTO.fromDomain(bankAddress).toJson());
      return some(unit);
    } on FirebaseException catch (e) {
      print(e.toString());
      return none();
    }
  }

  @override
  Future<Option<Unit>> addCryptoWallet({required CryptoWallet cryptoWallet}) async {
    String docId = const Uuid().v4();
    try {
      await firestore.authUserCollection.doc(docId).set(CryptoWalletDTO.fromDomain(cryptoWallet).toJson());
      return some(unit);
    } on FirebaseException catch (e) {
      print(e.toString());
      return none();
    }
  }

  @override
  Future<Option<Unit>> addGeneralCryptoWallet({required CryptoWallet cryptoWallet}) async {
    String docId = const Uuid().v4();
    try {
      await firestore.authUserCollection.doc(docId).set(CryptoWalletDTO.fromDomain(cryptoWallet).toJson());
      return some(unit);
    } on FirebaseException catch (e) {
      print(e.toString());
      return none();
    }
  }

  @override
  Future<Option<Unit>> createInvestmentTransaction({required InvestmentItem investmentItem}) async {
    String docId = const Uuid().v4();
    try {
      await firestore.authUserCollection.doc(docId).set(InvestmentItemDTO.fromDomain(investmentItem).toJson());
      return some(unit);
    } on FirebaseException catch (e) {
      print(e.toString());
      return none();
    }
  }

  @override
  Future<Option<Unit>> createWithdrawalTransaction({required WithdrawalItem withdrawalItem}) async{
    String docId = const Uuid().v4();
    try {
      firestore.authUserCollection.doc(docId).set(WithdrawalItemDTO.fromDomain(withdrawalItem).toJson());
      return some(unit);
    } on FirebaseException catch (e) {
      print(e.toString());
      return none();
    }
  }

  @override
  Future<Option<BankAddress>> getBankAddress() async {
    final query = await firestore.addressCollection .where("type", isEqualTo: "BANKADDRESS").get();
    try {
      if (query.docs.isNotEmpty && query.docs[0].exists) {
        final doc = query.docs[0];
        return some(BankAddressDTO.fromFirestore(doc).toDomain());
      } else {
        print("authh getDatabaseUserWithPhoneNumber DOES NOT EXIST");
        return none();
      }
    } on FirebaseException catch (e) {
      print(e.toString());
      return none();
    }
  }

  @override
  Future<Option<CryptoWallet>> getCryptoWallets() async {
    final query = await firestore.addressCollection .where("type", isEqualTo: "CRYPTOWALLET").get();
    try {
     if (query.docs.isNotEmpty && query.docs[0].exists) {
        final doc = query.docs[0];
        return some(CryptoWalletDTO.fromFirestore(doc).toDomain());
      } else {
        print("authh getDatabaseUserWithPhoneNumber DOES NOT EXIST");
        return none();
      }
    } on FirebaseException catch (e) {
      print(e.toString());
      return none();
    }
    
  }

  @override
  Future<Option<CryptoWallet>> getGeneralCryptoWallets() async {
    final query = await firestore.addressCollection .where("type", isEqualTo: "GENERALCRYPTOWALLET").get();
    try {
     if (query.docs.isNotEmpty && query.docs[0].exists) {
        final doc = query.docs[0];
        return some(CryptoWalletDTO.fromFirestore(doc).toDomain());
      } else {
        print("authh getDatabaseUserWithPhoneNumber DOES NOT EXIST");
        return none();
      }
    } on FirebaseException catch (e) {
      print(e.toString());
      return none();
    }
    
  }
  
}