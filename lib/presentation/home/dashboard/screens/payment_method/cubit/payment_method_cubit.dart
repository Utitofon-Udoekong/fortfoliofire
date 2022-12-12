import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/user/bank_address.dart';
import 'package:fortfolio/domain/user/crypto_wallet.dart';
import 'package:fortfolio/infrastructure/auth/dto/bank_address/bank_address_dto.dart';
import 'package:fortfolio/infrastructure/auth/dto/crypto_address/crypto_address.dart';
import 'package:fortfolio/infrastructure/auth/local_auth_api.dart';
import 'package:fortfolio/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nanoid/nanoid.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

part 'payment_method_state.dart';
part 'payment_method_cubit.freezed.dart';


@injectable
class PaymentMethodCubit extends Cubit<PaymentMethodState> {
  final IFirestoreFacade firestoreFacade;
  late final AuthCubit authCubit;
  StreamSubscription<QuerySnapshot>? _logsCryptoAddressSubscription;
  StreamSubscription<QuerySnapshot>? _logsGeneralCryptoAddressSubscription;
  StreamSubscription<QuerySnapshot>? _logsBankAddressSubscription;
  PaymentMethodCubit(this.firestoreFacade) : super(PaymentMethodState.initial()){
    authCubit = getIt<AuthCubit>();
    authCubit.stream.listen((state) {
      if (state.isLoggedIn) {
        initCryptoWallet();
        initGeneralCryptoWallet();
        initBank();
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
        firestoreFacade.getGeneralCryptoWallets().listen((data) {
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

  void coinChanged({required String coin}) {
    emit(state.copyWith(coin: coin));
  }

  void isGeneralChanged({required bool isGeneral}) {
    emit(state.copyWith(isGeneral: isGeneral));
  }

  void addressChanged({required String address}) {
    emit(state.copyWith(address: address));
  }

  void networkChanged({required String network}) {
    emit(state.copyWith(network: network));
  }

  void platformChanged({required String platform}) {
    emit(state.copyWith(platform: platform));
  }

  void walletLabelChanged({required String walletLabel}) {
    emit(state.copyWith(walletLabel: walletLabel));
  }

  void selectedNetworkChanged({required int? selectedNetwork}) {
    emit(state.copyWith(selectedNetwork: selectedNetwork));
  }

  void initBank() {
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

  void bankNameChanged({required String bankName}) {
    emit(state.copyWith(bankName: bankName));
  }

  void accountNumberChanged({required String accountNumber}) {
    emit(state.copyWith(accountNumber: accountNumber));
  }

   void authenticateWalletBiometric() async {
    bool canCheckBiometrics = await LocalAuthApi.hasBiometrics();
      if (canCheckBiometrics) {
        bool didauthenticate = await LocalAuthApi.authenticate(
            localizedReason: 'Scan fingerprint to add wallet');
        if (didauthenticate != true) {
          emit(state.copyWith(failure: "Authenticate to continue"));
          Future.delayed(const Duration(seconds: 1),
              () => emit(state.copyWith(failure: "")));
        } else {
          performWalletAddition();
        }
      }
  }

  void auhenticateWalletPin({required String pin}) async {
    final sp = await SharedPreferences.getInstance();
    final traxPin = sp.getString("trax_key");
    if (pin == traxPin) {
      performWalletAddition();
    } else {
      emit(state.copyWith(failure: "Incorrect Transaction Pin"));
      Future.delayed(
          const Duration(seconds: 1), () => emit(state.copyWith(failure: "")));
    }
  }

  void authenticateBankBiometric() async {
    bool canCheckBiometrics = await LocalAuthApi.hasBiometrics();
    if (canCheckBiometrics) {
        bool didauthenticate = await LocalAuthApi.authenticate(
            localizedReason: 'Scan fingerprint to add account');
        if (didauthenticate != true) {
          emit(state.copyWith(failure: "Authenticate to continue"));
          Future.delayed(const Duration(seconds: 1),
              () => emit(state.copyWith(failure: "")));
        } else {
          addbankClicked();
        }
      }
  }

  void auhenticateBankPin({required String pin}) async {
    final sp = await SharedPreferences.getInstance();
    final traxPin = sp.getString("trax_key");
    if (pin == traxPin) {
      addbankClicked();
    } else {
      emit(state.copyWith(failure: "Incorrect Transaction Pin"));
      Future.delayed(
          const Duration(seconds: 1), () => emit(state.copyWith(failure: "")));
    }
  }

  void addbankClicked() async {
    emit(state.copyWith(isLoading: true, success: "", failure: ""));
    final String bankName = state.bankName;
    final String userName =
        "${authCubit.state.userModel.firstName} ${authCubit.state.userModel.lastName}";
    final String accountNumber = state.accountNumber;
    final String id = const Uuid().v4().substring(0, 7);
    final String trax = nanoid(8);
    BankAddress bankAddress = BankAddress(
        bankName: bankName,
        accountNumber: accountNumber,
        userName: userName,
        type: "BANKADDRESS",
        id: id,
        trax: trax);
    try {
      final res = await firestoreFacade.addBank(bankAddress: bankAddress);
      res.fold((failure) {
        emit(state.copyWith(isLoading: false, failure: failure));
      }, (success) {
        emit(state.copyWith(isLoading: false, success: success));
      });
    } catch (e) {
      print(e);
      emit(state.copyWith(isLoading: false));
    }
  }

 

  void performWalletAddition() async {
    emit(state.copyWith(isloading: true));
    final bool isGeneral = state.isGeneral;
    final String walletLabel = state.walletLabel;
    final String coin = state.coin;
    final String address = state.address;
    final String platform = state.platform;
    final String network = state.network;
    final String id = const Uuid().v4().substring(0, 7);
    final String trax = nanoid(8);
    if (isGeneral) {
      CryptoWallet cryptoWallet = CryptoWallet(
          walletLabel: walletLabel,
          address: address,
          coin: coin,
          network: network,
          platform: platform,
          id: id,
          trax: trax,
          type: "GENERALCRYPTOWALLET");
      try {
        final response = await firestoreFacade.addGeneralCryptoWallet(
            cryptoWallet: cryptoWallet);
        response.fold((failure) {
          emit(state.copyWith(failure: failure, isloading: false));
        }, (success) async {
          emit(state.copyWith(success: success, isloading: false));
        });
      } catch (e) {
        print(e);
      }
    } else {
      CryptoWallet cryptoWallet = CryptoWallet(
          walletLabel: walletLabel,
          address: address,
          coin: coin,
          network: network,
          platform: platform,
          id: id,
          trax: trax,
          type: "CRYPTOWALLET");
      try {
        final response =
            await firestoreFacade.addCryptoWallet(cryptoWallet: cryptoWallet);
        response.fold((failure) {
          emit(state.copyWith(failure: failure, isloading: false));
        }, (success) async {
          emit(state.copyWith(success: success, isloading: false));
        });
      } catch (e) {
        print(e);
      }
    }
  }

  @override
  Future<void> close() async {
    await _logsCryptoAddressSubscription?.cancel();
    await _logsGeneralCryptoAddressSubscription?.cancel();
    await _logsBankAddressSubscription?.cancel();
    return super.close();
  }
}
