import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fortfolio/domain/auth/auth_failure.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';
import 'package:fortfolio/models/user.dart' as model;
class AuthMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // get user details
  Future<model.AppUser> getUserDetails() async {
    User currentUser = _auth.currentUser!;

    DocumentSnapshot documentSnapshot =
        await _firestore.collection('users').doc(currentUser.uid).get();

    return model.AppUser.fromSnap(documentSnapshot);
  }

  // Signing Up User

  Future<String> signUpUser(
    {required EmailAddress emailAddress, 
    required Password password, 
    required Phone phone, 
    required UserName firstName, 
    required UserName lastName,
  }) async {
    String res = "Some error Occurred";
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    final fName = firstName.getOrCrash();
    final lName = lastName.getOrCrash();
    final phoneNumber = phone.getOrCrash();
    const timeout = Duration(seconds: 60);
    try {
      if (emailAddressString.isNotEmpty ||
          passwordString.isNotEmpty ||
          fName.isNotEmpty ||
          lName.isNotEmpty) {
        // registering user in auth with email and password
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
          email: emailAddressString,
          password: passwordString,
        );
        registerPhoneNumber(phoneNumber: phone, timeout: timeout);
        model.AppUser _user = model.AppUser(
          uid: cred.user!.uid,
          email: emailAddressString,
          phone: phoneNumber,
          firstname: fName,
          lastname: lName,
          isVerified: false,
          balance: 0,
          createdAt: DateTime.now(),
          role: model.Roles.user
        );

        var displayName = "{$fName[0]}{$lName[0]}";
        _auth.currentUser!.updateDisplayName(displayName);

        // adding user in our database
        await _firestore
            .collection("users")
            .doc(cred.user!.uid)
            .set(_user.toJson());

        res = "success";
      } else {
        res = "Please enter all the fields";
      }
    } on FirebaseAuthException catch (e){
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return "Invalid email or password";
      } else {
        return "You've encountered a server error";
      }
    }
    return res;
  }

  // logging in user
  Future<String> loginUser({
    required EmailAddress emailAddress, required Password password
  }) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    String res = "Some error Occurred";
    try {
      if (emailAddress.isValid()|| passwordString.isNotEmpty ) {
        // logging in user with email and password
        await _auth.signInWithEmailAndPassword(
          email: emailAddressString, password: passwordString);
        res = "success";
      } else {
        res = "Please enter all the fields";
      }
    }on FirebaseAuthException catch (e){
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return "Invalid email or password";
      } else {
        return "You've encountered a server error";
      }
    }
    return res;
  }

  Future<String> resetPassword({required EmailAddress emailAddress}) async {
    final email = emailAddress.getOrCrash();
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return "An email with a reset link has been sent to $email";
    } on FirebaseAuthException catch (e) {
      if(e.code == "auth/invalid-email"){
        return "You provided an invalid email";
      }else {
        return "You've encountered a server error";
      }
    }
  }

  Stream<Either<AuthFailure, String>> signInWithPhoneNumber({
    required Phone phoneNumber,
    required Duration timeout,
  }) async* {
    final StreamController<Either<AuthFailure, String>> streamController =
        StreamController<Either<AuthFailure, String>>();

    await _auth.verifyPhoneNumber(
        timeout: timeout,
        phoneNumber: phoneNumber.getOrCrash(),
        verificationCompleted: (PhoneAuthCredential credential) async {
          _auth.signInWithCredential(credential);
        },
        codeSent: (String verificationId, int? resendToken) async {
          // Update the UI - wait for the user to enter the SMS code
          streamController.add(right(verificationId));
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          // Auto-resolution timed out...
          streamController.add(left(const AuthFailure.smsTimeout()));
        },
        verificationFailed: (FirebaseAuthException e) {
          late final Either<AuthFailure, String> result;

          if (e.code == 'invalid-phone-number') {
            result = left(const AuthFailure.invalidPhoneNumber());
          } else if (e.code == 'too-many-requests') {
            result = left(const AuthFailure.tooManyRequests());
          } else if (e.code == 'app-not-authorized') {
            result = left(const AuthFailure.deviceNotSupported());
          } else {
            result = left(const AuthFailure.serverError());
          }
          streamController.add(result);
        });

    yield* streamController.stream;
  }

  Stream<Either<AuthFailure, String>> registerPhoneNumber({
    required Phone phoneNumber,
    required Duration timeout,
  }) async* {
    final StreamController<Either<AuthFailure, String>> streamController =
        StreamController<Either<AuthFailure, String>>();

    await _auth.verifyPhoneNumber(
        timeout: timeout,
        phoneNumber: phoneNumber.getOrCrash(),
        verificationCompleted: (PhoneAuthCredential credential) async {
          // ANDROID ONLY!
          _auth.currentUser!.linkWithCredential(credential);
          // link with the auto-generated credential.
        },
        codeSent: (String verificationId, int? resendToken) async {
          // Update the UI - wait for the user to enter the SMS code
          streamController.add(right(verificationId));
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          // Auto-resolution timed out...
          streamController.add(left(const AuthFailure.smsTimeout()));
        },
        verificationFailed: (FirebaseAuthException e) {
          late final Either<AuthFailure, String> result;

          if (e.code == 'invalid-phone-number') {
            result = left(const AuthFailure.invalidPhoneNumber());
          } else if (e.code == 'too-many-requests') {
            result = left(const AuthFailure.tooManyRequests());
          } else if (e.code == 'app-not-authorized') {
            result = left(const AuthFailure.deviceNotSupported());
          } else {
            result = left(const AuthFailure.serverError());
          }
          streamController.add(result);
        });

    yield* streamController.stream;
  }

  Future<Either<AuthFailure, Unit>> verifySmsCode({
    required String smsCode,
    required String verificationId,
  }) async {
    try {
      final PhoneAuthCredential phoneAuthCredential =
          PhoneAuthProvider.credential(
              smsCode: smsCode, verificationId: verificationId);

      await _auth.signInWithCredential(phoneAuthCredential);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "session-expired") {
        return left(const AuthFailure.sessionExpired());
      } else if (e.code == "invalid-verification-code" ||
          e.code == "invalid-verification-code") {
        return left(const AuthFailure.invalidVerificationCode());
      }
      return left(const AuthFailure.serverError());
    }
  }

  Future<void> signInCurrentUser() async {
    if (_auth.currentUser == null) {
      User? authUser = _auth.currentUser;
      if (authUser == null) {
        print("no current user");
        try {
          authUser = await _auth.authStateChanges().first;
        } catch (_) {}
      }
      if (authUser == null) {
        print("no state change user");
      } else {
        await getUserDetails();
      }
    }
  }

  Future<void> verifyUser() async => await _auth.currentUser!.sendEmailVerification();

  Future<bool> isVerified () async {
    DocumentSnapshot snap = await _firestore.collection('users').doc(_auth.currentUser!.uid).get();
    bool isVerified = (snap.data()! as dynamic)['isVerified'];
    return isVerified;
  }        

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
