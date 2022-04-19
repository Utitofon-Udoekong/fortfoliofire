import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/user/bank_address.dart';
import 'package:fortfolio/domain/user/crypto_wallet.dart';
import 'package:fortfolio/domain/user/investment.dart';
import 'package:fortfolio/domain/user/transaction_item.dart';
import 'package:fortfolio/domain/user/withdrawal_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nanoid/nanoid.dart';
import 'package:uuid/uuid.dart';

part 'wallet_state.dart';
part 'wallet_cubit.freezed.dart';

@injectable
class WalletCubit extends Cubit<WalletState> {
  final IFirestoreFacade firestoreFacade;
  WalletCubit(this.firestoreFacade) : super(WalletState.initial()){
    initFortDollarInvestments();
    initFortShieldInvestments();
    initFortCryptoInvestments();
    initWalletBalance();
    initTransactions();
  }

  void investmentPlanChanged({required String investmentPlan}) {
    emit(state.copyWith(investmentPlan: investmentPlan));
  }
  void showDigitsChanged() {
    final showDigits = state.showDigits;
    emit(state.copyWith(showDigits: !showDigits));
  }

  void investmentToBeWithdrawnChanged({required InvestmentItem investmentToBeWithdrawn}) {
    emit(state.copyWith(investmentToBeWithdrawn: investmentToBeWithdrawn));
    print(investmentToBeWithdrawn);
  }

  void withdrawalMethodChanged({required String withdrawalMethod}) {
    if (withdrawalMethod == "Bank") {
      initBankAddresses();
    } else {
      initCryptoWallet();
      initGeneralCryptoWallet();
    }
    emit(state.copyWith(withdrawalMethod: withdrawalMethod));
  }

  void exchangeChanged({required String exchange}){
    emit(state.copyWith(exchange: exchange));
  }

  void initFortDollar(){
    var fortDollarInvestments = state.fortDollarInvestments;
    var planYield = 0;
      var amount = 0;
      for(var element in fortDollarInvestments){
        planYield += element.planYield;
        amount += element.amount;
      }
      emit(state.copyWith(fortDollarYieldBalance: planYield, fortDollarInvestmentBalance: amount));
  }
  void initFortShield(){
    var fortShieldInvestments = state.fortShieldInvestments;
    var planYield = 0;
      var amount = 0;
      for(var element in fortShieldInvestments){
        planYield += element.planYield;
        amount += element.amount;
      }
      emit(state.copyWith(fortShieldYieldBalance: planYield, fortShieldInvestmentBalance: amount));
  }
  void initFortCrypto(){
    var fortCryptoInvestments = state.fortCryptoInvestments;
    var planYield = 0;
      var amount = 0;
      for(var element in fortCryptoInvestments){
        planYield += element.planYield;
        amount += element.amount;
      }
      emit(state.copyWith(fortCryptoYieldBalance: planYield, fortCryptoInvestmentBalance: amount));
  }

  void initWalletBalance(){
    var fortDollarInvestments = state.fortDollarInvestments;
    var fortShieldInvestments = state.fortShieldInvestments;
    var fortCryptoInvestments = state.fortCryptoInvestments;
    var fortDollarActive = state.isFortDollarActive;
    var fortShieldActive = state.isFortShieldActive;
    var fortCryptoActive = state.isFortCryptoActive;
    if(fortDollarActive && !fortShieldActive && !fortCryptoActive){
      var balance = 0;
      for(var element in fortDollarInvestments){
        var availableBalance = element.amount + element.planYield;
        balance += availableBalance;
      }
      emit(state.copyWith(walletBalance: balance));
    }else if(!fortDollarActive && fortShieldActive && !fortCryptoActive){
      var balance = 0;
      for(var element in fortShieldInvestments){
        var availableBalance = element.amount + element.planYield;
        balance += availableBalance;
      }
      emit(state.copyWith(walletBalance: balance));
    }else if(!fortDollarActive && !fortShieldActive && fortCryptoActive){
      var balance = 0;
      for(var element in fortCryptoInvestments){
        var availableBalance = element.amount + element.planYield;
        balance += availableBalance;
      }
      emit(state.copyWith(walletBalance: balance));
    }else if(fortDollarActive && fortShieldActive && !fortCryptoActive){
      var balance = 0;
      var totalinvestment = fortDollarInvestments + fortShieldInvestments;
      for(var element in totalinvestment){
        var availableBalance = element.amount + element.planYield;
        balance += availableBalance;
      }
      emit(state.copyWith(walletBalance: balance));
    }else if(fortDollarActive && !fortShieldActive && fortCryptoActive){
      var balance = 0;
      var totalinvestment = fortDollarInvestments + fortCryptoInvestments;
      for(var element in totalinvestment){
        var availableBalance = element.amount + element.planYield;
        balance += availableBalance;
      }
      emit(state.copyWith(walletBalance: balance));
    }else if(!fortDollarActive && fortShieldActive && fortCryptoActive){
      var balance = 0;
      var totalinvestment = fortShieldInvestments + fortCryptoInvestments;
      for(var element in totalinvestment){
        var availableBalance = element.amount + element.planYield;
        balance += availableBalance;
      }
      emit(state.copyWith(walletBalance: balance));
    }else if(fortDollarActive && fortShieldActive && fortCryptoActive){
      var balance = 0;
      var totalinvestment = fortShieldInvestments + fortCryptoInvestments + fortDollarInvestments;
      for(var element in totalinvestment){
        var availableBalance = element.amount + element.planYield;
        balance += availableBalance;
      }
      emit(state.copyWith(walletBalance: balance));
    }
  }

  
  void initBankAddresses() async {
    var bank = await firestoreFacade.getBankAddress();
    bank.fold(() => null, (bankAddresses) {
      emit(state.copyWith(bankAddresses: bankAddresses));
    });
  }

