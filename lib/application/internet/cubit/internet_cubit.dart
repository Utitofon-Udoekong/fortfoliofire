import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'dart:async';
import 'package:injectable/injectable.dart';

part 'internet_state.dart';
part 'internet_cubit.freezed.dart';

@injectable
class InternetCubit extends Cubit<InternetState> {
  final Connectivity connectivity;
  late StreamSubscription connectivityStreamSubscription;
  InternetCubit(this.connectivity) : super(InternetState.initial());

  StreamSubscription<ConnectivityResult> monitorInternetConnection() {
    return connectivityStreamSubscription =
        connectivity.onConnectivityChanged.listen((connectivityResult) {
      if (connectivityResult == ConnectivityResult.wifi || connectivityResult == ConnectivityResult.mobile) {
        internetConnected();
      } else if (connectivityResult == ConnectivityResult.none) {
        internerDisconnected();
      }
    });
  }
  void internetConnected() => emit(state.copyWith(connected: true, disconnected: false));
  void internerDisconnected() => emit(state.copyWith(disconnected: true, connected: false));
  void checkConnection() => connectivity.checkConnectivity();
  @override
  Future<void> close() {
    connectivityStreamSubscription.cancel();
    return super.close();
  }
}
