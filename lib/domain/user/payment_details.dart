import 'package:fortfolio/domain/auth/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_details.freezed.dart';

@freezed
abstract class PaymentDetails implements _$PaymentDetails {
  const PaymentDetails._();
  const factory PaymentDetails(
      {required String description,
      required int amount,
      required DateTime createdat,
      required Status status,
      required String traxId,
      required String paymentMethod}) = _PaymentDetails;

  factory PaymentDetails.empty() => PaymentDetails(
        amount: 0,
        createdat: DateTime.now(),
        paymentMethod: '',
        description: '',
        status: Status.processing,
        traxId: '',
      );
}
