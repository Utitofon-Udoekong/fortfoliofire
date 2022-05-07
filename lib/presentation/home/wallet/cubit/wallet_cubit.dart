import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/domain/auth/i_external_facade.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/user/bank_address.dart';
import 'package:fortfolio/domain/user/crypto_wallet.dart';
import 'package:fortfolio/domain/user/investment.dart';
import 'package:fortfolio/domain/user/transaction_item.dart';
import 'package:fortfolio/domain/user/withdrawal_item.dart';
import 'package:fortfolio/infrastructure/auth/dto/bank_address/bank_address_dto.dart';
import 'package:fortfolio/infrastructure/auth/dto/crypto_address/crypto_address.dart';
import 'package:fortfolio/infrastructure/auth/dto/investment/investment_dto.dart';
import 'package:fortfolio/infrastructure/auth/dto/withdrawal/withdrawal_dto.dart';
import 'package:fortfolio/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nanoid/nanoid.dart';
import 'package:uuid/uuid.dart';

part 'wallet_state.dart';
part 'wallet_cubit.freezed.dart';

@injectable
class WalletCubit extends Cubit<WalletState> {
  final IFirestoreFacade firestoreFacade;
  final IExternalFacade externalFacade;
  late final AuthCubit authCubit;
  StreamSubscription<QuerySnapshot>? _logsFortDollarSubscription;
  StreamSubscription<QuerySnapshot>? _logsFortShieldSubscription;
  StreamSubscription<QuerySnapshot>? _logsFortCryptoSubscription;
  StreamSubscription<QuerySnapshot>? _logsBankAddressSubscription;
  StreamSubscription<QuerySnapshot>? _logsCryptoAddressSubscription;
  StreamSubscription<QuerySnapshot>? _logsGeneralCryptoAddressSubscription;

  WalletCubit(this.firestoreFacade, this.externalFacade) : super(WalletState.initial()) {
    authCubit = getIt<AuthCubit>();
    authCubit.stream.listen((state) {
      if (state.isLoggedIn) {
        initWithdrawals();
        initFortDollarInvestments();
        initFortShieldInvestments();
        initFortCryptoInvestments();
      }
    });
  }


  void investmentPlanChanged({required String investmentPlan}) {
    emit(state.copyWith(investmentPlan: investmentPlan));
  }

  void showDigitsChanged() {
    final showDigits = state.showDigits;
    emit(state.copyWith(showDigits: !showDigits));
  }

  void getWalletBalanceInBTC() async {
    final btcPriceOption = await externalFacade.getBTCPriceInDollars();
    double btcPriceInDollars = 0;
    btcPriceOption.fold(() => null, (price) {
      btcPriceInDollars = price;
    });
    var walletBalance = state.walletBalance;
    if(state.exchange == "NGN"){
      walletBalance /= 590;
    }
    emit(state.copyWith(walletBalance: (walletBalance / btcPriceInDollars)));
  }

  void getWalletBalanceInNaira() async {
    var walletBalance = state.walletBalance;
    final btcPriceOption = await externalFacade.getBTCPriceInDollars();
    double btcPriceInDollars = 0;
    btcPriceOption.fold(() => null, (price) {
      btcPriceInDollars = price;
    });
    if(state.exchange == "BTC"){
      walletBalance *= btcPriceInDollars;
    }
    emit(state.copyWith(walletBalance: (walletBalance * 590)));
  }

  void getWalletBalanceInUSD() async {
    var walletBalance = state.walletBalance;
    final btcPriceOption = await externalFacade.getBTCPriceInDollars();
    double btcPriceInDollars = 0;
    btcPriceOption.fold(() => null, (price) {
      btcPriceInDollars = price;
    });
    if(state.exchange == "BTC"){
      walletBalance *= btcPriceInDollars;
    }
    emit(state.copyWith(walletBalance: walletBalance));
  }

