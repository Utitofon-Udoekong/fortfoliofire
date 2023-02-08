import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/domain/auth/i_external_facade.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'calculator_state.dart';
part 'calculator_cubit.freezed.dart';

@injectable
class CalculatorCubit extends Cubit<CalculatorState> {
  final IExternalFacade externalFacade;
  late final AuthCubit authCubit;
  CalculatorCubit(this.externalFacade) : super(CalculatorState.initial()){
    authCubit = getIt<AuthCubit>();
  }

  void investmentAmountChanged({required double investmentAmount}){
    emit(state.copyWith(investmentAmount: investmentAmount));
    totalReturnsChange();
  }
  void durationChanged({required int duration}){
    emit(state.copyWith(duration: duration));
    totalReturnsChange();
  }
  void exchangeChanged({required String exchange}) async{
    final currentExchange = state.exchange;
    final amount = state.investmentAmount;
    if(exchange == "USD" ){
      if(currentExchange == "NGN"){
        final newAmount = amount / authCubit.state.sellPrice;
        emit(state.copyWith(exchange: exchange, selectedPlan: "FortDollar", investmentAmount: newAmount)); 
      }else {
        final coinPriceinUSD = await externalFacade.getCoinPriceInDollars(id: coinCode(coin: currentExchange));
        final newAmount = amount * coinPriceinUSD;
        emit(state.copyWith(exchange: exchange, selectedPlan: "FortDollar", investmentAmount: newAmount));
      }
    }else if(exchange == "NGN"){
      if(currentExchange == "USD"){
        final newAmount = amount * authCubit.state.sellPrice;
        emit(state.copyWith(exchange: exchange, selectedPlan: "FortShield", investmentAmount: newAmount)); 
      }else {
        final coinPriceinNaira = await externalFacade.getCoinPriceInNaira(id: coinCode(coin: currentExchange));
        final newAmount = amount * coinPriceinNaira;
        emit(state.copyWith(exchange: exchange, selectedPlan: "FortShield", investmentAmount: newAmount));
      }
    }else{
      if(currentExchange == "USD"){
        final coinPriceinUSD = await externalFacade.getCoinPriceInDollars(id: coinCode(coin: currentExchange));
        final newAmount = amount / coinPriceinUSD;
        emit(state.copyWith(exchange: exchange, selectedPlan: "FortCrypto", investmentAmount: newAmount));
      }else if(currentExchange == "NGN") {
        final coinPriceinNaira = await externalFacade.getCoinPriceInNaira(id: coinCode(coin: currentExchange));
        final newAmount = amount / coinPriceinNaira;
        emit(state.copyWith(exchange: exchange, selectedPlan: "FortCrypto", investmentAmount: newAmount));
      }else{
        final coinAPriceinCoinB = await externalFacade.getCoinAPriceInCoinB(coinA: coinCode(coin: currentExchange), coinB: coinShortCode(coin: exchange));
        print(coinCode(coin: currentExchange));
        print(coinShortCode(coin: exchange));
        print(coinAPriceinCoinB);
        print(amount);
        final newAmount = amount * coinAPriceinCoinB;
        print(newAmount);
        emit(state.copyWith(exchange: exchange, selectedPlan: "FortCrypto", investmentAmount: newAmount));
      }
    }
    roiChange();
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

  void reset(){
    emit(state.copyWith(investmentAmount: 0, returnRate: 30, totalReturns: 0, exchange: "USD", selectedPlan: "FortDollar", duration: 3));
  }
}
