import 'dart:js';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'investment_state.dart';
part 'investment_cubit.freezed.dart';

class InvestmentCubit extends Cubit<InvestmentState> {
  InvestmentCubit() : super(InvestmentState.initial());

  void planNameChanged({required String planName}){
    emit(state.copyWith(
      planName: planName
    ));
  }
  void durationChanged({required String duration}){
    emit(state.copyWith(
      duration: duration
    ));
  }
  void amountInvestedChanged({required String amountInvested}){
    emit(state.copyWith(
      amountInvested: amountInvested
    ));
  }
  void roiChanged({required int roi}){
    emit(state.copyWith(
      roi: roi
    ));
  }
  void methodChanged({required String method}){
    emit(state.copyWith(
      method: method
    ));
  }
  void agreementAcceptedChanged({required bool agreementAccepted}){
    emit(state.copyWith(agreementAccepted: agreementAccepted));
  }
}
