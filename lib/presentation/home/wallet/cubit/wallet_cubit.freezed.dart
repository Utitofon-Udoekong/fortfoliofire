// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'wallet_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WalletState {
  double get walletBalance => throw _privateConstructorUsedError;
  String get exchange => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  double get fortDollarInvestmentBalance => throw _privateConstructorUsedError;
  double get fortCryptoInvestmentBalance => throw _privateConstructorUsedError;
  double get fortShieldInvestmentBalance => throw _privateConstructorUsedError;
  double get fortDollarYieldBalance => throw _privateConstructorUsedError;
  double get fortCryptoYieldBalance => throw _privateConstructorUsedError;
  double get fortShieldYieldBalance => throw _privateConstructorUsedError;
  String get withdrawalMethod => throw _privateConstructorUsedError;
  String get failure => throw _privateConstructorUsedError;
  String get success => throw _privateConstructorUsedError;
  Map<String, dynamic> get withdrawalDetails =>
      throw _privateConstructorUsedError;
  InvestmentItem get investmentToBeWithdrawn =>
      throw _privateConstructorUsedError;
  List<BankAddress> get bankAddresses => throw _privateConstructorUsedError;
  List<CryptoWallet> get cryptoAddresses => throw _privateConstructorUsedError;
  List<CryptoWallet> get generalCryptoAddresses =>
      throw _privateConstructorUsedError;
  List<InvestmentItem> get fortDollarInvestments =>
      throw _privateConstructorUsedError;
  List<InvestmentItem> get fortCryptoInvestments =>
      throw _privateConstructorUsedError;
  List<InvestmentItem> get fortShieldInvestments =>
      throw _privateConstructorUsedError;
  List<WithdrawalItem> get withdrawals => throw _privateConstructorUsedError;
  List<TransactionItem> get transactions => throw _privateConstructorUsedError;
  bool get showDigits => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletStateCopyWith<WalletState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletStateCopyWith<$Res> {
  factory $WalletStateCopyWith(
          WalletState value, $Res Function(WalletState) then) =
      _$WalletStateCopyWithImpl<$Res>;
  $Res call(
      {double walletBalance,
      String exchange,
      bool loading,
      double fortDollarInvestmentBalance,
      double fortCryptoInvestmentBalance,
      double fortShieldInvestmentBalance,
      double fortDollarYieldBalance,
      double fortCryptoYieldBalance,
      double fortShieldYieldBalance,
      String withdrawalMethod,
      String failure,
      String success,
      Map<String, dynamic> withdrawalDetails,
      InvestmentItem investmentToBeWithdrawn,
      List<BankAddress> bankAddresses,
      List<CryptoWallet> cryptoAddresses,
      List<CryptoWallet> generalCryptoAddresses,
      List<InvestmentItem> fortDollarInvestments,
      List<InvestmentItem> fortCryptoInvestments,
      List<InvestmentItem> fortShieldInvestments,
      List<WithdrawalItem> withdrawals,
      List<TransactionItem> transactions,
      bool showDigits});

  $InvestmentItemCopyWith<$Res> get investmentToBeWithdrawn;
}

