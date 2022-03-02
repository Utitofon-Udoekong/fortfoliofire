import 'package:bloc/bloc.dart';
import 'package:fortfolio/domain/auth/status.dart';
import 'package:fortfolio/domain/user/bank_address.dart';
import 'package:fortfolio/domain/user/crypto_wallet.dart';
import 'package:fortfolio/domain/user/withdrawal_item.dart';
import 'package:fortfolio/infrastructure/auth/firebase_firestore_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

part 'wallet_state.dart';
part 'wallet_cubit.freezed.dart';

@injectable
class WalletCubit extends Cubit<WalletState> {
  final FirebaseFirestoreFacade firestoreFacade;
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

  void initBankAddresses() async {
    var bankAddresses = state.bankAddresses;
    var bank = await firestoreFacade.getBankAddress();
    bank.fold(() => null, (bankAddress) {
      bankAddresses.add(bankAddress);
      emit(state.copyWith(bankAddresses: bankAddresses));
    });
  }

  void initCryptoWallet() async {
    var cryptoAddresses = state.cryptoAddresses;
    var wallet = await firestoreFacade.getCryptoWallets();
    wallet.fold(() => null, (address) {
      cryptoAddresses.add(address);
      emit(state.copyWith(cryptoAddresses: cryptoAddresses));
    });
  }

  void initGeneralCryptoWallet() async {
    var generalCryptoAddresses = state.generalCryptoAddresses;
    var wallet = await firestoreFacade.getGeneralCryptoWallets();
    wallet.fold(() => null, (address) {
      generalCryptoAddresses.add(address);
      emit(state.copyWith(generalCryptoAddresses: generalCryptoAddresses));
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
