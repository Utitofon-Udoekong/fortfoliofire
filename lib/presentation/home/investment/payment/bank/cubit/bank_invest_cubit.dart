import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_invest_state.dart';
part 'bank_invest_cubit.freezed.dart';

class BankInvestCubit extends Cubit<BankInvestState> {
  BankInvestCubit() : super(BankInvestState.initial());
}
