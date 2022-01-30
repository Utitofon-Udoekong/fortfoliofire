// CollectionReference users = FirebaseFirestore.instance.collection('Users');

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fortfolio/domain/auth/i_data_facade.dart';

class FirebaseDataFacade implements IDataFacade {
  Future<bool> addUser(String email, String password, String name) async {
    try {
      String uid = FirebaseAuth.instance.currentUser!.uid;
      DocumentReference documentReference =
          FirebaseFirestore.instance.collection('Users').doc(uid);

      FirebaseFirestore.instance.runTransaction((transaction) async {
        DocumentSnapshot snapshot = await transaction.get(documentReference);
        if (!snapshot.exists) {
          documentReference.set(
              {'name': name, 'email': email, 'password': password, 'id': uid});
          return true;
        }
        return true;
      });
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> addCoin(String id, String amount) async {
    try {
      String uid = FirebaseAuth.instance.currentUser!.uid;
      var value = double.parse(amount);
      DocumentReference documentReference = FirebaseFirestore.instance
          .collection('Users')
          .doc(uid)
          .collection('Coins')
          .doc(id);

      FirebaseFirestore.instance.runTransaction((transaction) async {
        DocumentSnapshot snapshot = await transaction.get(documentReference);

        if (!snapshot.exists) {
          documentReference.set({'Amount': value});
          return true;
        }

        Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;

        double newAmount = data['Amount'] + value;
        transaction.update(documentReference, {'Amount': newAmount});
        return true;
      });
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> removeCoin(String id) async {
    String uid = FirebaseAuth.instance.currentUser!.uid;
    FirebaseFirestore.instance
        .collection("users")
        .doc(uid)
        .collection("coins")
        .doc(id)
        .delete();
    return true;
  }
}
