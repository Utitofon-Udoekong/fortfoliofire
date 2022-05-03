import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/infrastructure/auth/dto/crypto_address/crypto_address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/user/crypto_wallet.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/crypto/networks.dart';
import 'package:injectable/injectable.dart';
import 'package:nanoid/nanoid.dart';
import 'package:uuid/uuid.dart';
import 'dart:async';

part 'crypto_wallet_state.dart';
part 'crypto_wallet_cubit.freezed.dart';

@injectable
class CryptoWalletCubit extends Cubit<CryptoWalletState> {
  final IFirestoreFacade firestoreFacade;
  StreamSubscription<QuerySnapshot>? _logsCryptoAddressSubscription;
  StreamSubscription<QuerySnapshot>? _logsGeneralCryptoAddressSubscription;
  CryptoWalletCubit(this.firestoreFacade) : super(CryptoWalletState.initial()) {
    initCryptoWallet();
    initGeneralCryptoWallet();
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
    return super.close();
  }
}
