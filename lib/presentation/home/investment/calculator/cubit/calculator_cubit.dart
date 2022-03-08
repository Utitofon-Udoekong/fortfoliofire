import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calculator_state.dart';
part 'calculator_cubit.freezed.dart';

class CalculatorCubit extends Cubit<CalculatorState> {
  CalculatorCubit() : super(CalculatorState.initial());

  void investmentAmountChanged({required int investmentAmount}){
    emit(state.copyWith(investmentAmount: investmentAmount));
  }
  void durationChanged({required int duration}){
    emit(state.copyWith(duration: duration));
  }
  void selectedPlanChanged({required String selectedPlan}){
    emit(state.copyWith(selectedPlan: selectedPlan));
    roiChange();
    totalReturnsChange();
  }
  void roiChange(){
    final selectedPlan = state.selectedPlan;
    switch (selectedPlan) {
      case "FortDollar":
        emit(state.copyWith(returnRate: 0.3));
        break;
      case "FortShield":
        emit(state.copyWith(returnRate: 0.18));
        break;
      case "FortCrypto":
        emit(state.copyWith(returnRate: 0.15));
        break;
      default:
    }
  }
  void totalReturnsChange(){
    final int investmentAmount = state.investmentAmount;
    final int duration = state.duration;
    final double returnRate = state.returnRate;
    final int total = investmentAmount + (investmentAmount * duration * returnRate.toInt());
    emit(state.copyWith(totalReturns: total));
  }
}