/// @nodoc
class _$WalletStateCopyWithImpl<$Res> implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._value, this._then);

  final WalletState _value;
  // ignore: unused_field
  final $Res Function(WalletState) _then;

  @override
  $Res call({
    Object? walletBalance = freezed,
    Object? exchange = freezed,
    Object? loading = freezed,
    Object? fortDollarInvestmentBalance = freezed,
    Object? fortCryptoInvestmentBalance = freezed,
    Object? fortShieldInvestmentBalance = freezed,
    Object? fortDollarYieldBalance = freezed,
    Object? fortCryptoYieldBalance = freezed,
    Object? fortShieldYieldBalance = freezed,
    Object? withdrawalMethod = freezed,
    Object? failure = freezed,
    Object? success = freezed,
    Object? withdrawalDetails = freezed,
    Object? investmentToBeWithdrawn = freezed,
    Object? bankAddresses = freezed,
    Object? cryptoAddresses = freezed,
    Object? generalCryptoAddresses = freezed,
    Object? fortDollarInvestments = freezed,
    Object? fortCryptoInvestments = freezed,
    Object? fortShieldInvestments = freezed,
    Object? withdrawals = freezed,
    Object? transactions = freezed,
    Object? showDigits = freezed,
  }) {
    return _then(_value.copyWith(
      walletBalance: walletBalance == freezed
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as double,
      exchange: exchange == freezed
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      fortDollarInvestmentBalance: fortDollarInvestmentBalance == freezed
          ? _value.fortDollarInvestmentBalance
          : fortDollarInvestmentBalance // ignore: cast_nullable_to_non_nullable
              as double,
      fortCryptoInvestmentBalance: fortCryptoInvestmentBalance == freezed
          ? _value.fortCryptoInvestmentBalance
          : fortCryptoInvestmentBalance // ignore: cast_nullable_to_non_nullable
              as double,
      fortShieldInvestmentBalance: fortShieldInvestmentBalance == freezed
          ? _value.fortShieldInvestmentBalance
          : fortShieldInvestmentBalance // ignore: cast_nullable_to_non_nullable
              as double,
      fortDollarYieldBalance: fortDollarYieldBalance == freezed
          ? _value.fortDollarYieldBalance
          : fortDollarYieldBalance // ignore: cast_nullable_to_non_nullable
              as double,
      fortCryptoYieldBalance: fortCryptoYieldBalance == freezed
          ? _value.fortCryptoYieldBalance
          : fortCryptoYieldBalance // ignore: cast_nullable_to_non_nullable
              as double,
      fortShieldYieldBalance: fortShieldYieldBalance == freezed
          ? _value.fortShieldYieldBalance
          : fortShieldYieldBalance // ignore: cast_nullable_to_non_nullable
              as double,
      withdrawalMethod: withdrawalMethod == freezed
          ? _value.withdrawalMethod
          : withdrawalMethod // ignore: cast_nullable_to_non_nullable
              as String,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      withdrawalDetails: withdrawalDetails == freezed
          ? _value.withdrawalDetails
          : withdrawalDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      investmentToBeWithdrawn: investmentToBeWithdrawn == freezed
          ? _value.investmentToBeWithdrawn
          : investmentToBeWithdrawn // ignore: cast_nullable_to_non_nullable
              as InvestmentItem,
      bankAddresses: bankAddresses == freezed
          ? _value.bankAddresses
          : bankAddresses // ignore: cast_nullable_to_non_nullable
              as List<BankAddress>,
      cryptoAddresses: cryptoAddresses == freezed
          ? _value.cryptoAddresses
          : cryptoAddresses // ignore: cast_nullable_to_non_nullable
              as List<CryptoWallet>,
      generalCryptoAddresses: generalCryptoAddresses == freezed
          ? _value.generalCryptoAddresses
          : generalCryptoAddresses // ignore: cast_nullable_to_non_nullable
              as List<CryptoWallet>,
      fortDollarInvestments: fortDollarInvestments == freezed
          ? _value.fortDollarInvestments
          : fortDollarInvestments // ignore: cast_nullable_to_non_nullable
              as List<InvestmentItem>,
      fortCryptoInvestments: fortCryptoInvestments == freezed
          ? _value.fortCryptoInvestments
          : fortCryptoInvestments // ignore: cast_nullable_to_non_nullable
              as List<InvestmentItem>,
      fortShieldInvestments: fortShieldInvestments == freezed
          ? _value.fortShieldInvestments
          : fortShieldInvestments // ignore: cast_nullable_to_non_nullable
              as List<InvestmentItem>,
      withdrawals: withdrawals == freezed
          ? _value.withdrawals
          : withdrawals // ignore: cast_nullable_to_non_nullable
              as List<WithdrawalItem>,
      transactions: transactions == freezed
          ? _value.transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionItem>,
      showDigits: showDigits == freezed
          ? _value.showDigits
          : showDigits // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $InvestmentItemCopyWith<$Res> get investmentToBeWithdrawn {
    return $InvestmentItemCopyWith<$Res>(_value.investmentToBeWithdrawn,
        (value) {
      return _then(_value.copyWith(investmentToBeWithdrawn: value));
    });
  }
}

/// @nodoc
abstract class _$$_WalletStateCopyWith<$Res>
    implements $WalletStateCopyWith<$Res> {
  factory _$$_WalletStateCopyWith(
          _$_WalletState value, $Res Function(_$_WalletState) then) =
      __$$_WalletStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {double walletBalance,
      String exchange,
      bool loading,
      double fortDollarInvestmentBalance,
      double fortCryptoInvestmentBalance,
      double fortShieldInvestmentBalance,
      double fortDollarYieldBalance,
      double fortCryptoYieldBalance,
      double fortShieldYieldBalance,
      String withdrawalMethod,
      String failure,
      String success,
      Map<String, dynamic> withdrawalDetails,
      InvestmentItem investmentToBeWithdrawn,
      List<BankAddress> bankAddresses,
      List<CryptoWallet> cryptoAddresses,
      List<CryptoWallet> generalCryptoAddresses,
      List<InvestmentItem> fortDollarInvestments,
      List<InvestmentItem> fortCryptoInvestments,
      List<InvestmentItem> fortShieldInvestments,
      List<WithdrawalItem> withdrawals,
      List<TransactionItem> transactions,
      bool showDigits});

  @override
  $InvestmentItemCopyWith<$Res> get investmentToBeWithdrawn;
}

