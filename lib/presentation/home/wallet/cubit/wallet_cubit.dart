import 'package:bloc/bloc.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/auth/status.dart';
import 'package:fortfolio/domain/user/bank_address.dart';
import 'package:fortfolio/domain/user/crypto_wallet.dart';
import 'package:fortfolio/domain/user/investment.dart';
import 'package:fortfolio/domain/user/withdrawal_item.dart';
import 'package:fortfolio/infrastructure/auth/firebase_firestore_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

part 'wallet_state.dart';
part 'wallet_cubit.freezed.dart';

@injectable
class WalletCubit extends Cubit<WalletState> {
  final IFirestoreFacade firestoreFacade;
  WalletCubit(this.firestoreFacade) : super(WalletState.initial());

  void investmentPlanChanged({required String investmentPlan}) {
    emit(state.copyWith(investmentPlan: investmentPlan));
  }

  void amountToBeWithdrawnChanged({required int amountToBeWithdrawn}) {
    emit(state.copyWith(amountToBeWithdrawn: amountToBeWithdrawn));
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

  void initFortDollar(){
    var fortDollarInvestments = state.fortDollarInvestments;
    var planYield = 0;
      var amount = 0;
      for(var element in fortDollarInvestments){
        planYield += element.planYield;
        amount += element.amount;
      }
      emit(state.copyWith(yieldBalance: planYield, investmentBalance: amount));
  }
  void initFortShield(){
    var fortShieldInvestments = state.fortShieldInvestments;
    var planYield = 0;
      var amount = 0;
      for(var element in fortShieldInvestments){
        planYield += element.planYield;
        amount += element.amount;
      }
      emit(state.copyWith(yieldBalance: planYield, investmentBalance: amount));
  }
  void initFortCrypto(){
    var fortCryptoInvestments = state.fortCryptoInvestments;
    var planYield = 0;
      var amount = 0;
      for(var element in fortCryptoInvestments){
        planYield += element.planYield;
        amount += element.amount;
      }
      emit(state.copyWith(yieldBalance: planYield, investmentBalance: amount));
  }

  void initWalletBalance(){
    var fortDollarInvestments = state.fortDollarInvestments;
    var fortShieldInvestments = state.fortShieldInvestments;
    var fortCryptoInvestments = state.fortCryptoInvestments;
    var investmentView = state.investmentView;
    if(investmentView == "fortdollar"){
      var balance = 0;
      for(var element in fortDollarInvestments){
        var availableBalance = element.amount + element.planYield;
        balance += availableBalance;
      }
      emit(state.copyWith(walletBalance: balance));
    }else if(investmentView == "fortshield"){
      var balance = 0;
      for(var element in fortShieldInvestments){
        var availableBalance = element.amount + element.planYield;
        balance += availableBalance;
      }
      emit(state.copyWith(walletBalance: balance));
    }else if(investmentView == "fortcrypto"){
      var balance = 0;
      for(var element in fortCryptoInvestments){
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

  void withdrawalDetailsChanged(
      {required Map<String, dynamic> withdrawalDetails}) {
    emit(state.copyWith(withdrawalDetails: withdrawalDetails));
  }

  void makeWithdrawalTransaction() async {
    final String investmentPlan = state.investmentPlan;
    final String description = "$investmentPlan withdrawal".toUpperCase();
    final int amount = state.amountToBeWithdrawn;
    final String paymentMethod = state.withdrawalMethod;
    final withdrawalDetails = state.withdrawalDetails;
    final traxId = const Uuid().v4();
    try {
      WithdrawalItem withdrawalItem = WithdrawalItem(
        description: description,
        amount: amount,
        traxId: traxId,
        planName: investmentPlan,
        status: Status.processing,
        createdat: DateTime.now(),
        paymentMethod: paymentMethod,
      );
      final response = await firestoreFacade.createWithdrawalTransaction(withdrawalItem: withdrawalItem);
      response.fold(() => null, (response){
        emit(state.copyWith(response: response));
      });
    } catch (e) {
      emit(state.copyWith(response: e.toString()));
    }
  }

  void reset() {
    emit(state.copyWith(
        investmentPlan: "",
        amountToBeWithdrawn: 0,
        withdrawalMethod: "",
        response: "",
        withdrawalDetails: {}));
  }
}
