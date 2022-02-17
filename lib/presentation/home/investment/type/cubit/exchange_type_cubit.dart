import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_type_state.dart';
part 'exchange_type_cubit.freezed.dart';

class ExchangeTypeCubit extends Cubit<ExchangeTypeState> {
  ExchangeTypeCubit() : super(ExchangeTypeState.initial());

  void exchangeTypeChanged({required String exchangeType}){
    emit(state.copyWith(exchangeType: exchangeType));
  }
}
