part of 'calculator_cubit.dart';

@freezed
class CalculatorState with _$CalculatorState {
  const factory CalculatorState({
    required int investmentAmount,
    required int duration,
    required int returnRate,
    required double totalReturns,
    required String selectedPlan,
    required List<DropdownMenuItem<String>> dropdownItems,
    required List<DropdownMenuItem<int>> durations,
  }) = _CalculatorState;
  factory CalculatorState.initial() => const CalculatorState(
        dropdownItems: [
          DropdownMenuItem(child: Text("FortDollar"), value: "FortDollar"),
          DropdownMenuItem(child: Text("FortCrypto"), value: "FortCrypto"),
          DropdownMenuItem(child: Text("FortShield"), value: "FortShield"),
        ],
        duration: 3,
        durations: [
          DropdownMenuItem(child: Text("3"), value: 3),
          DropdownMenuItem(child: Text("6"), value: 6),
          DropdownMenuItem(child: Text("12"), value: 9),
        ],
        investmentAmount: 0,
        returnRate: 30,
        totalReturns: 0.0,
        selectedPlan: 'FortDollar',
      );
  const CalculatorState._();
}
