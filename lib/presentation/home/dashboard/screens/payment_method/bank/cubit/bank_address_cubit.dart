import 'package:bloc/bloc.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/user/bank_address.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nanoid/nanoid.dart';
import 'package:uuid/uuid.dart';

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
    emit(state.copyWith( isLoading: true ,success: "",failure:"" ));
    final String userName = state.userName;
    final String bankName = state.bankName;
    final String accountNumber = state.accountNumber;
    final String id = const Uuid().v4().substring(0,7);
    final String trax = nanoid(8);
    BankAddress bankAddress = BankAddress(bankName: bankName, accountNumber: accountNumber, userName: userName, type: "BANKADDRESS", id: id, trax: trax);
    try {
      final res = await firestoreFacade.addBank(bankAddress: bankAddress);
      res.fold((failure) {
        emit(state.copyWith(
          isLoading: false,
          failure: failure
        ));
      }, (success) {
        emit(state.copyWith(
          isLoading: false,
          success: success
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
