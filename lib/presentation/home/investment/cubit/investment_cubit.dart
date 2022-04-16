import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/user/investment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jiffy/jiffy.dart';
import 'package:nanoid/nanoid.dart';
import 'package:uuid/uuid.dart';

part 'investment_state.dart';
part 'investment_cubit.freezed.dart';

@injectable
class InvestmentCubit extends Cubit<InvestmentState> {
  final IFirestoreFacade firestoreFacade ;
  InvestmentCubit( this.firestoreFacade) : super(InvestmentState.initial());

  void exchangeTypeChanged({required String exchangeType}) {
    final String planName = state.planName;
    if(exchangeType == "NGN" && planName == "FortShield"){
      emit(state.copyWith(baseAmount: 1000000));
    }else if(exchangeType == "USD" && planName == "FortShield"){
      emit(state.copyWith(baseAmount: (1000000 / 560).round()));
    }else{
      emit(state.copyWith(baseAmount: 1000));
    }
    emit(state.copyWith(exchangeType: exchangeType));
  }

  void isSelectedChanged({required int newIndex}) {
    int duration = 0;
    var boolList = <bool>[false,false,false];
    List<bool> newList = List.from(boolList);
    duration = state.durations[newIndex];
    durationChanged(duration: duration.toDouble());
    newList[newIndex] = true;
    emit(state.copyWith(isSelected: newList));
  }

  void planNameChanged({required String planName}){
    switch (planName) {
      case "FortDollar":
        emit(state.copyWith(roi: 30));
        break;
      case "FortShield":
        emit(state.copyWith(roi: 18));
        break;
      case "FortCrypto":
        emit(state.copyWith(roi: 15));
        break;
      default:
    }
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
    print({amountInvested,amountInvested.toString(),amountInvested.toString().isNotEmpty});
  }
  void roiChanged({required int roi}){
    emit(state.copyWith(
      roi: roi
    ));
  }
  void paymentMethodChanged({required String paymentMethod}){
    emit(state.copyWith(
      paymentMethod: paymentMethod
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
    final String traxId = const Uuid().v4().substring(0,7);
    final String uid = nanoid(8);
    final dueDate = Jiffy(paymentDate).add(months: duration.toInt()).dateTime;
    final int numberOfDays = dueDate.difference(paymentDate).inDays;
    final String currency = state.exchangeType == "USD" ? "\$" : "N";
    final paymentMethod = state.paymentMethod;
    InvestmentItem investmentItem = InvestmentItem(description: description, currency: currency, uid: uid, amount: amount, traxId: traxId, roi: roi, planName: planName, paymentDate: paymentDate, dueDate: dueDate, duration: duration, status: status, planYield: 0, paymentMethod: paymentMethod,numberOfDays: numberOfDays);
    final response = await firestoreFacade.createInvestmentTransaction(investmentItem: investmentItem);
    try{
      response.fold((failure){
        emit(state.copyWith(isLoading: false, failure: failure));
      }, (success) {
        emit(state.copyWith(isLoading: false, success: success));
      });
    }catch (e) {
      emit(state.copyWith(isLoading: false));
      log(e.toString());
    }
  }

  void reset (){
    emit(state.copyWith(
      amountInvested: 0,
      planName: "",
      agreementAccepted: false
    ));
  }

}
