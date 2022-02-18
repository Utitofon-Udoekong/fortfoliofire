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
        durations: [3, 6, 9],
        duration: 3
        // duration: [2191.45319, 4382.90638, ]
      );
}
