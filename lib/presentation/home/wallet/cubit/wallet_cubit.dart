import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/domain/auth/i_auth_facade.dart';
import 'package:fortfolio/domain/auth/i_external_facade.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/user/investment.dart';
import 'package:fortfolio/domain/user/transaction_item.dart';
import 'package:fortfolio/domain/user/withdrawal_item.dart';
import 'package:fortfolio/infrastructure/auth/dto/investment/investment_dto.dart';
import 'package:fortfolio/infrastructure/auth/dto/transactions/transactions_dto.dart';
import 'package:fortfolio/infrastructure/auth/dto/withdrawal/withdrawal_dto.dart';
import 'package:fortfolio/infrastructure/auth/local_auth_api.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/utils/utils.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nanoid/nanoid.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

part 'wallet_state.dart';
part 'wallet_cubit.freezed.dart';

@injectable
class WalletCubit extends Cubit<WalletState> {
  final IFirestoreFacade firestoreFacade;
  final IExternalFacade externalFacade;
  final IAuthFacade authFacade;
  late final AuthCubit authCubit;
  late final int dollarPrice;
  StreamSubscription<QuerySnapshot>? _logsFortDollarSubscription;
  StreamSubscription<QuerySnapshot>? _logsFortShieldSubscription;
  StreamSubscription<QuerySnapshot>? _logsFortCryptoSubscription;
  StreamSubscription<QuerySnapshot>? _logsTransaction;

  WalletCubit(this.firestoreFacade, this.externalFacade, this.authFacade)
      : super(WalletState.initial()) {
    authCubit = getIt<AuthCubit>();
    dollarPrice = authCubit.state.buyPrice;
    authCubit.stream.listen((state) {
      if (state.isLoggedIn) {
        initTransactions();
        initFortDollarInvestments();
        initFortShieldInvestments();
        initFortCryptoInvestments();
      }
    });
  }

  void showDigitsChanged() {
    final showDigits = state.showDigits;
    emit(state.copyWith(showDigits: !showDigits));
  }

  void toggleCurrentSort({required String currentSort}) {
    emit(state.copyWith(currentSort: currentSort));
  }

  void sortInvestments() {
    resetSuccess();
    _logsTransaction = firestoreFacade.getTransactions().listen((data) {
      final List<QueryDocumentSnapshot<Object?>> docs = data.docs;
      List<TransactionItem> transactions = [];
      if (data.size > 0) {
        for (var element in docs) {
          final doc = TransactionItemDTO.fromFirestore(element).toDomain();
          if (doc.type == "Investment") {
            transactions.add(doc);
          }
        }
        emit(state.copyWith(transactions: transactions));
      }
    });
  }

  void sortWithdrawals() {
    resetSuccess();
    _logsTransaction = firestoreFacade.getTransactions().listen((data) {
      final List<QueryDocumentSnapshot<Object?>> docs = data.docs;
      List<TransactionItem> transactions = [];
      if (data.size > 0) {
        for (var element in docs) {
          final doc = TransactionItemDTO.fromFirestore(element).toDomain();
          if (doc.type == "Withdrawal") {
            transactions.add(doc);
          }
        }
        emit(state.copyWith(transactions: transactions));
      }
    });
  }

  void getWalletBalanceInBTC() async {
    emit(state.copyWith(exchange: "BTC"));
  }

  void getWalletBalanceInNaira() async {
    emit(state.copyWith(exchange: "NGN"));
  }

  void getWalletBalanceInUSD() async {
    emit(state.copyWith(exchange: "USD"));
  }

  void investmentToBeWithdrawnChanged(
      {required InvestmentItem investmentToBeWithdrawn}) {
    emit(state.copyWith(investmentToBeWithdrawn: investmentToBeWithdrawn));
  }

  void withdrawalMethodChanged({required String withdrawalMethod}) {
    emit(state.copyWith(withdrawalMethod: withdrawalMethod));
  }

  void exchangeChanged({required String exchange}) {
    emit(state.copyWith(exchange: exchange));
  }

  void initFortDollar() {
    var fortDollarInvestments = state.fortDollarInvestments;
    var isFortDollarActive = state.isFortDollarActive;
    var planYield = 0.0;
    var amount = 0.0;
    if(isFortDollarActive){
      for (var element in fortDollarInvestments) {
      if (element.status == "Successful") {
        planYield += element.planYield;
        amount += element.amount;
      }
    }
    emit(state.copyWith(
        fortDollarYieldBalance: planYield,
        fortDollarInvestmentBalance: amount));
    }
  }

