part of 'investment_cubit.dart';

@freezed
class InvestmentState with _$InvestmentState {
  const factory InvestmentState(
      {required String planName,
      required double duration,
      required int amountInvested,
      required int roi,
      required String failure,
      required String success,
      required bool agreementAccepted,
      required bool isLoading,
      required String exchangeType,
      required String coin,
      required List<bool> isSelected,
      required List<int> durations,
      required String paymentMethod,
      required List<DropdownMenuItem<String>> dropdownItems,
      required int baseAmount
      }) = _InvestmentState;
  const InvestmentState._();

  factory InvestmentState.initial() => InvestmentState(
        amountInvested: 0,
        coin: "BTC",
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
        dropdownItems: [
          const DropdownMenuItem(child: Text("BTC"), value: "BTC"),
          const DropdownMenuItem(child: Text("BCH"), value: "BCH"),
          const DropdownMenuItem(child: Text("ETH"), value: "ETH"),
          const DropdownMenuItem(child: Text("LTC"), value: "LTC"),
          const DropdownMenuItem(child: Text("BNB"), value: "BNB"),
          const DropdownMenuItem(child: Text("SOL"), value: "SOL"),
          const DropdownMenuItem(child: Text("LUNA"), value: "LUNA"),
          const DropdownMenuItem(child: Text("ALGO"), value: "ALGO"),
          const DropdownMenuItem(child: Text("XRP"), value: "XRP"),
        ],
      );
    bool get isValid => !duration.isNaN && amountInvested.isFinite && agreementAccepted && amountInvested >= baseAmount;
}

var boolList = <bool>[false,true,false];