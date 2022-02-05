import 'package:dartz/dartz.dart';
import 'package:fortfolio/domain/core/failures.dart';
import 'package:fortfolio/domain/core/value_objects.dart';
import 'package:fortfolio/domain/core/value_validators.dart';
import 'package:kt_dart/collection.dart';


class ItemName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ItemName(String input) {
    assert(input.isNotEmpty);
    return ItemName._(
      validateStringNotEmpty(input)
    );
  }

  const ItemName._(this.value);
}

class PlanList3<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 3;
  factory PlanList3(KtList<T> input) {
    assert(input.size > 0);
    return PlanList3._(
      validateMaxListLength(input, maxLength),
    );
  }

  const PlanList3._(this.value);
  int get length {
    return value.getOrElse(() => emptyList()).size;
  }
  bool get isFull {
    return length == maxLength;
  }
}

class ItemList<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;
  static const maxLength = 10000;
  factory ItemList(KtList<T> input) {
    assert(input.size > 0);
    return ItemList._(
      validateMaxListLength(input, maxLength)
    );
  }

  const ItemList._(this.value);
  int get length {
    return value.getOrElse(() => emptyList()).size;
  }
  bool get isFull {
    return length == maxLength;
  }
}