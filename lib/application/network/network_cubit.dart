import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'network_state.dart';
part 'network_cubit.freezed.dart';
@injectable

class NetworkCubit extends Cubit<NetworkState> {
  late StreamSubscription<ConnectivityResult>? _logConnection;
  NetworkCubit() : super(NetworkState.empty()){
    checkConnectionStream();
  }

  void checkConnection () => Connectivity().checkConnectivity();

  void checkConnectionStream() {
    _logConnection = Connectivity().onConnectivityChanged.listen((event){
      if(event == ConnectivityResult.none){
        emit(state.copyWith(connected: false, disconnected: true));
      }else{
        emit(state.copyWith(connected: true, disconnected: false));
      }
    });
    
  }

  @override
  Future<void> close() async {
    await _logConnection?.cancel();
    return super.close();
  }
}
