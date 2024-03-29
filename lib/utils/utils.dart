import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

// for picking up image from gallery
pickImage(ImageSource source) async {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? _file = await _imagePicker.pickImage(source: source);
  if (_file != null) {
    return File(_file.path);
  }
  print('No Image Selected');
}

naira(){
  var format = NumberFormat.simpleCurrency(locale: Platform.localeName, name: 'NGN');
  return format.currencySymbol;
}

String coinCode({required String coin}){
  switch(coin){
    case "BTC":
      return "bitcoin";
    case "BCH":
      return "bitcoin-cash";
    case "ETH":
      return "ethereum";
    case "LTC":
      return "litecoin";
    case "USDC":
      return "usd-coin";
    default:
      return "bitcoin";
  }
}
String coinShortCode({required String coin}){
  switch(coin){
    case "BTC":
      return "btc";
    case "BCH":
      return "bch";
    case "ETH":
      return "eth";
    case "LTC":
      return "ltc";
    case "USDC":
      return "usd";
    default:
      return "btc";
  }
}

String getErrorFromCode({required String symbol}){
  switch (symbol) {
    case "user-not-found":
        return "User does not exist";
      case "wrong-password":
        return "Invalid email and password combination";
      case "user-disabled":
        return "Operation not allowed";
      case "invalid-email":
        return "Invalid email and password combination";
      case "email-already-in-use":
        return "Credential already in use";
      case 'weak-password':
        return "Weak password combination";
      case 'operation-not-allowed':
        return "Operation not allowed";
      case 'auth/user-not-found':
        return "User does not exist";
      case 'auth/invalid-email':
        return "Invalid email address";
      case 'account-exists-with-different-credential':
        return "Invalid email and password combination";
      case 'invalid-credential':
        return "Invalid email and password combination";
      case 'invalid-verification-code':
        return "Invalid verification code";
      case 'invalid-verification-id':
        return "Invalid verification id";
      case 'network-request-failed':
        return "Network connection failed";
      case 'too-many-requests':
        return "Too many requests";
      case 'app-not-authorized':
        return "Operation not allowed";
      case 'invalid-phone-number':
        return "Invalid phone number";
      case 'session-expired':
        return "Session closed. Resend OTP";
      case 'requires-recent-login':
        return "Login again to continue";
      case 'permission-denied':
        return "Operation not allowed";
      case 'canceled':
        return "Task canceled";
    default:
      return "Server error encountered";
  }
}
