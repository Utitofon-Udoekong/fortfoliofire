part of 'dashboard_cubit.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    required List<String> newsList,
    required bool loading,
    required String failure
  }) = _DashboardState;
  factory DashboardState.initial() => const DashboardState(
    newsList: [],
    loading: false,
    failure: ""
  );
}
