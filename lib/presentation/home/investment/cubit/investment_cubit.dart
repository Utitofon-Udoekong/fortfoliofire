import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/user/investment.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/home/wallet/cubit/wallet_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:jiffy/jiffy.dart';
import 'package:nanoid/nanoid.dart';
import 'package:uuid/uuid.dart';

part 'investment_state.dart';
part 'investment_cubit.freezed.dart';

@injectable
class InvestmentCubit extends Cubit<InvestmentState> {
  final IFirestoreFacade firestoreFacade;
  late final WalletCubit walletCubit;
  InvestmentCubit(this.firestoreFacade) : super(InvestmentState.initial()) {
    walletCubit = getIt<WalletCubit>();
  }

  void exchangeTypeChanged({required String exchangeType}) {
    emit(state.copyWith(exchangeType: exchangeType));
  }

  void baseAmountChanged({required int baseAmount}) {
    emit(state.copyWith(baseAmount: baseAmount));
  }

  void isSelectedChanged({required int newIndex}) {
    int duration = 0;
    var boolList = <bool>[false, false, false];
    List<bool> newList = List.from(boolList);
    duration = state.durations[newIndex];
    durationChanged(duration: duration.toDouble());
    newList[newIndex] = true;
    emit(state.copyWith(isSelected: newList));
  }

  void planNameChanged({required String planName}) {
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
    emit(state.copyWith(planName: planName));
  }

  void durationChanged({required double duration}) {
    emit(state.copyWith(duration: duration));
  }
  void coinChanged({required String coin}) {
    emit(state.copyWith(coin: coin));
  }

  void amountInvestedChanged({required int amountInvested}) {
    emit(state.copyWith(amountInvested: amountInvested));
    print({
      amountInvested,
      amountInvested.toString(),
      amountInvested.toString().isNotEmpty
    });
  }

  void roiChanged({required int roi}) {
    emit(state.copyWith(roi: roi));
  }

  void paymentMethodChanged({required String paymentMethod}) {
    emit(state.copyWith(paymentMethod: paymentMethod));
  }

  void agreementAcceptedChanged({required bool agreementAccepted}) {
    emit(state.copyWith(agreementAccepted: agreementAccepted));
  }

  void iHavePaid() async {
    emit(state.copyWith(isLoading: true));
    late InvestmentItem investmentItem;
    final String description = state.planName + "Investment";
    final int amount = state.amountInvested;
    final DateTime paymentDate = DateTime.now();
    final String planName = state.planName;
    final int roi = state.roi;
    final double duration = state.duration;
    const String status = "Pending";
    final String traxId = const Uuid().v4().substring(0, 7);
    final String uid = nanoid(8);
    final dueDate = Jiffy(paymentDate).add(months: duration.toInt()).dateTime;
    final int numberOfDays = dueDate.difference(paymentDate).inDays;
    final String currency = state.exchangeType == "USD" ? "\$" : "N";
    final paymentMethod = state.paymentMethod;
    final coin = state.coin;
    if (state.planName == "FortCrypto") {
      investmentItem = InvestmentItem(
          description: description,
          currency: currency,
          uid: uid,
          amount: amount,
          traxId: traxId,
          roi: roi,
          planName: planName,
          paymentDate: paymentDate,
          dueDate: dueDate,
          duration: duration,
          status: status,
          planYield: 0,
          paymentMethod: paymentMethod,
          coin: coin,
          numberOfDays: numberOfDays);
    } else {
      investmentItem = InvestmentItem(
          description: description,
          currency: currency,
          uid: uid,
          amount: amount,
          traxId: traxId,
          roi: roi,
          planName: planName,
          paymentDate: paymentDate,
          dueDate: dueDate,
          duration: duration,
          status: status,
          planYield: 0,
          paymentMethod: paymentMethod,
          numberOfDays: numberOfDays);
    }
    final response = await firestoreFacade.createInvestmentTransaction(
        investmentItem: investmentItem);
    try {
      response.fold((failure) {
        emit(state.copyWith(isLoading: false, failure: failure));
      }, (success) {
        emit(state.copyWith(isLoading: false, success: success));
        walletCubit.initTransactions();
      });
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      log(e.toString());
    }
  }

  void reset() {
    emit(state.copyWith(
        amountInvested: 0, planName: "", agreementAccepted: false));
  }
}
