import 'dart:async';
import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/user/investment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

part 'investment_state.dart';
part 'investment_cubit.freezed.dart';

@injectable
class InvestmentCubit extends Cubit<InvestmentState> {
  final IFirestoreFacade firestoreFacade ;
  final  IAuthFacade authFacade;
  StreamSubscription? addSubscription;
  InvestmentCubit(  this.authFacade, this.firestoreFacade) : super(InvestmentState.initial());

  void exchangeTypeChanged({required String exchangeType}) {
    emit(state.copyWith(exchangeType: exchangeType));
  }

  void isSelectedChanged({required int newIndex}) {
    int duration = 0;
    List<bool> newList = state.isSelected;
    for (int index = 0; index < state.isSelected.length; index++) {
      if(index == newIndex){
        newList[index] = true;
        duration = state.durations[index];
        emit(state.copyWith(
          duration: duration.toDouble(),
          isSelected: newList
        ));
        print(newIndex);
      }else {
        newList[index] = false;
        emit(state.copyWith(
          isSelected: newList
        ));
        print(newIndex);
      }
    }
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
    final String traxId = const Uuid().v4();
    final String uid = authFacade.getUserId();
    final dueDate = paymentDate.add(Duration(hours: duration.toInt()));
    InvestmentItem investmentItem = InvestmentItem(description: description, uid: uid, amount: amount, traxId: traxId, roi: roi, planName: planName, paymentDate: paymentDate, dueDate: dueDate, duration: duration, status: status, planYield: 0);
    final response = await firestoreFacade.createInvestmentTransaction(investmentItem: investmentItem);
    try{
      response.fold(() => null, (response) {
        emit(state.copyWith(isLoading: false, response: response));
      });
    }catch (e) {
      emit(state.copyWith(isLoading: false));
      log(e.toString());
    }
  }

   @override
    Future<void> close() {
      addSubscription?.cancel();
      return super.close();
    }
}
