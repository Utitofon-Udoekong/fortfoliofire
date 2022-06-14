part of 'investment_cubit.dart';

@freezed
class InvestmentState with _$InvestmentState {
  const factory InvestmentState(
      {required String planName,
      required int duration,
      required int amountInvested,
      required int roi,
      required String failure,
      required String success,
      required bool agreementAccepted,
      required bool isLoading,
      required String exchangeType,
      required String coin,
      required String bankAccountType,
      required List<bool> isSelected,
      required List<int> durations,
      required String paymentMethod,
      required double baseAmount,
      required ChargeObject charge,
      required String paymentStatus
      }) = _InvestmentState;
  const InvestmentState._();

  factory InvestmentState.initial() => InvestmentState(
        amountInvested: 0,
        coin: "BTC",
        bankAccountType: "Naira",
        planName: '',
        roi: 0,
        baseAmount: 1000,
        failure: "",
        success: "",
        agreementAccepted: false,
        isLoading: false,
        exchangeType: "NGN",
        isSelected: List.from(boolList),
        durations: [3, 6, 12], 
        duration: 6,
        paymentMethod: 'Bank',
        charge: ChargeObject.empty(),
        paymentStatus: ""
      );
    bool get isValid => !duration.isNaN && amountInvested.isFinite && agreementAccepted && amountInvested >= baseAmount;
}

var boolList = <bool>[false,true,false];