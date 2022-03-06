import 'package:bloc/bloc.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/user/crypto_wallet.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/crypto/networks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

part 'crypto_wallet_event.dart';
part 'crypto_wallet_state.dart';
part 'crypto_wallet_bloc.freezed.dart';

@injectable
class CryptoWalletBloc extends Bloc<CryptoWalletEvent, CryptoWalletState> {
  final IFirestoreFacade firestoreFacade;
  CryptoWalletBloc(this.firestoreFacade) : super(CryptoWalletState.inital()) {
    on<CryptoWalletEvent>(_crytptoWalletEvents);
  }

  _crytptoWalletEvents(
      CryptoWalletEvent event, Emitter<CryptoWalletState> emit) async* {
    yield* event.map(coinChanged: (e) async* {
      yield state.copyWith(coin: e.coin);
    }, isGeneralChanged: (e) async* {
      yield state.copyWith(isGeneral: e.isGeneral);
    }, addressChanged: (e) async* {
      yield state.copyWith(address: e.address);
    }, networkChanged: (e) async* {
      yield state.copyWith(network: e.network);
    }, platformChanged: (e) async* {
      yield state.copyWith(platform: e.platform);
    }, walletLabelChanged: (e) async* {
      yield state.copyWith(walletLabel: e.walletLabel);
    }, addWalletClicked: (_) async* {
      _performWalletAddition();
    });
  }

  _performWalletAddition() async* {
    yield state.copyWith(isloading: true);
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
        response.fold(() => null, (response) async* {
          yield state.copyWith(response: response, isloading: false);
        });
      } catch (e) {
        yield state.copyWith(response: e.toString(), isloading: false);
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
        response.fold(() => null, (response) async* {
          yield state.copyWith(response: response, isloading: false);
        });
      } catch (e) {
        yield state.copyWith(response: e.toString(), isloading: false);
      }
    }
  }
}
