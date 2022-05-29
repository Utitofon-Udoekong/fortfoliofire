import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'network_state.dart';
part 'network_cubit.freezed.dart';
@injectable

class NetworkCubit extends Cubit<NetworkState> {
  late StreamSubscription<ConnectivityResult>? _logConnection;
  NetworkCubit() : super(NetworkState.empty()){
    _logConnection = Connectivity().onConnectivityChanged.listen((event) {
      if(event == ConnectivityResult.mobile || event == ConnectivityResult.wifi){
        emit(state.copyWith(connected: true, disconnected: false));
      }else{
        emit(state.copyWith(connected: false, disconnected: true));
      }
    });
  }
  void checkConnection () => Connectivity().checkConnectivity();

  @override
  Future<void> close() async {
    await _logConnection?.cancel();
    return super.close();
  }
}
