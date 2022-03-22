import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_overview_state.dart';
part 'wallet_overview_cubit.freezed.dart';

class WalletOverviewCubit extends Cubit<WalletOverviewState> {
  WalletOverviewCubit() : super(WalletOverviewState.initial());

  void exchangeChanged({required String exchange}){
    emit(state.copyWith(exchange: exchange));
  }
}
