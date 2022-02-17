part of 'investment_cubit.dart';

@freezed
class InvestmentState with _$InvestmentState {
  const factory InvestmentState(
      {required String planName,
      required String duration,
      required String amountInvested,
      required int roi,
      required String method,
      required bool agreementAccepted}) = _InvestmentState;
  const InvestmentState._();

  factory InvestmentState.initial() => const InvestmentState(
        amountInvested: '',
        duration: '',
        method: '',
        planName: '',
        roi: 0,
        agreementAccepted: false
      );
}
