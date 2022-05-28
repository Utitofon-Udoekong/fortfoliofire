part of 'network_cubit.dart';

@freezed
class NetworkState with _$NetworkState {
  const factory NetworkState({
    required bool connected,
    required bool disconnected,
    required bool loading
  }) = _NetworkState;
  factory NetworkState.empty() => const NetworkState(
    connected: false,
    disconnected: false,
    loading: false
  );
}
