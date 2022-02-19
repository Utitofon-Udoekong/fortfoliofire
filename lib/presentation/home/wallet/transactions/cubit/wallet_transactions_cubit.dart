import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_transactions_state.dart';
part 'wallet_transactions_cubit.freezed.dart';

class WalletTransactionsCubit extends Cubit<WalletTransactionsState> {
  WalletTransactionsCubit() : super(WalletTransactionsState.initial());
}
