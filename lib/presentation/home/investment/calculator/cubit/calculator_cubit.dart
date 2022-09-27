import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/auth/i_external_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'calculator_state.dart';
part 'calculator_cubit.freezed.dart';

@injectable
class CalculatorCubit extends Cubit<CalculatorState> {
  final IExternalFacade externalFacade;
  CalculatorCubit(this.externalFacade) : super(CalculatorState.initial());

  void investmentAmountChanged({required double investmentAmount}){
    emit(state.copyWith(investmentAmount: investmentAmount));
    totalReturnsChange();
  }
  void durationChanged({required int duration}){
    emit(state.copyWith(duration: duration));
    totalReturnsChange();
  }
  void selectedPlanChanged({required String selectedPlan}){
    emit(state.copyWith(selectedPlan: selectedPlan));
    roiChange();
    totalReturnsChange();
  }
  Future<void> calculateInBTC({required int sellPrice}) async {
    final btcPriceOption = await externalFacade.getBTCPriceInDollars();
    var investmentAmount = state.investmentAmount;
    if (state.exchange == "NGN"){
      investmentAmount = investmentAmount * sellPrice;
    }
    emit(state.copyWith(investmentAmount: investmentAmount / btcPriceOption, exchange: "BTC"));
    totalReturnsChange();
  }

  void calculateInNaira({required int sellPrice}) async{
    final btcPriceOption = await externalFacade.getBTCPriceInDollars();
    var investmentAmount = state.investmentAmount;
    if (state.exchange == "USD"){
      investmentAmount = investmentAmount * sellPrice;
    }
    if (state.exchange == "BTC") {
      investmentAmount = investmentAmount * sellPrice * btcPriceOption;
    }
    emit(state.copyWith(investmentAmount: investmentAmount, exchange: "NGN"));
    totalReturnsChange();
  }

  void calculateInUSD({required int sellPrice}) async{
    final btcPriceOption = await externalFacade.getBTCPriceInDollars();
    var investmentAmount = state.investmentAmount;
    if (state.exchange == "BTC") {
      investmentAmount = investmentAmount * btcPriceOption;
    }else if(state.exchange == "NGN"){
      investmentAmount = investmentAmount / sellPrice;
    }
    emit(state.copyWith(investmentAmount: investmentAmount, exchange: "USD"));
    totalReturnsChange();
  }

  void roiChange(){
    final selectedPlan = state.selectedPlan;
    switch (selectedPlan) {
      case "FortDollar":
        emit(state.copyWith(returnRate: 30));
        break;
      case "FortShield":
        emit(state.copyWith(returnRate: 18));
        break;
      case "FortCrypto":
        emit(state.copyWith(returnRate: 15));
        break;
      default:
    }
  }
  void totalReturnsChange(){
    final double investmentAmount = state.investmentAmount;
    final int duration = state.duration;
    final int returnRate = state.returnRate;
    final double total = investmentAmount + (investmentAmount * ((returnRate/100) * (duration / 12)));
    emit(state.copyWith(totalReturns: total));
  }
}
