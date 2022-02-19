import 'package:bloc/bloc.dart';
import 'package:fortfolio/models/bankAddress.dart';
import 'package:fortfolio/models/crypto_wallet.dart';
import 'package:fortfolio/models/crypto_wallet.dart';
import 'package:fortfolio/resources/firestore_methods.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'wallet_state.dart';
part 'wallet_cubit.freezed.dart';

@injectable
class WalletCubit extends Cubit<WalletState> {
  final FireStoreMethods fireStoreMethods;
  WalletCubit(this.fireStoreMethods) : super(WalletState.initial());

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

  void initBankAddresses() {
    var bankAddresses = state.bankAddresses;
    var bank = fireStoreMethods.getBankAddress();
    bank.asStream().listen((event) {
      bankAddresses.add(event);
      emit(state.copyWith(bankAddresses: bankAddresses));
    }, onError: (value) => print(value));
  }

  void initCryptoWallet() {
    var cryptoAddresses = state.cryptoAddresses;
    var wallet = fireStoreMethods.getCryptoWallets();
    wallet.asStream().listen((address) {
      cryptoAddresses.add(address);
      emit(state.copyWith(cryptoAddresses: cryptoAddresses));
    }, onError: (value) => print(value));
  }

  void initGeneralCryptoWallet() {
    var generalCryptoAddresses = state.generalCryptoAddresses;
    var wallet = fireStoreMethods.getGeneralCryptoWallets();
    wallet.asStream().listen((address) {
      generalCryptoAddresses.add(address);
      emit(state.copyWith(generalCryptoAddresses: generalCryptoAddresses));
    }, onError: (value) => print(value));
  }

  void withdrawalDetailsChanged({
    required Map<String, dynamic> withdrawalDetails
  }){
    emit(state.copyWith(withdrawalDetails: withdrawalDetails));
  }

  void makeWithdrawalTransaction() async {
    final String investmentPlan = state.investmentPlan;
    final String description = "$investmentPlan withdrawal".toUpperCase();
    final int amount = state.amountToBeWithdrawn;
    final String paymentMethod = state.withdrawalMethod;
    final withdrawalDetails = state.withdrawalDetails;
    try {
      final String response =
          await fireStoreMethods.createWithdrawalTransaction(
              description, amount, investmentPlan, paymentMethod, withdrawalDetails);
      emit(state.copyWith(response: response));
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
      withdrawalDetails: {}
    ));
  }
}