  void initFortShield() {
    var fortShieldInvestments = state.fortShieldInvestments;
    var isFortShieldActive = state.isFortShieldActive;
    var planYield = 0.0;
    var amount = 0.0;
    if(isFortShieldActive){
      for (var element in fortShieldInvestments) {
      if (element.status == "Successful") {
        planYield += element.planYield;
        amount += element.amount;
      }
    }

    emit(state.copyWith(
        fortShieldYieldBalance: planYield,
        fortShieldInvestmentBalance: amount));
    }
  }

  void initFortCrypto() {
    var fortCryptoInvestments = state.fortCryptoInvestments;
    var isFortCryptoActive = state.isFortCryptoActive;
    var planYield = 0.0;
    var amount = 0.0;
    if(isFortCryptoActive){
      for (var element in fortCryptoInvestments) {
        if (element.status == "Successful") {
          planYield += element.planYield;
          amount += element.amount;
        }
      }
      emit(state.copyWith(
          fortCryptoYieldBalance: planYield,
          fortCryptoInvestmentBalance: amount));
    }
  }

  void initFortDollarInvestments() {
    _logsFortDollarSubscription =
        firestoreFacade.getFortDollarInvestments().listen((data) {
      final List<QueryDocumentSnapshot<Object?>> docs = data.docs;
      List<InvestmentItem> fortDollarInvestments = [];
      if (data.size > 0) {
        for (var element in docs) {
          final doc = InvestmentItemDTO.fromFirestore(element).toDomain();
          if(doc.status != "Rejected") {
            fortDollarInvestments.add(doc);
          }
        }
        initFortDollar();
      }
      emit(state.copyWith(fortDollarInvestments: fortDollarInvestments));
    });
  }

  void initFortShieldInvestments() {
    _logsFortShieldSubscription =
        firestoreFacade.getFortShieldInvestments().listen((data) {
      final List<QueryDocumentSnapshot<Object?>> docs = data.docs;
      List<InvestmentItem> fortShieldInvestments = [];
      if (data.size > 0) {
        for (var element in docs) {
          final doc = InvestmentItemDTO.fromFirestore(element).toDomain();
          if(doc.status != "Rejected") {
            fortShieldInvestments.add(doc);
          }
        }
        initFortShield();
      }
      emit(state.copyWith(fortShieldInvestments: fortShieldInvestments));
    });
  }

  void initFortCryptoInvestments() {
    _logsFortCryptoSubscription =
        firestoreFacade.getFortCryptoInvestments().listen((data) {
      final List<QueryDocumentSnapshot<Object?>> docs = data.docs;
      List<InvestmentItem> fortCryptoInvestments = [];
      if (data.size > 0) {
        for (var element in docs) {
          final doc = InvestmentItemDTO.fromFirestore(element).toDomain();
          if(doc.status != "Rejected") {
            fortCryptoInvestments.add(doc);
          }
        }
        initFortCrypto();
      }
      emit(state.copyWith(fortCryptoInvestments: fortCryptoInvestments));
    });
  }

  // void initWithdrawals() {
  //   _logsFortCryptoSubscription =
  //       firestoreFacade.getWithdrawals().listen((data) {
  //     final List<QueryDocumentSnapshot<Object?>> docs = data.docs;
  //     List<WithdrawalItem> withdrawals = [];
  //     if (data.size > 0) {
  //       for (var element in docs) {
  //         final doc = WithdrawalItemDTO.fromFirestore(element).toDomain();
  //         withdrawals.add(doc);
  //       }
  //       emit(state.copyWith(withdrawals: withdrawals));
  //     }
  //   });
  // }

  initTransactions() {
    resetSuccess();
    _logsTransaction = firestoreFacade.getTransactions().listen((data) {
      final List<QueryDocumentSnapshot<Object?>> docs = data.docs;
      List<TransactionItem> transactions = [];
      if (data.size > 0) {
        for (var element in docs) {
          final doc = TransactionItemDTO.fromFirestore(element).toDomain();
          transactions.add(doc);
        }
        emit(state.copyWith(transactions: transactions));
      }
    });
  }

  void withdrawalDetailsChanged(
      {required Map<String, dynamic> withdrawalDetails}) {
    emit(state.copyWith(withdrawalDetails: withdrawalDetails));
  }

