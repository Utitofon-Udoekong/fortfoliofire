import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_state.dart';
part 'network_cubit.freezed.dart';

class NetworkCubit extends Cubit<NetworkState> {
  late StreamSubscription<ConnectivityResult> _logConnection;
  NetworkCubit() : super(NetworkState.empty()){
    initConnectionCheck();
  }
  void checkConnection () => Connectivity().checkConnectivity();
  void initConnectionCheck() => {
    _logConnection = Connectivity().onConnectivityChanged.listen((event) {
      switch (event) {
        case ConnectivityResult.mobile:
          emit(state.copyWith(connected: true, disconnected: false));
          break;
        case ConnectivityResult.wifi:
          emit(state.copyWith(connected: true, disconnected: false));
          break;
        case ConnectivityResult.none:
          emit(state.copyWith(connected: false, disconnected: true));
          break;
        default:
          emit(state.copyWith(connected: true, disconnected: false));
          break;
      }
    })
  };

  @override
  Future<void> close() async {
    await _logConnection.cancel();
    return super.close();
  }
}
