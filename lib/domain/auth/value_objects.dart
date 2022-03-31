import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/core/failures.dart';
import 'package:fortfolio/domain/core/value_objects.dart';
import 'package:fortfolio/domain/core/value_validators.dart';


class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory EmailAddress(String input){
    //assert(input.isNotEmpty);
    return EmailAddress._(
      validateEmail(input)
    );
  }

  const EmailAddress._(
    this.value,
  );
}

class Password extends ValueObject<String> {
  
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input){
    //assert(input.isNotEmpty);
    return Password._(
      validatePassword(input)
    );
  }

  const Password._(
    this.value,
  );

}

class UserName extends ValueObject<String> {
  
  @override
  final Either<ValueFailure<String>, String> value;

  factory UserName(String input){
    //assert(input.isNotEmpty);
    return UserName._(
      validateUserName(input)
    );
  }

  const UserName._(
    this.value,
  );

}

class Phone extends ValueObject<String> {
  
  @override
  final Either<ValueFailure<String>, String> value;

  factory Phone(String input){
    //assert(input.isNotEmpty);
    return Phone._(
      validatePhone(input)
    );
  }

  const Phone._(
    this.value,
  );

}
class Amount extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Amount( input, minLength) {
    return Amount._(
      validateAmount(input, minLength)
    );
  }

  const Amount._(this.value);
}


