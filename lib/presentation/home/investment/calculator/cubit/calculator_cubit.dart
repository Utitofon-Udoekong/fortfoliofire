import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calculator_state.dart';
part 'calculator_cubit.freezed.dart';

class CalculatorCubit extends Cubit<CalculatorState> {
  CalculatorCubit() : super(CalculatorState.initial());

  void investmentAmountChanged({required int investmentAmount}){
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
    final int investmentAmount = state.investmentAmount;
    final int duration = state.duration;
    final int returnRate = state.returnRate;
    final double total = investmentAmount + (investmentAmount * duration * (returnRate / 100));
    emit(state.copyWith(totalReturns: total));
  }
}