/// @nodoc
class __$$_WalletStateCopyWithImpl<$Res> extends _$WalletStateCopyWithImpl<$Res>
    implements _$$_WalletStateCopyWith<$Res> {
  __$$_WalletStateCopyWithImpl(
      _$_WalletState _value, $Res Function(_$_WalletState) _then)
      : super(_value, (v) => _then(v as _$_WalletState));

  @override
  _$_WalletState get _value => super._value as _$_WalletState;

  @override
  $Res call({
    Object? walletBalance = freezed,
    Object? exchange = freezed,
    Object? loading = freezed,
    Object? fortDollarInvestmentBalance = freezed,
    Object? fortCryptoInvestmentBalance = freezed,
    Object? fortShieldInvestmentBalance = freezed,
    Object? fortDollarYieldBalance = freezed,
    Object? fortCryptoYieldBalance = freezed,
    Object? fortShieldYieldBalance = freezed,
    Object? withdrawalMethod = freezed,
    Object? failure = freezed,
    Object? success = freezed,
    Object? withdrawalDetails = freezed,
    Object? investmentToBeWithdrawn = freezed,
    Object? bankAddresses = freezed,
    Object? cryptoAddresses = freezed,
    Object? generalCryptoAddresses = freezed,
    Object? fortDollarInvestments = freezed,
    Object? fortCryptoInvestments = freezed,
    Object? fortShieldInvestments = freezed,
    Object? withdrawals = freezed,
    Object? transactions = freezed,
    Object? showDigits = freezed,
  }) {
    return _then(_$_WalletState(
      walletBalance: walletBalance == freezed
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as double,
      exchange: exchange == freezed
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      fortDollarInvestmentBalance: fortDollarInvestmentBalance == freezed
          ? _value.fortDollarInvestmentBalance
          : fortDollarInvestmentBalance // ignore: cast_nullable_to_non_nullable
              as double,
      fortCryptoInvestmentBalance: fortCryptoInvestmentBalance == freezed
          ? _value.fortCryptoInvestmentBalance
          : fortCryptoInvestmentBalance // ignore: cast_nullable_to_non_nullable
              as double,
      fortShieldInvestmentBalance: fortShieldInvestmentBalance == freezed
          ? _value.fortShieldInvestmentBalance
          : fortShieldInvestmentBalance // ignore: cast_nullable_to_non_nullable
              as double,
      fortDollarYieldBalance: fortDollarYieldBalance == freezed
          ? _value.fortDollarYieldBalance
          : fortDollarYieldBalance // ignore: cast_nullable_to_non_nullable
              as double,
      fortCryptoYieldBalance: fortCryptoYieldBalance == freezed
          ? _value.fortCryptoYieldBalance
          : fortCryptoYieldBalance // ignore: cast_nullable_to_non_nullable
              as double,
      fortShieldYieldBalance: fortShieldYieldBalance == freezed
          ? _value.fortShieldYieldBalance
          : fortShieldYieldBalance // ignore: cast_nullable_to_non_nullable
              as double,
      withdrawalMethod: withdrawalMethod == freezed
          ? _value.withdrawalMethod
          : withdrawalMethod // ignore: cast_nullable_to_non_nullable
              as String,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      withdrawalDetails: withdrawalDetails == freezed
          ? _value._withdrawalDetails
          : withdrawalDetails // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      investmentToBeWithdrawn: investmentToBeWithdrawn == freezed
          ? _value.investmentToBeWithdrawn
          : investmentToBeWithdrawn // ignore: cast_nullable_to_non_nullable
              as InvestmentItem,
      bankAddresses: bankAddresses == freezed
          ? _value._bankAddresses
          : bankAddresses // ignore: cast_nullable_to_non_nullable
              as List<BankAddress>,
      cryptoAddresses: cryptoAddresses == freezed
          ? _value._cryptoAddresses
          : cryptoAddresses // ignore: cast_nullable_to_non_nullable
              as List<CryptoWallet>,
      generalCryptoAddresses: generalCryptoAddresses == freezed
          ? _value._generalCryptoAddresses
          : generalCryptoAddresses // ignore: cast_nullable_to_non_nullable
              as List<CryptoWallet>,
      fortDollarInvestments: fortDollarInvestments == freezed
          ? _value._fortDollarInvestments
          : fortDollarInvestments // ignore: cast_nullable_to_non_nullable
              as List<InvestmentItem>,
      fortCryptoInvestments: fortCryptoInvestments == freezed
          ? _value._fortCryptoInvestments
          : fortCryptoInvestments // ignore: cast_nullable_to_non_nullable
              as List<InvestmentItem>,
      fortShieldInvestments: fortShieldInvestments == freezed
          ? _value._fortShieldInvestments
          : fortShieldInvestments // ignore: cast_nullable_to_non_nullable
              as List<InvestmentItem>,
      withdrawals: withdrawals == freezed
          ? _value._withdrawals
          : withdrawals // ignore: cast_nullable_to_non_nullable
              as List<WithdrawalItem>,
      transactions: transactions == freezed
          ? _value._transactions
          : transactions // ignore: cast_nullable_to_non_nullable
              as List<TransactionItem>,
      showDigits: showDigits == freezed
          ? _value.showDigits
          : showDigits // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WalletState extends _WalletState {
  const _$_WalletState(
      {required this.walletBalance,
      required this.exchange,
      required this.loading,
      required this.fortDollarInvestmentBalance,
      required this.fortCryptoInvestmentBalance,
      required this.fortShieldInvestmentBalance,
      required this.fortDollarYieldBalance,
      required this.fortCryptoYieldBalance,
      required this.fortShieldYieldBalance,
      required this.withdrawalMethod,
      required this.failure,
      required this.success,
      required final Map<String, dynamic> withdrawalDetails,
      required this.investmentToBeWithdrawn,
      required final List<BankAddress> bankAddresses,
      required final List<CryptoWallet> cryptoAddresses,
      required final List<CryptoWallet> generalCryptoAddresses,
      required final List<InvestmentItem> fortDollarInvestments,
      required final List<InvestmentItem> fortCryptoInvestments,
      required final List<InvestmentItem> fortShieldInvestments,
      required final List<WithdrawalItem> withdrawals,
      required final List<TransactionItem> transactions,
      required this.showDigits})
      : _withdrawalDetails = withdrawalDetails,
        _bankAddresses = bankAddresses,
        _cryptoAddresses = cryptoAddresses,
        _generalCryptoAddresses = generalCryptoAddresses,
        _fortDollarInvestments = fortDollarInvestments,
        _fortCryptoInvestments = fortCryptoInvestments,
        _fortShieldInvestments = fortShieldInvestments,
        _withdrawals = withdrawals,
        _transactions = transactions,
        super._();

  @override
  final double walletBalance;
  @override
  final String exchange;
  @override
  final bool loading;
  @override
  final double fortDollarInvestmentBalance;
  @override
  final double fortCryptoInvestmentBalance;
  @override
  final double fortShieldInvestmentBalance;
  @override
  final double fortDollarYieldBalance;
  @override
  final double fortCryptoYieldBalance;
  @override
  final double fortShieldYieldBalance;
  @override
  final String withdrawalMethod;
  @override
  final String failure;
  @override
  final String success;
  final Map<String, dynamic> _withdrawalDetails;
  @override
  Map<String, dynamic> get withdrawalDetails {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_withdrawalDetails);
  }

  @override
  final InvestmentItem investmentToBeWithdrawn;
  final List<BankAddress> _bankAddresses;
  @override
  List<BankAddress> get bankAddresses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bankAddresses);
  }

  final List<CryptoWallet> _cryptoAddresses;
  @override
  List<CryptoWallet> get cryptoAddresses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cryptoAddresses);
  }

  final List<CryptoWallet> _generalCryptoAddresses;
  @override
  List<CryptoWallet> get generalCryptoAddresses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_generalCryptoAddresses);
  }

  final List<InvestmentItem> _fortDollarInvestments;
  @override
  List<InvestmentItem> get fortDollarInvestments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fortDollarInvestments);
  }

  final List<InvestmentItem> _fortCryptoInvestments;
  @override
  List<InvestmentItem> get fortCryptoInvestments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fortCryptoInvestments);
  }

  final List<InvestmentItem> _fortShieldInvestments;
  @override
  List<InvestmentItem> get fortShieldInvestments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fortShieldInvestments);
  }

  final List<WithdrawalItem> _withdrawals;
  @override
  List<WithdrawalItem> get withdrawals {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_withdrawals);
  }

  final List<TransactionItem> _transactions;
  @override
  List<TransactionItem> get transactions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transactions);
  }

  @override
  final bool showDigits;

  @override
  String toString() {
    return 'WalletState(walletBalance: $walletBalance, exchange: $exchange, loading: $loading, fortDollarInvestmentBalance: $fortDollarInvestmentBalance, fortCryptoInvestmentBalance: $fortCryptoInvestmentBalance, fortShieldInvestmentBalance: $fortShieldInvestmentBalance, fortDollarYieldBalance: $fortDollarYieldBalance, fortCryptoYieldBalance: $fortCryptoYieldBalance, fortShieldYieldBalance: $fortShieldYieldBalance, withdrawalMethod: $withdrawalMethod, failure: $failure, success: $success, withdrawalDetails: $withdrawalDetails, investmentToBeWithdrawn: $investmentToBeWithdrawn, bankAddresses: $bankAddresses, cryptoAddresses: $cryptoAddresses, generalCryptoAddresses: $generalCryptoAddresses, fortDollarInvestments: $fortDollarInvestments, fortCryptoInvestments: $fortCryptoInvestments, fortShieldInvestments: $fortShieldInvestments, withdrawals: $withdrawals, transactions: $transactions, showDigits: $showDigits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletState &&
            const DeepCollectionEquality()
                .equals(other.walletBalance, walletBalance) &&
            const DeepCollectionEquality().equals(other.exchange, exchange) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(
                other.fortDollarInvestmentBalance,
                fortDollarInvestmentBalance) &&
            const DeepCollectionEquality().equals(
                other.fortCryptoInvestmentBalance,
                fortCryptoInvestmentBalance) &&
            const DeepCollectionEquality().equals(
                other.fortShieldInvestmentBalance,
                fortShieldInvestmentBalance) &&
            const DeepCollectionEquality()
                .equals(other.fortDollarYieldBalance, fortDollarYieldBalance) &&
            const DeepCollectionEquality()
                .equals(other.fortCryptoYieldBalance, fortCryptoYieldBalance) &&
            const DeepCollectionEquality()
                .equals(other.fortShieldYieldBalance, fortShieldYieldBalance) &&
            const DeepCollectionEquality()
                .equals(other.withdrawalMethod, withdrawalMethod) &&
            const DeepCollectionEquality().equals(other.failure, failure) &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality()
                .equals(other._withdrawalDetails, _withdrawalDetails) &&
            const DeepCollectionEquality().equals(
                other.investmentToBeWithdrawn, investmentToBeWithdrawn) &&
            const DeepCollectionEquality()
                .equals(other._bankAddresses, _bankAddresses) &&
            const DeepCollectionEquality()
                .equals(other._cryptoAddresses, _cryptoAddresses) &&
            const DeepCollectionEquality().equals(
                other._generalCryptoAddresses, _generalCryptoAddresses) &&
            const DeepCollectionEquality()
                .equals(other._fortDollarInvestments, _fortDollarInvestments) &&
            const DeepCollectionEquality()
                .equals(other._fortCryptoInvestments, _fortCryptoInvestments) &&
            const DeepCollectionEquality()
                .equals(other._fortShieldInvestments, _fortShieldInvestments) &&
            const DeepCollectionEquality()
                .equals(other._withdrawals, _withdrawals) &&
            const DeepCollectionEquality()
                .equals(other._transactions, _transactions) &&
            const DeepCollectionEquality()
                .equals(other.showDigits, showDigits));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(walletBalance),
        const DeepCollectionEquality().hash(exchange),
        const DeepCollectionEquality().hash(loading),
        const DeepCollectionEquality().hash(fortDollarInvestmentBalance),
        const DeepCollectionEquality().hash(fortCryptoInvestmentBalance),
        const DeepCollectionEquality().hash(fortShieldInvestmentBalance),
        const DeepCollectionEquality().hash(fortDollarYieldBalance),
        const DeepCollectionEquality().hash(fortCryptoYieldBalance),
        const DeepCollectionEquality().hash(fortShieldYieldBalance),
        const DeepCollectionEquality().hash(withdrawalMethod),
        const DeepCollectionEquality().hash(failure),
        const DeepCollectionEquality().hash(success),
        const DeepCollectionEquality().hash(_withdrawalDetails),
        const DeepCollectionEquality().hash(investmentToBeWithdrawn),
        const DeepCollectionEquality().hash(_bankAddresses),
        const DeepCollectionEquality().hash(_cryptoAddresses),
        const DeepCollectionEquality().hash(_generalCryptoAddresses),
        const DeepCollectionEquality().hash(_fortDollarInvestments),
        const DeepCollectionEquality().hash(_fortCryptoInvestments),
        const DeepCollectionEquality().hash(_fortShieldInvestments),
        const DeepCollectionEquality().hash(_withdrawals),
        const DeepCollectionEquality().hash(_transactions),
        const DeepCollectionEquality().hash(showDigits)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_WalletStateCopyWith<_$_WalletState> get copyWith =>
      __$$_WalletStateCopyWithImpl<_$_WalletState>(this, _$identity);
}

