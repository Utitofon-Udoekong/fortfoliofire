import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/user/withdrawal_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_transactions_state.dart';
part 'wallet_transactions_cubit.freezed.dart';

class WalletTransactionsCubit extends Cubit<WalletTransactionsState> {
  final IFirestoreFacade firestoreFacade;
  WalletTransactionsCubit(this.firestoreFacade) : super(WalletTransactionsState.empty());

  void getWithdrawals() async {
    final withdrawals = await firestoreFacade.getWithdrawals();
    try {
      withdrawals.fold(() => null, (withdrawalList) => {
        emit(state.copyWith(withdrawals: withdrawalList))
      });
    } catch (e) {
      log(e.toString());
    }
  }
}
