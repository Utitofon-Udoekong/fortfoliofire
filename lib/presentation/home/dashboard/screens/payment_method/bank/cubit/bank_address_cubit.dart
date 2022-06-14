import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/user/bank_address.dart';
import 'package:fortfolio/infrastructure/auth/dto/bank_address/bank_address_dto.dart';
import 'package:fortfolio/infrastructure/auth/local_auth_api.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nanoid/nanoid.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

part 'bank_address_state.dart';
part 'bank_address_cubit.freezed.dart';
@injectable
class BankAddressCubit extends Cubit<BankAddressState> {
  final IFirestoreFacade firestoreFacade;
  final AuthCubit authCubit;
  StreamSubscription<QuerySnapshot>? _logsBankAddressSubscription;
  BankAddressCubit(this.firestoreFacade, this.authCubit) : super(BankAddressState.initial()){
    initBank();
  }
  void initBank() {
    _logsBankAddressSubscription = firestoreFacade.getBankAddress().listen((data) { 
      final List<QueryDocumentSnapshot<Object?>> docs = data.docs;
      List<BankAddress> bankAddresses = [];
      if(data.size > 0){
        for (var element in docs){
          final doc = BankAddressDTO.fromFirestore(element).toDomain();
          bankAddresses.add(doc);
        }
        emit(state.copyWith(bankAddresses: bankAddresses));
      }
    });
  }
  void bankNameChanged({required String bankName}){
    emit(state.copyWith(bankName: bankName));
  }
  void accountNumberChanged({required String accountNumber}){
    emit(state.copyWith(accountNumber: accountNumber));
  }

  void authenticateBiometric() async {
    bool canCheckBiometrics = await LocalAuthApi.hasBiometrics();
    if (Platform.isAndroid) {
      if (canCheckBiometrics) {
        bool didauthenticate = await LocalAuthApi.authenticate(localizedReason: 'Scan fingerprint to invest');
        if (didauthenticate != true) {
          emit(state.copyWith(failure: "Authenticate to continue"));
          Future.delayed(const Duration(seconds: 1), () =>emit(state.copyWith(failure: "")));
        } else {
          addbankClicked();
        }
      }
    }
  }

  void auhenticatePin({required String pin}) async {
    final sp = await SharedPreferences.getInstance();
    final traxPin = sp.getString("trax_key");
    if(pin == traxPin){
      addbankClicked();
    }else{
      emit(state.copyWith(failure: "Incorrect Transaction Pin"));
      Future.delayed(const Duration(seconds: 1), () =>emit(state.copyWith(failure: "")));
    }
  }
  
  void addbankClicked() async{
    emit(state.copyWith( isLoading: true ,success: "",failure:"" ));
    final String bankName = state.bankName;
    final String userName = "${authCubit.state.userModel.firstName} ${authCubit.state.userModel.lastName}";
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
      print(e);
      emit(state.copyWith(
        isLoading: false
      ));
    }
  }

  @override
  Future<void> close() async {
    await _logsBankAddressSubscription?.cancel();
    return super.close();
  }
}
