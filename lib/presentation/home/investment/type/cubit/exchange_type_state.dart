part of 'exchange_type_cubit.dart';

@freezed
class ExchangeTypeState with _$ExchangeTypeState {
  const factory ExchangeTypeState({
    required String exchangeType,
    required List<bool> isSelected,
    required List<int> durations,
    required int duration
  }) = _ExchangeTypeState;
  const ExchangeTypeState._();
  factory ExchangeTypeState.initial() => const ExchangeTypeState(
        exchangeType: "NGN Balance",
        isSelected: [false, true, false],
        duration: 3,
        durations: [3, 6, 9],
      );
}
