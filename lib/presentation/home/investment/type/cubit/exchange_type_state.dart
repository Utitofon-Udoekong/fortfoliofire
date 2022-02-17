part of 'exchange_type_cubit.dart';

@freezed
class ExchangeTypeState with _$ExchangeTypeState {
  const factory ExchangeTypeState({required String exchangeType}) = _ExchangeTypeState;
  const ExchangeTypeState._();
  factory ExchangeTypeState.initial() => const ExchangeTypeState(exchangeType: "NGN Balance");
}
