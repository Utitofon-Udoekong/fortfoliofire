part of 'bank_address_cubit.dart';

@freezed
class BankAddressState with _$BankAddressState {
  const factory BankAddressState({
    required String bankName,
    required String accountNumber,
    required bool isLoading,
    required String failure,
    required String success,
    required List<BankAddress> bankAddresses,
  }) = _BankAddressState;
  const BankAddressState._();
  factory BankAddressState.initial() => const BankAddressState(
    bankName: "",
    accountNumber: "",
    isLoading: false,
    failure: "",
    success: "",
    bankAddresses: [
    ],
  );
  bool get isValidState => bankName.isNotEmpty && accountNumber.isNotEmpty;
  bool get noAccount => bankAddresses.isEmpty;
}
