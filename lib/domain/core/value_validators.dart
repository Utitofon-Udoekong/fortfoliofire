

import 'package:dartz/dartz.dart';
import 'failures.dart';

Either<ValueFailure<String>, String> validateEmail(String input){
  const emailRegex = r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if(RegExp(emailRegex).hasMatch(input)){
    return right(input);
  }else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input){
  var passwordRegex = RegExp(r'[A-Z]');
  if(input.length >= 6 && input.contains(passwordRegex)){
    return right(input);
  }else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUserName(String input){
  // var passwordRegex = RegExp(r'[A-Z]');
  if(input.length >= 6){
    return right(input);
  }else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePhone(String input){
  // var passwordRegex = RegExp(r'[A-Z]');
  if(input.length >= 4 && input.contains("+")){
    return right(input);
  }else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}


