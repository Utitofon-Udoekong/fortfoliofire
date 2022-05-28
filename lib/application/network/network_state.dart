part of 'network_cubit.dart';

@freezed
class NetworkState with _$NetworkState {
  const factory NetworkState({
    required bool connected,
    required bool disconnected
  }) = _NetworkState;
  factory NetworkState.empty() => NetworkState(
    connected: false,
    disconnected: false
  );
}
