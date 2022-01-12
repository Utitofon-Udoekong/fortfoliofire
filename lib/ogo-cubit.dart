
import 'package:flutter_bloc/flutter_bloc.dart';

class OgoCubit extends Cubit<int> {
  OgoCubit():super(0);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}

Future<void> main(List<String> args) async {
  final cubit = OgoCubit(); 

  cubit.increment();
  cubit.increment();
  cubit.increment();
  cubit.decrement();
  cubit.decrement();
  cubit.decrement();
  cubit.close();
}
