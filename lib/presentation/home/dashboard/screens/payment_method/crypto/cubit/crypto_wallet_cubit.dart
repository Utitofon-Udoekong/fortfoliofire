import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/user/crypto_wallet.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/crypto/networks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';


part 'crypto_wallet_state.dart';
part 'crypto_wallet_cubit.freezed.dart';

@injectable
class CryptoWalletCubit extends Cubit<CryptoWalletState> {
  final IFirestoreFacade firestoreFacade;
  CryptoWalletCubit(this.firestoreFacade) : super(CryptoWalletState.empty());

  void coinChanged({required String coin}){
    emit(state.copyWith(coin: coin));
  }
  void isGeneralChanged({required bool isGeneral}){
    emit(state.copyWith(isGeneral: isGeneral));
  }
  void addressChanged({required String address}){
    emit(state.copyWith(address: address));
  }
  void networkChanged({required String network}){
    emit(state.copyWith(network: network));
  }
  void platformChanged({required String platform}){
    emit(state.copyWith(platform: platform));
  }
  void walletLabelChanged({required String walletLabel}){
    emit(state.copyWith(walletLabel: walletLabel));
  }
  void selectedNetworkChanged({required int? selectedNetwork}){
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
    final String id = const Uuid().v4();
    if (isGeneral) {
      CryptoWallet cryptoWallet = CryptoWallet(
          walletLabel: walletLabel,
          address: address,
          coin: coin,
          network: network,
          platform: platform,
          id: id,
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
}
