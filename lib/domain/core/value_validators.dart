

import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
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
  var passwordRegex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$');
  if(passwordRegex.hasMatch(input)){
    return right(input);
  }else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUserName(String input){
  if(input.length >= 2){
    return right(input);
  }else {
    return left(ValueFailure.shortName(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePhone(String input){
  if(input.length > 2 && input.contains("+")){
    return right(input);
  }else {
    return left(ValueFailure.invalidPhone(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input){
  if(input.isNotEmpty){
    return right(input);
  }else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(KtList<T> input,int maxLength){
  if(input.size <= maxLength){
    return right(input);
  }else {
    return left(ValueFailure.listTooLong(failedValue: input,max: maxLength));
  }
}

Either<ValueFailure<String>, String> validateAmount<T>(String input,int minLength){
  if(input.length >= minLength || !int.parse(input).isNaN){
    return right(input);
  }else {
    return left(ValueFailure.invalidAmount(failedValue: input,min: minLength));
  }
}





