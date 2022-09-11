part of 'calculator_cubit.dart';

@freezed
class CalculatorState with _$CalculatorState {
  const factory CalculatorState({
    required double investmentAmount,
    required int duration,
    required int returnRate,
    required double totalReturns,
    required String selectedPlan,
    required String exchange,
    required List<DropdownMenuItem<String>> dropdownItems,
    required List<DropdownMenuItem<int>> durations,
  }) = _CalculatorState;
  factory CalculatorState.initial() => const CalculatorState(
        dropdownItems: [
          DropdownMenuItem(value: "FortDollar", child: Text("FortDollar")),
          DropdownMenuItem(value: "FortCrypto", child: Text("FortCrypto")),
          DropdownMenuItem(value: "FortShield", child: Text("FortShield")),
        ],
        duration: 3,
        durations: [
          DropdownMenuItem(value: 3, child: Text("3")),
          DropdownMenuItem(value: 6, child: Text("6")),
          DropdownMenuItem(value: 12, child: Text("12")),
        ],
        investmentAmount: 0,
        returnRate: 30,
        totalReturns: 0.0,
        selectedPlan: 'FortDollar',
        exchange: 'USD',
      );
  const CalculatorState._();
}