abstract class _WalletState extends WalletState {
  const factory _WalletState(
      {required final double walletBalance,
      required final String exchange,
      required final bool loading,
      required final double fortDollarInvestmentBalance,
      required final double fortCryptoInvestmentBalance,
      required final double fortShieldInvestmentBalance,
      required final double fortDollarYieldBalance,
      required final double fortCryptoYieldBalance,
      required final double fortShieldYieldBalance,
      required final String withdrawalMethod,
      required final String failure,
      required final String success,
      required final Map<String, dynamic> withdrawalDetails,
      required final InvestmentItem investmentToBeWithdrawn,
      required final List<BankAddress> bankAddresses,
      required final List<CryptoWallet> cryptoAddresses,
      required final List<CryptoWallet> generalCryptoAddresses,
      required final List<InvestmentItem> fortDollarInvestments,
      required final List<InvestmentItem> fortCryptoInvestments,
      required final List<InvestmentItem> fortShieldInvestments,
      required final List<WithdrawalItem> withdrawals,
      required final List<TransactionItem> transactions,
      required final bool showDigits}) = _$_WalletState;
  const _WalletState._() : super._();

  @override
  double get walletBalance;
  @override
  String get exchange;
  @override
  bool get loading;
  @override
  double get fortDollarInvestmentBalance;
  @override
  double get fortCryptoInvestmentBalance;
  @override
  double get fortShieldInvestmentBalance;
  @override
  double get fortDollarYieldBalance;
  @override
  double get fortCryptoYieldBalance;
  @override
  double get fortShieldYieldBalance;
  @override
  String get withdrawalMethod;
  @override
  String get failure;
  @override
  String get success;
  @override
  Map<String, dynamic> get withdrawalDetails;
  @override
  InvestmentItem get investmentToBeWithdrawn;
  @override
  List<BankAddress> get bankAddresses;
  @override
  List<CryptoWallet> get cryptoAddresses;
  @override
  List<CryptoWallet> get generalCryptoAddresses;
  @override
  List<InvestmentItem> get fortDollarInvestments;
  @override
  List<InvestmentItem> get fortCryptoInvestments;
  @override
  List<InvestmentItem> get fortShieldInvestments;
  @override
  List<WithdrawalItem> get withdrawals;
  @override
  List<TransactionItem> get transactions;
  @override
  bool get showDigits;
  @override
  @JsonKey(ignore: true)
  _$$_WalletStateCopyWith<_$_WalletState> get copyWith =>
      throw _privateConstructorUsedError;
}
