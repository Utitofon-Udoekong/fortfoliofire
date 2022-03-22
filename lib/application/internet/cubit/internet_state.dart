part of 'internet_cubit.dart';

@freezed
class InternetState with _$InternetState {
  const factory InternetState({
    required bool connected,
    required bool disconnected,
  }) = _Initial;
  factory InternetState.initial() => const InternetState(
    connected: false,
    disconnected: false,
  );
}
