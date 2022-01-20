import 'dart:convert';

import 'package:equatable/equatable.dart';

class EmailAddress extends Equatable {
  final String value;
  // final Exception failure;

  const EmailAddress._(
    this.value,
  );

  @override
  // TODO: implement props
  List<Object> get props => [value];

  @override
  String toString() => 'EmailAddress(value: $value)';

  factory EmailAddress(String input){
    assert(input.isNotEmpty);
    return EmailAddress._(
      validateEmail(input)
    );
  }

}

String validateEmail(String input){
  const emailRegex = r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if(RegExp(emailRegex).hasMatch(input)){
    return input;
  }else {
    throw InvalidEmailFailure(failedValue: input);
  }
}

class InvalidEmailFailure{
  final String failedValue;
  InvalidEmailFailure({required this.failedValue});
}

