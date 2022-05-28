import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_state.dart';
part 'network_cubit.freezed.dart';

class NetworkCubit extends Cubit<NetworkState> {
  NetworkCubit() : super(NetworkState.initial());
}
