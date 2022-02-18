import 'dart:async';
import 'dart:js';

import 'package:bloc/bloc.dart';
import 'package:fortfolio/presentation/home/investment/type/cubit/exchange_type_cubit.dart';
import 'package:fortfolio/resources/firestore_methods.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'investment_state.dart';
part 'investment_cubit.freezed.dart';
@injectable
class InvestmentCubit extends Cubit<InvestmentState> {
  final FireStoreMethods fireStoreMethods;
  final ExchangeTypeCubit exchangeTypeCubit;
  StreamSubscription? addSubscription;
  InvestmentCubit(this.fireStoreMethods, this.exchangeTypeCubit) : super(InvestmentState.initial()){
    addSubscription = exchangeTypeCubit.stream.listen((state) { 
      if(state.duration == 3){
        durationChanged(duration: 2191.45319);
      }else if(state.duration == 6){
        durationChanged(duration: 4382.90638);
      }else{
        durationChanged(duration: 8765.81277);
      }
    });
  }

  void planNameChanged({required String planName}){
    emit(state.copyWith(
      planName: planName
    ));
  }
  void durationChanged({required double duration}){
    emit(state.copyWith(
      duration: duration
    ));
  }
  void amountInvestedChanged({required int amountInvested}){
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
  void agreementAcceptedChanged({required bool agreementAccepted}) {
    emit(state.copyWith(agreementAccepted: agreementAccepted));
  }
  void iHavePaid() async {
    emit(state.copyWith(isLoading: true));
    final String description = state.planName + "Investment";
    final int amount = state.amountInvested;
    final DateTime paymentDate = DateTime.now();
    final String planName = state.planName;
    final int roi = state.roi;
    final double duration = state.duration;
    const String status = "pending";
    String response = "";
    const uid = "78000504694059";
    final dueDate = paymentDate.add(Duration(hours: duration.toInt()));
    try{
      response = await fireStoreMethods.createInvestmentTransaction(description, uid, amount, planName, paymentDate, dueDate, roi.toString(), status);
      emit(state.copyWith(isLoading: false, response: response));
    }catch (e) {
      emit(state.copyWith(isLoading: false, response: e.toString()));
    }
  }

   @override
    Future<void> close() {
      addSubscription?.cancel();
      return super.close();
    }
}
