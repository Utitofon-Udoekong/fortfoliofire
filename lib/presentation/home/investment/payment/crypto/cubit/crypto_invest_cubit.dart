import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_invest_state.dart';
part 'crypto_invest_cubit.freezed.dart';

class CryptoInvestCubit extends Cubit<CryptoInvestState> {
  CryptoInvestCubit() : super(CryptoInvestState.initial());
}
