
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:equatable/equatable.dart';
import 'package:fortfolio/domain/auth/value_objects.dart';

import 'errors.dart';
import 'failures.dart';

@immutable
abstract class ValueObject<T> extends Equatable{
  
  const ValueObject();
  Either<ValueFailure<T>, T> get value;
  bool isValid() => value.isRight();

  /// throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(valueFailure: f), id);
  }

  // @override
  // bool operator ==(Object other) {
  //   if (identical(this, other)) return true;
  
  //   return other is ValueObject<T> && other.value == value;
  // }

  // @override
  // int get hashCode => value.hashCode;

  @override
  List<Object> get props => [value];

  @override
  String toString() => 'ValueObject(value: $value)';
}
