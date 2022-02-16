part of 'investment_bloc.dart';

@freezed
class InvestmentEvent with _$InvestmentEvent {
  const factory InvestmentEvent.started() = _Started;
}