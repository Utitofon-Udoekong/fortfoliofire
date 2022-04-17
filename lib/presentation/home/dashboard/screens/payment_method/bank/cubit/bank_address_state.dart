part of 'bank_address_cubit.dart';

@freezed
class BankAddressState with _$BankAddressState {
  const factory BankAddressState({
    required String userName,
    required String bankName,
    required String accountNumber,
    required bool isLoading,
    required String failure,
    required String success,
  }) = _BankAddressState;
  const BankAddressState._();
  factory BankAddressState.initial() => const BankAddressState(
    userName: "",
    bankName: "",
    accountNumber: "",
    isLoading: false,
    failure: "",
    success: ""
  );
  bool get isValidState => bankName.isNotEmpty && accountNumber.isNotEmpty && userName.isNotEmpty;
}
