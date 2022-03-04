import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'exchange_type_state.dart';
part 'exchange_type_cubit.freezed.dart';

@injectable
class ExchangeTypeCubit extends Cubit<ExchangeTypeState> {
  ExchangeTypeCubit() : super(ExchangeTypeState.initial());

  void exchangeTypeChanged({required String exchangeType}) {
    emit(state.copyWith(exchangeType: exchangeType));
  }

  void isSelectedChanged({required int newIndex}) {
    int duration = 0;
    List<bool> newList = state.isSelected;
    for (int index = 0; index < state.isSelected.length; index++) {
      if(index == newIndex){
        newList[index] = true;
        duration = state.durations[index];
        emit(state.copyWith(
          duration: duration,
          isSelected: newList
        ));
      }else {
        newList[index] = false;
        emit(state.copyWith(
          isSelected: newList
        ));
      }
    }
  }
}
