part of 'calculator_cubit.dart';

@freezed
class CalculatorState with _$CalculatorState {
  const factory CalculatorState({
    required int investmentAmount,
    required String duration,
    required int returnRate,
    required String selectedPlan,
    required List<DropdownMenuItem<String>> dropdownItems,
    required List<DropdownMenuItem<String>> durations,
  }) = _CalculatorState;
  factory CalculatorState.initial() => const CalculatorState(
        dropdownItems: [],
        duration: '',
        durations: [],
        investmentAmount: 0,
        returnRate: 30,
        selectedPlan: 'FortDollar',
      );
  const CalculatorState._();
  int get totalReturns => investmentAmount + (investmentAmount * int.parse(duration) * returnRate);
}
