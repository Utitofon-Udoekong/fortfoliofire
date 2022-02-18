import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fortfolio/models/bankAddress.dart';
import 'package:fortfolio/models/crypto_wallet.dart';
import 'package:fortfolio/models/general_wallet.dart';
import 'package:fortfolio/models/investment.dart';
import 'package:fortfolio/models/withdrawal.dart';
// import 'package:fortfolio/models/post.dart';
import 'package:uuid/uuid.dart';

class FireStoreMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<String> createInvestmentTransaction( String description, String uid, int amount, String planName, DateTime paymentDate, DateTime dueDate, String roi, String status) async {
    String traxId = const Uuid().v4();
    String res = "Some error occurred";
    try {
      Investment investment = Investment(
        description: description,
        uid: uid,
        amount: amount,
        traxId: traxId,
        roi: roi,
        planName: planName,
        paymentDate: DateTime.now(),
        dueDate: dueDate,
        duration: "${dueDate.difference(paymentDate).inDays} days",
        status: status,
      );
      _firestore.collection("transactions").doc(traxId).set(investment.toMap());
      res = "Investment made successfully. Awaiting review";
    } catch (e) {
      res = e.toString();
    }
    return res;
  }

  Future<String> addBank(String bankName, String accountNumber, String userName) async{
    String res = "Some error occurred";
    String docId = const Uuid().v4();
    try {
      BankAddress bank = BankAddress(bankName: bankName, accountNumber: accountNumber, userName: userName, type: "BANK ADDRESS");
      await _firestore.collection("addresses").doc(docId).set(bank.toMap()).then((_) {
        res = "Bank added successfully.";
      });
    } catch (e) {
       res = e.toString();
    }
    return res;
  }

  Future<String> addCryptoWallet(String walletLabel, String address, String coin, String platform) async{
    String res = "Some error occurred";
    String docId = const Uuid().v4();
    try {
      CryptoAddress wallet = CryptoAddress(walletLabel: walletLabel, address: address, coin: coin, platform: platform, type: 'CRYPTOWALLET');
      await _firestore.collection("addresses").doc(docId).set(wallet.toMap()).then((_) {
        res = "Wallet added successfully.";
      });
    } catch (e) {
       res = e.toString();
    }
    return res;
  }

  Future<String> addGeneralCryptoWallet(String walletLabel, String address, String coin, String platform, String network) async{
    String res = "Some error occurred";
    String docId = const Uuid().v4();
    try {
      GeneralCryptoAddress wallet = GeneralCryptoAddress(walletLabel: walletLabel, address: address, coin: coin, platform: platform, network: network, type: 'GENERALCRYPTOWALLET');
      await _firestore.collection("addresses").doc(docId).set(wallet.toMap()).then((_) {
        res = "Wallet added successfully.";
      });
    } catch (e) {
       res = e.toString();
    }
    return res;
  }

  Future<String> createWithdrawalTransaction( String description, String uid, int amount, String planName, DateTime paymentDate, DateTime dueDate, String roi, String duration, String status) async {
    String traxId = const Uuid().v4();
    String res = "Some error occurred";
    try {
      Withdrawal withdrawal = Withdrawal(
        description: description,
        uid: uid,
        amount: amount,
        traxId: traxId,
        planName: planName,
        status: status,
        createdat: DateTime.now()
      );
      _firestore.collection("withdrawals").doc(traxId).set(withdrawal.toJson());
      res = "Withdrawal requested successfully. Awaiting review";
    } catch (e) {
      res = e.toString();
    }
    return res;
  }

  Future<String> likePost(String postId, String uid, List likes) async {
    String res = "Some error occurred";
    try {
      if (likes.contains(uid)) {
        // if the likes list contains the user uid, we need to remove it
        _firestore.collection('posts').doc(postId).update({
          'likes': FieldValue.arrayRemove([uid])
        });
      } else {
        // else we need to add uid to the likes array
        _firestore.collection('posts').doc(postId).update({
          'likes': FieldValue.arrayUnion([uid])
        });
      }
      res = 'success';
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  // Post comment
  Future<String> postComment(String postId, String text, String uid,
      String name, String profilePic) async {
    String res = "Some error occurred";
    try {
      if (text.isNotEmpty) {
        // if the likes list contains the user uid, we need to remove it
        String commentId = const Uuid().v1();
        _firestore
            .collection('posts')
            .doc(postId)
            .collection('comments')
            .doc(commentId)
            .set({
          'profilePic': profilePic,
          'name': name,
          'uid': uid,
          'text': text,
          'commentId': commentId,
          'datePublished': DateTime.now(),
        });
        res = 'success';
      } else {
        res = "Please enter text";
      }
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  // Delete Post
  Future<String> deletePost(String postId) async {
    String res = "Some error occurred";
    try {
      await _firestore.collection('posts').doc(postId).delete();
      res = 'success';
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  Future<void> updateBalance(String uid) async {
    DocumentSnapshot snap =
          await _firestore.collection('users').doc(uid).get();
  }

  Future<void> followUser(String uid, String followId) async {
    try {
      DocumentSnapshot snap =
          await _firestore.collection('users').doc(uid).get();
      List following = (snap.data()! as dynamic)['following'];

      if (following.contains(followId)) {
        await _firestore.collection('users').doc(followId).update({
          'followers': FieldValue.arrayRemove([uid])
        });

        await _firestore.collection('users').doc(uid).update({
          'following': FieldValue.arrayRemove([followId])
        });
      } else {
        await _firestore.collection('users').doc(followId).update({
          'followers': FieldValue.arrayUnion([uid])
        });

        await _firestore.collection('users').doc(uid).update({
          'following': FieldValue.arrayUnion([followId])
        });
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