  void makeWithdrawalTransaction() async {
    emit(state.copyWith(loading: true, success: "", failure: ""));
    final String description =
        "${state.investmentToBeWithdrawn.planName} withdrawal";
    final double amount = state.investmentToBeWithdrawn.amount;
    final int duration = state.investmentToBeWithdrawn.duration;
    final int roi = state.investmentToBeWithdrawn.roi;
    final String paymentMethod = state.withdrawalMethod;
    // final traxId = const Uuid().v4().substring(0, 7);
    final String uid = nanoid(8);
    final String currency = state.investmentToBeWithdrawn.currency;
    final Map<String, dynamic> withdrawalDetails = state.withdrawalDetails;
    WithdrawalItem withdrawalItem = WithdrawalItem(
        description: description,
        amount: amount,
        traxId: state.investmentToBeWithdrawn.traxId,
        status: "Pending",
        createdat: DateTime.now(),
        paymentMethod: paymentMethod,
        uid: uid,
        refId: authFacade.getUserId(),
        duration: duration.toInt(),
        roi: roi,
        withdrawalDetails: withdrawalDetails,
        currency: currency);
    final response = await firestoreFacade.createWithdrawalTransaction(
        withdrawalItem: withdrawalItem,
        );
    try {
      response.fold((failure) {
        emit(state.copyWith(failure: failure, loading: false));
      }, (success) {
        emit(state.copyWith(success: success, loading: false));
        initTransactions();
      });
    } catch (e) {
      log(e.toString());
    }
  }


  void harvestInvestment(
      {required String docId, required double amount}) async {
    emit(state.copyWith(loading: true));
    resetSuccess();
    var investmentToBeWithdrawn = state.investmentToBeWithdrawn;
    final String uid = nanoid(8);
    WithdrawalItem withdrawalItem = WithdrawalItem(
      description: "${investmentToBeWithdrawn.planName} Harvest",
      amount: amount,
      traxId: investmentToBeWithdrawn.traxId,
      uid: uid,
      refId: authFacade.getUserId(),
      status: "Pending",
      createdat: DateTime.now(),
      paymentMethod: investmentToBeWithdrawn.paymentMethod,
      currency: investmentToBeWithdrawn.currency,
      duration: investmentToBeWithdrawn.duration,
      roi: investmentToBeWithdrawn.roi,
      withdrawalDetails: state.withdrawalDetails,
    );
    try {
      final response =
        await firestoreFacade.harvestInvestment(docId: docId, amount: amount, withdrawalItem: withdrawalItem);
      response.fold((failure) {
        emit(state.copyWith(loading: false, failure: failure,withdrawalDetails: {}));
      }, (success) {
        emit(state.copyWith(
            loading: false,
            success: success,withdrawalDetails: {}));
        initFortDollarInvestments();
        initFortShieldInvestments();
        initFortCryptoInvestments();
      });
    } catch (e) {
      log(e.toString());
    }
  }

  void cancelWithdrawal({required String traxId}) async{
    emit(state.copyWith(loading: true));
    resetSuccess();
    try {
      final response = await firestoreFacade.cancelWithdrawal(traxId: traxId);
      response.fold((failure) {
        emit(state.copyWith(loading: false, failure: failure));
      }, (success) {
        emit(state.copyWith(
            loading: false,
            success: success,));
      });
    } catch (e) {
      log(e.toString());
    }
  }

  void authenticateBiometricPayment() async {
    bool canCheckBiometrics = await LocalAuthApi.hasBiometrics();
    if (Platform.isAndroid) {
      if (canCheckBiometrics) {
        bool didauthenticate = await LocalAuthApi.authenticate(
            localizedReason: 'Scan fingerprint to invest');
        if (didauthenticate != true) {
          emit(state.copyWith(failure: "Authenticate to continue"));
          Future.delayed(const Duration(seconds: 1),
              () => emit(state.copyWith(failure: "")));
        } else {
          Future.delayed(
              const Duration(seconds: 1), () => makeWithdrawalTransaction());
        }
      }
    }
  }

  void auhenticatePinPayment({required String pin}) async {
    final sp = await SharedPreferences.getInstance();
    String traxPin = "";
    if (sp.containsKey("trax_key")) {
      traxPin = sp.getString("trax_key")!;
    }
    print(pin);
    print(traxPin);
    if (pin == traxPin) {
      makeWithdrawalTransaction();
    } else {
      emit(state.copyWith(failure: "Incorrect Transaction Pin"));
      Future.delayed(
          const Duration(seconds: 1), () => emit(state.copyWith(failure: "")));
    }
  }

  void reset() {
    emit(state.copyWith(
        withdrawalMethod: "", failure: "", success: "", withdrawalDetails: {}));
  }
  void resetSuccess() {
    emit(state.copyWith(
        failure: "", success: ""));
  }

  @override
  Future<void> close() async {
    await _logsFortCryptoSubscription?.cancel();
    await _logsFortDollarSubscription?.cancel();
    await _logsFortShieldSubscription?.cancel();
    await _logsTransaction?.cancel();
    return super.close();
  }
}
