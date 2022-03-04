import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/user/investment.dart';
import 'package:fortfolio/presentation/home/investment/type/cubit/exchange_type_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

part 'investment_state.dart';
part 'investment_cubit.freezed.dart';

@injectable
class InvestmentCubit extends Cubit<InvestmentState> {
  final IFirestoreFacade firestoreFacade ;
  final  IAuthFacade authFacade;
  final ExchangeTypeCubit exchangeTypeCubit;
  StreamSubscription? addSubscription;
  InvestmentCubit( this.exchangeTypeCubit, this.authFacade, this.firestoreFacade) : super(InvestmentState.initial()){
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
    final String traxId = const Uuid().v4();
    final String uid = authFacade.getUserId();
    final dueDate = paymentDate.add(Duration(hours: duration.toInt()));
    InvestmentItem investmentItem = InvestmentItem(description: description, uid: uid, amount: amount, traxId: traxId, roi: roi, planName: planName, paymentDate: paymentDate, dueDate: dueDate, duration: duration, status: status, planYield: 0);
    try{
      final response = await firestoreFacade.createInvestmentTransaction(investmentItem: investmentItem);
      response.fold(() => null, (response) {
        emit(state.copyWith(isLoading: false, response: response));
      });
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
