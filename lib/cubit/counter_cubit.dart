import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counterVal: 0));

  void inc() => emit(CounterState(counterVal: state.counterVal + 1));
  void dec() => emit(CounterState(counterVal: state.counterVal - 1));
}
