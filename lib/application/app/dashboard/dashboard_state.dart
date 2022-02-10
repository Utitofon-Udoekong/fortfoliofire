part of 'dashboard_cubit.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    required List news,
    required bool loading
  }) = _DashboardState;
  const DashboardState._();
  factory DashboardState.initial() => DashboardState(
    news: List.empty(),
    loading: false
  );
}
