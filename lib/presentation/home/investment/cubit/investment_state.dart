part of 'investment_cubit.dart';

@freezed
class InvestmentState with _$InvestmentState {
  const factory InvestmentState(
      {required String planName,
      required double duration,
      required int amountInvested,
      required int roi,
      required String method,
      required String response,
      required bool agreementAccepted,
      required bool isLoading,
      }) = _InvestmentState;
  const InvestmentState._();

  factory InvestmentState.initial() => const InvestmentState(
        amountInvested: 0,
        duration: 0.0,
        method: '',
        planName: '',
        roi: 0,
        response: "",
        agreementAccepted: false,
        isLoading: false
      );
}
