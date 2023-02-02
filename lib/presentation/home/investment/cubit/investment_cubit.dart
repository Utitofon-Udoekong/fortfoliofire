import 'dart:async';
import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/i_external_facade.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/auth/i_functions_facade.dart';
import 'package:fortfolio/domain/user/investment.dart';
import 'package:fortfolio/domain/widgets/coinbase_commerce/charge_Object.dart';
import 'package:fortfolio/domain/widgets/coinbase_commerce/enums.dart';
import 'package:fortfolio/domain/widgets/coinbase_commerce/switch_Functions.dart';
import 'package:fortfolio/infrastructure/auth/local_auth_api.dart';
import 'package:dartz/dartz.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/security/cubit/security_cubit.dart';
import 'package:fortfolio/utils/utils.dart';
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
  final IAuthFacade authFacade; 
  final IExternalFacade externalFacade;
  final IFunctionsFacade functionsFacade;
  late final SecurityCubit securityCubit;
  late final AuthCubit authCubit;
  InvestmentCubit(
      this.firestoreFacade, this.externalFacade, this.functionsFacade, this.authFacade)
      : super(InvestmentState.initial()){
        securityCubit = getIt<SecurityCubit>();
        authCubit = getIt<AuthCubit>();
      }

  void exchangeTypeChanged({required String exchangeType}) {
    emit(state.copyWith(exchangeType: exchangeType));
  }

  void baseAmountChanged({required double baseAmount}) {
    emit(state.copyWith(baseAmount: baseAmount));
  }

  void isSelectedChanged({required int newIndex}) {
    int duration = 0;
    var boolList = <bool>[false, false, false];
    List<bool> newList = List.from(boolList);
    duration = state.durations[newIndex];
    durationChanged(duration: duration);
    newList[newIndex] = true;
    emit(state.copyWith(isSelected: newList));
  }
  void setCryptoBaseAmount({required String coin}) async {
    final coinPriceinUSD = await externalFacade.getCoinPrice(id: coinCode(coin: coin));
    double baseAmount = double.parse((1000 / coinPriceinUSD).toStringAsFixed(3));
    emit(state.copyWith(baseAmount: baseAmount));
  }

  void planNameChanged({required String planName}) async{
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

  void durationChanged({required int duration}) {
    emit(state.copyWith(duration: duration));
  }

  void coinChanged({required String coin}) async {
    emit(state.copyWith(coin: coin));
  }

  void amountInvestedChanged({required double amountInvested}) {
    emit(state.copyWith(amountInvested: amountInvested));
  }

  void roiChanged({required int roi}) {
    emit(state.copyWith(roi: roi));
  }

  void paymentMethodChanged({required String paymentMethod}) {
    emit(state.copyWith(paymentMethod: paymentMethod));
  }

  void bankAccountTypeChanged({required String bankAccountType}) {
    emit(state.copyWith(bankAccountType: bankAccountType));
  }

  void agreementAcceptedChanged({required bool agreementAccepted}) {
    emit(state.copyWith(agreementAccepted: agreementAccepted));
  }

  void createCharge() async {
    // emit(state.copyWith(isLoading: true));
    final amount = state.amountInvested;
    final coin = state.coin;
    final coinPriceinUSD = await externalFacade.getCoinPrice(id: coinCode(coin: coin));
    final chargeAmount = amount * coinPriceinUSD;
    final traxId = state.tempCryptoTraxId;
    try{
      final chargeOption =
        await functionsFacade.createCharge(amount: chargeAmount.toString().trim(), traxId: traxId);
      chargeOption.fold((failure) {
        emit(state.copyWith(isLoading: false));
        emit(state.copyWith(failure: failure));
      }, (charge) {
        emit(state.copyWith(isLoading: false));
        emit(state.copyWith(charge: ChargeObject.fromJson(charge)));
      });
    }catch(e){
      print(e);
    emit(state.copyWith(isLoading: false, failure: "Network error encountered"));
    }
  }

  void cancelCharge() async {
    final id = state.charge.id;
    await externalFacade.cancelCharge(id: id);
  }

  void createCryptoTransaction() async {
    emit(state.copyWith(isLoading: true));
    final String description = "${state.planName} Investment";
    final double amount = state.amountInvested;
    final DateTime paymentDate = DateTime.now();
    final String planName = state.planName;
    final int roi = state.roi;
    final int duration = state.duration;
    const String status = "Pending";
    final String traxId = const Uuid().v4().substring(0, 7);
    final String uid = nanoid(8);
    final String refId = authFacade.getUserId();
    final fullName = "${authCubit.state.userModel.firstName} ${authCubit.state.userModel.lastName}";
    // final dueDate = Jiffy(paymentDate).add(hours: 2).dateTime;
    final dueDate = Jiffy(paymentDate).add(months: duration.toInt()).dateTime;
    final int numberOfDays = dueDate.difference(paymentDate).inDays;
    String currency = "\$";
    final String paymentMethod = state.paymentMethod;
    final String coin = state.coin;
    final InvestmentItem investmentItem = InvestmentItem(
          description: description,
          currency: currency,
          uid: uid,
          refId: refId,
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
          fullName: fullName,
          numberOfDays: numberOfDays);
    final response = await firestoreFacade.createInvestmentTransaction(
        investmentItem: investmentItem);
    try {
      response.fold((failure) {
        emit(state.copyWith(isLoading: false, failure: failure));
        // return false;
      }, (success) {
        emit(state.copyWith(tempCryptoTraxId: investmentItem.traxId));
        createCharge();
        // return true;
      });
      // return false;
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      // return false;
    }
  }

  void createBankTransaction() async {
    emit(state.copyWith(isLoading: true));
    final String description = "${state.planName} Investment";
    final double amount = state.amountInvested;
    final DateTime paymentDate = DateTime.now();
    final String planName = state.planName;
    final int roi = state.roi;
    final int duration = state.duration;
    const String status = "Pending";
    final String traxId = const Uuid().v4().substring(0, 7);
    final String uid = nanoid(8);
    final String refId = authFacade.getUserId();
    final fullName = "${authCubit.state.userModel.firstName} ${authCubit.state.userModel.lastName}";
    // final dueDate = Jiffy(paymentDate).add(hours: 2).dateTime;
    final dueDate = Jiffy(paymentDate).add(months: duration.toInt()).dateTime;
    final int numberOfDays = dueDate.difference(paymentDate).inDays;
    final String currency = state.exchangeType == "USD" ? "\$" : "₦";
    final String paymentMethod = state.paymentMethod;
    final String bankAccountType = state.bankAccountType;
    InvestmentItem investmentItem = InvestmentItem(
          description: description,
          currency: currency,
          uid: uid,
          refId: refId,
          amount: amount,
          traxId: traxId,
          roi: roi,
          planName: planName,
          bankAccountType: bankAccountType,
          paymentDate: paymentDate,
          dueDate: dueDate,
          duration: duration,
          status: status,
          planYield: 0,
          paymentMethod: paymentMethod,
          fullName: fullName,
          numberOfDays: numberOfDays);
    final response = await firestoreFacade.createInvestmentTransaction(
        investmentItem: investmentItem);
    try {
      response.fold((failure) {
        emit(state.copyWith(isLoading: false, failure: failure));
      }, (success) {
        emit(state.copyWith(isLoading: false, success: success));
      });
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  void reset() {
    emit(state.copyWith(
        amountInvested: 0, planName: "", agreementAccepted: false, failure: "", success: "", isLoading: false, tempCryptoTraxId: ""));
  }

  @override
  Future<void> close() async{
    return super.close();
  }
}
