

import 'package:dartz/dartz.dart';
import 'failures.dart';
import 'package:kt_dart/kt.dart';

Either<ValueFailure<String>, String> validateEmail(String input){
  const emailRegex = r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if(RegExp(emailRegex).hasMatch(input)){
    return right(input);
  }else {
    return left(ValueFailure.auth(AuthValueFailure.invalidEmail(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input){
  var passwordRegex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$');
  if(passwordRegex.hasMatch(input)){
    return right(input);
  }else {
    return left(ValueFailure.auth(AuthValueFailure.invalidPassword(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateUserName(String input){
  if(input.length >= 6){
    return right(input);
  }else {
    return left(ValueFailure.auth(AuthValueFailure.shortName(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validatePhone(String input){
  if(input.length > 4 && input.contains("+")){
    return right(input);
  }else {
    return left(ValueFailure.auth(AuthValueFailure.invalidPhone(failedValue: input)));
  }
}


Either<ValueFailure<String>, String> validateStringNotEmpty(String input){
  if(input.isNotEmpty){
    return right(input);
  }else{
    return left(ValueFailure.notes(NotesValueFailure.empty(failedValue: input)));
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(KtList<T> input,int maxLength){
  if(input.size <= maxLength){
    return right(input);
  }else {
    return left(ValueFailure.notes(NotesValueFailure.listTooLong(failedValue: input, max: maxLength)));
  }
}