  void investmentToBeWithdrawnChanged(
      {required InvestmentItem investmentToBeWithdrawn}) {
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

  void exchangeChanged({required String exchange}) {
    emit(state.copyWith(exchange: exchange));
  }

  void initFortDollar() {
    var fortDollarInvestments = state.fortDollarInvestments;
    var planYield = 0.0;
    var amount = 0.0;
    for (var element in fortDollarInvestments) {
      planYield += element.planYield;
      amount += element.amount;
    }
    emit(state.copyWith(
        fortDollarYieldBalance: planYield,
        fortDollarInvestmentBalance: amount));
  }

  void initFortShield() {
    var fortShieldInvestments = state.fortShieldInvestments;
    var planYield = 0.0;
    var amount = 0.0;
    for (var element in fortShieldInvestments) {
      planYield += element.planYield;
      amount += element.amount;
    }
    emit(state.copyWith(
        fortShieldYieldBalance: planYield,
        fortShieldInvestmentBalance: amount));
  }

  void initFortCrypto() {
    var fortCryptoInvestments = state.fortCryptoInvestments;
    var planYield = 0.0;
    var amount = 0.0;
    for (var element in fortCryptoInvestments) {
      planYield += element.planYield;
      amount += element.amount;
    }
    emit(state.copyWith(
        fortCryptoYieldBalance: planYield,
        fortCryptoInvestmentBalance: amount));
  }

  void initWalletBalance() async {
    var fortDollarInvestments = state.fortDollarInvestments;
    var fortShieldInvestments = state.fortShieldInvestments;
    var fortCryptoInvestments = state.fortCryptoInvestments;
    var fortDollarActive = state.isFortDollarActive;
    var fortShieldActive = state.isFortShieldActive;
    var fortCryptoActive = state.isFortCryptoActive;
     
    if (fortDollarActive && !fortShieldActive && !fortCryptoActive) {
      var balance = 0.0;
      for (var element in fortDollarInvestments) {
        var availableBalance = element.amount + element.planYield;
        if(element.status != "Pending"){
          balance += availableBalance;
        }
      }
      emit(state.copyWith(walletBalance: balance));
    } else if (!fortDollarActive && fortShieldActive && !fortCryptoActive) {
      var balance = 0.0;
      for (var element in fortShieldInvestments) {
        var availableBalance =
            (element.amount / 590) + (element.planYield / 590);
        if(element.status != "Pending"){
          balance += availableBalance;
        }
      }
      emit(state.copyWith(walletBalance: balance));
    } else if (!fortDollarActive && !fortShieldActive && fortCryptoActive) {
      var balance = 0.0;
      for (var element in fortCryptoInvestments) {
        var btcToUsdPriceOption = await externalFacade.getCoinPrice(id: element.coin!);
        var btcPrice = 0.0;
        btcToUsdPriceOption.fold(() => null, (price) {
          btcPrice = price;
        });
        var availableBalance = (element.amount * btcPrice) + (element.planYield * btcPrice);
        if(element.status != "Pending"){
          balance += availableBalance;
        }
      }
      emit(state.copyWith(walletBalance: balance));
    } else if (fortDollarActive && fortShieldActive && !fortCryptoActive) {
      var balance = 0.0;
      for (var element in fortShieldInvestments) {
        var availableBalance =
            (element.amount / 590) + (element.planYield / 590);
        if(element.status != "Pending"){
          balance += availableBalance;
        }
      }
      for (var element in fortDollarInvestments) {
        var availableBalance = element.amount + element.planYield;
        if(element.status != "Pending"){
          balance += availableBalance;
        }
      }
      emit(state.copyWith(walletBalance: balance));
    } else if (fortDollarActive && !fortShieldActive && fortCryptoActive) {
      var balance = 0.0;
      for (var element in fortDollarInvestments) {
        var availableBalance = element.amount + element.planYield;
        if(element.status != "Pending"){
          balance += availableBalance;
        }
      }
      for (var element in fortCryptoInvestments) {
        var btcToUsdPriceOption = await externalFacade.getCoinPrice(id: element.coin!);
        var btcPrice = 0.0;
        btcToUsdPriceOption.fold(() => null, (price) {
          btcPrice = price;
        });
        var availableBalance = (element.amount * btcPrice) + (element.planYield * btcPrice);
        if(element.status != "Pending"){
          balance += availableBalance;
        }
      }
      emit(state.copyWith(walletBalance: balance));
    } else if (!fortDollarActive && fortShieldActive && fortCryptoActive) {
      var balance = 0.0;
      for (var element in fortShieldInvestments) {
        var availableBalance =
            (element.amount / 590) + (element.planYield / 590);
        if(element.status != "Pending"){
          balance += availableBalance;
        }
      }
      for (var element in fortCryptoInvestments) {
        var btcToUsdPriceOption = await externalFacade.getCoinPrice(id: element.coin!);
        var btcPrice = 0.0;
        btcToUsdPriceOption.fold(() => null, (price) {
          btcPrice = price;
        });
        var availableBalance = (element.amount * btcPrice) + (element.planYield * btcPrice);
        if(element.status != "Pending"){
          balance += availableBalance;
        }
      }
      emit(state.copyWith(walletBalance: balance));
    } else if (fortDollarActive && fortShieldActive && fortCryptoActive) {
      var balance = 0.0;
      for (var element in fortDollarInvestments) {
        var availableBalance = element.amount + element.planYield;
        if(element.status != "Pending"){
          balance += availableBalance;
        }
      }
      for (var element in fortCryptoInvestments) {
        var btcToUsdPriceOption = await externalFacade.getCoinPrice(id: element.coin!);
        var btcPrice = 0.0;
        btcToUsdPriceOption.fold(() => null, (price) {
          btcPrice = price;
        });
        var availableBalance = (element.amount * btcPrice) + (element.planYield * btcPrice);
        if(element.status != "Pending"){
          balance += availableBalance;
        }
      }
      for (var element in fortShieldInvestments) {
        var availableBalance =
            (element.amount / 590) + (element.planYield / 590);
        if(element.status != "Pending"){
          balance += availableBalance;
        }
      }
      emit(state.copyWith(walletBalance: balance));
    }
  }

  void initBankAddresses() {
    _logsBankAddressSubscription =
        firestoreFacade.getBankAddress().listen((data) {
      final List<QueryDocumentSnapshot<Object?>> docs = data.docs;
      List<BankAddress> bankAddresses = [];
      if (data.size > 0) {
        for (var element in docs) {
          final doc = BankAddressDTO.fromFirestore(element).toDomain();
          bankAddresses.add(doc);
        }
        emit(state.copyWith(bankAddresses: bankAddresses));
      }
    });
  }

  void initCryptoWallet() {
    _logsCryptoAddressSubscription =
        firestoreFacade.getCryptoWallets().listen((data) {
      final List<QueryDocumentSnapshot<Object?>> docs = data.docs;
      List<CryptoWallet> cryptoAddresses = [];
      if (data.size > 0) {
        for (var element in docs) {
          final doc = CryptoWalletDTO.fromFirestore(element).toDomain();
          cryptoAddresses.add(doc);
        }
        emit(state.copyWith(cryptoAddresses: cryptoAddresses));
      }
    });
  }

  void initGeneralCryptoWallet() {
    _logsGeneralCryptoAddressSubscription =
        firestoreFacade.getCryptoWallets().listen((data) {
      final List<QueryDocumentSnapshot<Object?>> docs = data.docs;
      List<CryptoWallet> generalCryptoAddresses = [];
      if (data.size > 0) {
        for (var element in docs) {
          final doc = CryptoWalletDTO.fromFirestore(element).toDomain();
          generalCryptoAddresses.add(doc);
        }
        emit(state.copyWith(generalCryptoAddresses: generalCryptoAddresses));
      }
    });
  }

  void initFortDollarInvestments() {
    _logsFortDollarSubscription =
        firestoreFacade.getFortDollarInvestments().listen((data) {
      final List<QueryDocumentSnapshot<Object?>> docs = data.docs;
      List<InvestmentItem> fortDollarInvestments = [];
      if (data.size > 0) {
        for (var element in docs) {
          final doc = InvestmentItemDTO.fromFirestore(element).toDomain();
          fortDollarInvestments.add(doc);
        }
        emit(state.copyWith(fortDollarInvestments: fortDollarInvestments));
        initFortDollar();
        initWalletBalance();
        initTransactions();
      }
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
          fortShieldInvestments.add(doc);
        }
        emit(state.copyWith(fortShieldInvestments: fortShieldInvestments));
        initFortShield();
        initWalletBalance();
        initTransactions();
      }
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
          fortCryptoInvestments.add(doc);
        }
        emit(state.copyWith(fortCryptoInvestments: fortCryptoInvestments));
        initFortCrypto();
        initWalletBalance();
        initTransactions();
      }
    });
  }

  void initWithdrawals() {
    _logsFortCryptoSubscription =
        firestoreFacade.getWithdrawals().listen((data) {
      final List<QueryDocumentSnapshot<Object?>> docs = data.docs;
      List<WithdrawalItem> withdrawals = [];
      if (data.size > 0) {
        for (var element in docs) {
          final doc = WithdrawalItemDTO.fromFirestore(element).toDomain();
          withdrawals.add(doc);
        }
        emit(state.copyWith(withdrawals: withdrawals));
      }
    });
  }

  void initTransactions() {
    var investments = state.fortDollarInvestments +
        state.fortCryptoInvestments +
        state.fortShieldInvestments;
    var withdrawals = state.withdrawals;
    List<TransactionItem> newTransactions = [];
    for (var investment in investments) {
      newTransactions.add(
          TransactionItem(withdrawalItem: null, investmentItem: investment));
    }
    for (var withdrawal in withdrawals) {
      newTransactions.add(
          TransactionItem(withdrawalItem: withdrawal, investmentItem: null));
    }
    emit(state.copyWith(transactions: newTransactions));
  }

  void withdrawalDetailsChanged(
      {required Map<String, dynamic> withdrawalDetails}) {
    emit(state.copyWith(withdrawalDetails: withdrawalDetails));
  }

  void makeWithdrawalTransaction() async {
    final String investmentPlan = state.investmentPlan;
    final String description = "$investmentPlan withdrawal".toUpperCase();
    final double amount = state.investmentToBeWithdrawn.amount;
    final int duration = state.investmentToBeWithdrawn.duration;
    final int roi = state.investmentToBeWithdrawn.roi;
    final String paymentMethod = state.withdrawalMethod;
    final traxId = const Uuid().v4().substring(0, 7);
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
        currency: currency);
    final response = await firestoreFacade.createWithdrawalTransaction(
        withdrawalItem: withdrawalItem);
    try {
      response.fold((failure) {
        emit(state.copyWith(failure: failure));
      }, (success) {
        emit(state.copyWith(success: success));
        initTransactions();
      });
    } catch (e) {
      log(e.toString());
    }
  }

  void harvestInvestment({required String docId, required double amount}) async {
    emit(state.copyWith(loading: true));
    final response =
        await firestoreFacade.harvestInvestment(docId: docId, amount: amount);
    try {
      response.fold((failure) {
        emit(state.copyWith(loading: false, failure: failure));
      }, (success) {
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

  @override
  Future<void> close() async {
    await _logsFortCryptoSubscription?.cancel();
    await _logsFortDollarSubscription?.cancel();
    await _logsFortShieldSubscription?.cancel();
    await _logsBankAddressSubscription?.cancel();
    await _logsCryptoAddressSubscription?.cancel();
    await _logsGeneralCryptoAddressSubscription?.cancel();
    return super.close();
  }
}
