import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'investment_event.dart';
part 'investment_state.dart';
part 'investment_bloc.freezed.dart';

class InvestmentBloc extends Bloc<InvestmentEvent, InvestmentState> {
  InvestmentBloc() : super(_Initial()) {
    on<InvestmentEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
