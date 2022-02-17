import 'package:bloc/bloc.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/crypto/networks.dart';
import 'package:fortfolio/resources/firestore_methods.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'crypto_wallet_event.dart';
part 'crypto_wallet_state.dart';
part 'crypto_wallet_bloc.freezed.dart';

@injectable
class CryptoWalletBloc extends Bloc<CryptoWalletEvent, CryptoWalletState> {
  final FireStoreMethods fireStoreMethods;
  CryptoWalletBloc(this.fireStoreMethods) : super(CryptoWalletState.inital()) {
    on<CryptoWalletEvent>(_crytptoWalletEvents);
  }

  _crytptoWalletEvents(
      CryptoWalletEvent event, Emitter<CryptoWalletState> emit) async* {
    yield* event.map(
        coinChanged: (e) async* {
          yield state.copyWith(coin: e.coin);
        },
        isGeneralChanged: (e) async* {
          yield state.copyWith(isGeneral: e.isGeneral);
        },
        addressChanged: (e) async* {
          yield state.copyWith(address: e.address);
        },
        networkChanged: (e) async* {
          yield state.copyWith(network: e.network);
        },
        platformChanged: (e) async* {
          yield state.copyWith(platform: e.platform);
        },
        walletLabelChanged: (e) async* {
          yield state.copyWith(walletLabel: e.walletLabel);
        },
        addWalletClicked: (_) async* {
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
    String response = "";
    try {
      if (isGeneral) {
        response = await fireStoreMethods.addGeneralCryptoWallet( walletLabel, address, coin, platform, network);
        yield state.copyWith(response: response, isloading: false);
      } else {
        response = await fireStoreMethods.addCryptoWallet( walletLabel, address, coin, platform);
        yield state.copyWith(response: response, isloading: false);
      }
      
    } catch (e) {
      response = e.toString();
      yield state.copyWith(response: response, isloading: false);
    }
  }
}
