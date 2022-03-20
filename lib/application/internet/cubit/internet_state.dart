part of 'internet_cubit.dart';

@freezed
class InternetState with _$InternetState {
  const factory InternetState({
    required bool loading,
    required ConnectionType connectionType,
    required bool disconnected
  }) = _Initial;
  const InternetState.initial() => InternetState(
    loading: false,
    
  );
}
