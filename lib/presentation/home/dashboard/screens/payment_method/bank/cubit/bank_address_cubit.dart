import 'package:bloc/bloc.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/user/bank_address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'bank_address_state.dart';
part 'bank_address_cubit.freezed.dart';
@injectable
class BankAddressCubit extends Cubit<BankAddressState> {
  final IFirestoreFacade firestoreFacade;
  BankAddressCubit(this.firestoreFacade) : super(BankAddressState.initial());
  void userNameChanged({required String userName}){
    emit(state.copyWith(userName: userName));
  }
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
    final String userName = state.userName;
    final String bankName = state.bankName;
    final String accountNumber = state.accountNumber;
    BankAddress bankAddress = BankAddress(bankName: bankName, accountNumber: accountNumber, userName: userName, type: "BANKADDRESS");
    try {
      final res = await firestoreFacade.addBank(bankAddress: bankAddress);
      res.fold(() => null, (response) {
        emit(state.copyWith(
          isLoading: false,
          response: response
        ));
      });
      
    } catch (e) {
      emit(state.copyWith(
        response: e.toString(),
        isLoading: false
      ));
    }
  }
}
