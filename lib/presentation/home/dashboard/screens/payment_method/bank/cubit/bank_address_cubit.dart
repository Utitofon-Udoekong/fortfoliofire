import 'package:bloc/bloc.dart';
import 'package:fortfolio/resources/auth_methods.dart';
import 'package:fortfolio/resources/firestore_methods.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'bank_address_state.dart';
part 'bank_address_cubit.freezed.dart';
@injectable
class BankAddressCubit extends Cubit<BankAddressState> {
  final FireStoreMethods fireStoreMethods;
  BankAddressCubit(this.fireStoreMethods) : super(BankAddressState.initial());
  void bankNameChanged({required String bankName}){
    emit(state.copyWith(bankName: bankName));
  }
  void accountNumberChanged({required String accountNumber}){
    emit(state.copyWith(accountNumber: accountNumber));
  }
  void addbankClicked() async{
    emit(state.copyWith(
      isLoading: true
    ));
    String res = "";
    const String userName = "oja ilarong";
    final String bankName = state.bankName;
    final String accountNumber = state.accountNumber;
    try {
      res = await fireStoreMethods.addBank(bankName, accountNumber, userName);
      emit(state.copyWith(
        response: res,
        isLoading: false
      ));
    } catch (e) {
      emit(state.copyWith(
        response: e.toString(),
        isLoading: false
      ));
    }
  }
}