  void initCryptoWallet() async {
    var wallet = await firestoreFacade.getCryptoWallets();
    wallet.fold(() => null, (cryptoAddresses) {
      emit(state.copyWith(cryptoAddresses: cryptoAddresses));
    });
  }

  void initGeneralCryptoWallet() async {
    var wallet = await firestoreFacade.getGeneralCryptoWallets();
    wallet.fold(() => null, (generalCryptoAddresses) {
      emit(state.copyWith(generalCryptoAddresses: generalCryptoAddresses));
    });
  }

  void initFortDollarInvestments() async {
    var investments = await firestoreFacade.getFortDollarInvestments();
    investments.fold(() => null, (fortDollarInvestments) {
      emit(state.copyWith(fortDollarInvestments: fortDollarInvestments));
    });
  }
  void initFortShieldInvestments() async {
    var investments = await firestoreFacade.getFortShieldInvestments();
    investments.fold(() => null, (fortShieldInvestments) {
      emit(state.copyWith(fortShieldInvestments: fortShieldInvestments));
    });
  }
  void initFortCryptoInvestments() async {
    var investments = await firestoreFacade.getFortCryptoInvestments();
    investments.fold(() => null, (fortCryptoInvestments) {
      emit(state.copyWith(fortCryptoInvestments: fortCryptoInvestments));
    });
  }

  void initTransactions() {
    var investments = state.fortDollarInvestments + state.fortCryptoInvestments + state.fortShieldInvestments;
    var withdrawals = state.withdrawals;
    var transactions = state.transactions;

    for(var investment in investments){
      transactions.add(TransactionItem(withdrawalItem: null,investmentItem: investment));
    }
    for (var withdrawal in withdrawals){
      transactions.add(TransactionItem(withdrawalItem: withdrawal,investmentItem: null));
    }
    emit(state.copyWith(transactions: transactions));
  }

  void withdrawalDetailsChanged(
      {required Map<String, dynamic> withdrawalDetails}) {
    emit(state.copyWith(withdrawalDetails: withdrawalDetails));
  }

  void makeWithdrawalTransaction() async {
    final String investmentPlan = state.investmentPlan;
    final String description = "$investmentPlan withdrawal".toUpperCase();
    final int amount = state.investmentToBeWithdrawn.amount;
    final double duration = state.investmentToBeWithdrawn.duration;
    final int roi = state.investmentToBeWithdrawn.roi;
    final String paymentMethod = state.withdrawalMethod;
    final traxId = const Uuid().v4().substring(0,7);
    final String uid = nanoid(8);
    final String currency = state.investmentToBeWithdrawn.currency;
    WithdrawalItem withdrawalItem = WithdrawalItem(
      description: description,
      amount: amount,
      traxId: traxId,
      planName: investmentPlan,
      status: "Pending",
      createdat: DateTime.now(),
      paymentMethod: paymentMethod,
      uid: uid, 
      duration: duration.toInt(),
      roi: roi,
      currency: currency
    );
    final response = await firestoreFacade.createWithdrawalTransaction(withdrawalItem: withdrawalItem);
    try {
      response.fold((failure){
        emit(state.copyWith(failure: failure));
      }, (success){
        emit(state.copyWith(success: success));
      });
    } catch (e) {
      log(e.toString());
    }
  }

  void harvestInvestment({required String docId, required int amount}) async {
    emit(state.copyWith(loading: true));
    final response = await firestoreFacade.harvestInvestment(docId: docId, amount: amount);
    try {
      response.fold((failure){
        emit(state.copyWith(loading: false, failure: failure));
      },(success){
        emit(state.copyWith(loading: false, success: success));
      });
    } catch (e) {
      log(e.toString());
    }
  }

  void reset() {
    emit(state.copyWith(
        investmentPlan: "",
        withdrawalMethod: "",
        failure: "",
        success: "",
        withdrawalDetails: {}));
  }
}
