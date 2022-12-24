// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'investment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InvestmentState {
  String get planName => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  double get amountInvested => throw _privateConstructorUsedError;
  int get roi => throw _privateConstructorUsedError;
  String get failure => throw _privateConstructorUsedError;
  String get success => throw _privateConstructorUsedError;
  bool get agreementAccepted => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get exchangeType => throw _privateConstructorUsedError;
  String get coin => throw _privateConstructorUsedError;
  String get bankAccountType => throw _privateConstructorUsedError;
  List<bool> get isSelected => throw _privateConstructorUsedError;
  List<int> get durations => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  double get baseAmount => throw _privateConstructorUsedError;
  ChargeObject get charge => throw _privateConstructorUsedError;
  String get paymentStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvestmentStateCopyWith<InvestmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestmentStateCopyWith<$Res> {
  factory $InvestmentStateCopyWith(
          InvestmentState value, $Res Function(InvestmentState) then) =
      _$InvestmentStateCopyWithImpl<$Res, InvestmentState>;
  @useResult
  $Res call(
      {String planName,
      int duration,
      double amountInvested,
      int roi,
      String failure,
      String success,
      bool agreementAccepted,
      bool isLoading,
      String exchangeType,
      String coin,
      String bankAccountType,
      List<bool> isSelected,
      List<int> durations,
      String paymentMethod,
      double baseAmount,
      ChargeObject charge,
      String paymentStatus});
}

/// @nodoc
class _$InvestmentStateCopyWithImpl<$Res, $Val extends InvestmentState>
    implements $InvestmentStateCopyWith<$Res> {
  _$InvestmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planName = null,
    Object? duration = null,
    Object? amountInvested = null,
    Object? roi = null,
    Object? failure = null,
    Object? success = null,
    Object? agreementAccepted = null,
    Object? isLoading = null,
    Object? exchangeType = null,
    Object? coin = null,
    Object? bankAccountType = null,
    Object? isSelected = null,
    Object? durations = null,
    Object? paymentMethod = null,
    Object? baseAmount = null,
    Object? charge = null,
    Object? paymentStatus = null,
  }) {
    return _then(_value.copyWith(
      planName: null == planName
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      amountInvested: null == amountInvested
          ? _value.amountInvested
          : amountInvested // ignore: cast_nullable_to_non_nullable
              as double,
      roi: null == roi
          ? _value.roi
          : roi // ignore: cast_nullable_to_non_nullable
              as int,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      agreementAccepted: null == agreementAccepted
          ? _value.agreementAccepted
          : agreementAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      exchangeType: null == exchangeType
          ? _value.exchangeType
          : exchangeType // ignore: cast_nullable_to_non_nullable
              as String,
      coin: null == coin
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String,
      bankAccountType: null == bankAccountType
          ? _value.bankAccountType
          : bankAccountType // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      durations: null == durations
          ? _value.durations
          : durations // ignore: cast_nullable_to_non_nullable
              as List<int>,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      baseAmount: null == baseAmount
          ? _value.baseAmount
          : baseAmount // ignore: cast_nullable_to_non_nullable
              as double,
      charge: null == charge
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as ChargeObject,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvestmentStateCopyWith<$Res>
    implements $InvestmentStateCopyWith<$Res> {
  factory _$$_InvestmentStateCopyWith(
          _$_InvestmentState value, $Res Function(_$_InvestmentState) then) =
      __$$_InvestmentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String planName,
      int duration,
      double amountInvested,
      int roi,
      String failure,
      String success,
      bool agreementAccepted,
      bool isLoading,
      String exchangeType,
      String coin,
      String bankAccountType,
      List<bool> isSelected,
      List<int> durations,
      String paymentMethod,
      double baseAmount,
      ChargeObject charge,
      String paymentStatus});
}

/// @nodoc
class __$$_InvestmentStateCopyWithImpl<$Res>
    extends _$InvestmentStateCopyWithImpl<$Res, _$_InvestmentState>
    implements _$$_InvestmentStateCopyWith<$Res> {
  __$$_InvestmentStateCopyWithImpl(
      _$_InvestmentState _value, $Res Function(_$_InvestmentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? planName = null,
    Object? duration = null,
    Object? amountInvested = null,
    Object? roi = null,
    Object? failure = null,
    Object? success = null,
    Object? agreementAccepted = null,
    Object? isLoading = null,
    Object? exchangeType = null,
    Object? coin = null,
    Object? bankAccountType = null,
    Object? isSelected = null,
    Object? durations = null,
    Object? paymentMethod = null,
    Object? baseAmount = null,
    Object? charge = null,
    Object? paymentStatus = null,
  }) {
    return _then(_$_InvestmentState(
      planName: null == planName
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      amountInvested: null == amountInvested
          ? _value.amountInvested
          : amountInvested // ignore: cast_nullable_to_non_nullable
              as double,
      roi: null == roi
          ? _value.roi
          : roi // ignore: cast_nullable_to_non_nullable
              as int,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as String,
      agreementAccepted: null == agreementAccepted
          ? _value.agreementAccepted
          : agreementAccepted // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      exchangeType: null == exchangeType
          ? _value.exchangeType
          : exchangeType // ignore: cast_nullable_to_non_nullable
              as String,
      coin: null == coin
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String,
      bankAccountType: null == bankAccountType
          ? _value.bankAccountType
          : bankAccountType // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value._isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as List<bool>,
      durations: null == durations
          ? _value._durations
          : durations // ignore: cast_nullable_to_non_nullable
              as List<int>,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      baseAmount: null == baseAmount
          ? _value.baseAmount
          : baseAmount // ignore: cast_nullable_to_non_nullable
              as double,
      charge: null == charge
          ? _value.charge
          : charge // ignore: cast_nullable_to_non_nullable
              as ChargeObject,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvestmentState extends _InvestmentState {
  const _$_InvestmentState(
      {required this.planName,
      required this.duration,
      required this.amountInvested,
      required this.roi,
      required this.failure,
      required this.success,
      required this.agreementAccepted,
      required this.isLoading,
      required this.exchangeType,
      required this.coin,
      required this.bankAccountType,
      required final List<bool> isSelected,
      required final List<int> durations,
      required this.paymentMethod,
      required this.baseAmount,
      required this.charge,
      required this.paymentStatus})
      : _isSelected = isSelected,
        _durations = durations,
        super._();

  @override
  final String planName;
  @override
  final int duration;
  @override
  final double amountInvested;
  @override
  final int roi;
  @override
  final String failure;
  @override
  final String success;
  @override
  final bool agreementAccepted;
  @override
  final bool isLoading;
  @override
  final String exchangeType;
  @override
  final String coin;
  @override
  final String bankAccountType;
  final List<bool> _isSelected;
  @override
  List<bool> get isSelected {
    if (_isSelected is EqualUnmodifiableListView) return _isSelected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_isSelected);
  }

  final List<int> _durations;
  @override
  List<int> get durations {
    if (_durations is EqualUnmodifiableListView) return _durations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_durations);
  }

  @override
  final String paymentMethod;
  @override
  final double baseAmount;
  @override
  final ChargeObject charge;
  @override
  final String paymentStatus;

  @override
  String toString() {
    return 'InvestmentState(planName: $planName, duration: $duration, amountInvested: $amountInvested, roi: $roi, failure: $failure, success: $success, agreementAccepted: $agreementAccepted, isLoading: $isLoading, exchangeType: $exchangeType, coin: $coin, bankAccountType: $bankAccountType, isSelected: $isSelected, durations: $durations, paymentMethod: $paymentMethod, baseAmount: $baseAmount, charge: $charge, paymentStatus: $paymentStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvestmentState &&
            (identical(other.planName, planName) ||
                other.planName == planName) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.amountInvested, amountInvested) ||
                other.amountInvested == amountInvested) &&
            (identical(other.roi, roi) || other.roi == roi) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.agreementAccepted, agreementAccepted) ||
                other.agreementAccepted == agreementAccepted) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.exchangeType, exchangeType) ||
                other.exchangeType == exchangeType) &&
            (identical(other.coin, coin) || other.coin == coin) &&
            (identical(other.bankAccountType, bankAccountType) ||
                other.bankAccountType == bankAccountType) &&
            const DeepCollectionEquality()
                .equals(other._isSelected, _isSelected) &&
            const DeepCollectionEquality()
                .equals(other._durations, _durations) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.baseAmount, baseAmount) ||
                other.baseAmount == baseAmount) &&
            (identical(other.charge, charge) || other.charge == charge) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      planName,
      duration,
      amountInvested,
      roi,
      failure,
      success,
      agreementAccepted,
      isLoading,
      exchangeType,
      coin,
      bankAccountType,
      const DeepCollectionEquality().hash(_isSelected),
      const DeepCollectionEquality().hash(_durations),
      paymentMethod,
      baseAmount,
      charge,
      paymentStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvestmentStateCopyWith<_$_InvestmentState> get copyWith =>
      __$$_InvestmentStateCopyWithImpl<_$_InvestmentState>(this, _$identity);
}

abstract class _InvestmentState extends InvestmentState {
  const factory _InvestmentState(
      {required final String planName,
      required final int duration,
      required final double amountInvested,
      required final int roi,
      required final String failure,
      required final String success,
      required final bool agreementAccepted,
      required final bool isLoading,
      required final String exchangeType,
      required final String coin,
      required final String bankAccountType,
      required final List<bool> isSelected,
      required final List<int> durations,
      required final String paymentMethod,
      required final double baseAmount,
      required final ChargeObject charge,
      required final String paymentStatus}) = _$_InvestmentState;
  const _InvestmentState._() : super._();

  @override
  String get planName;
  @override
  int get duration;
  @override
  double get amountInvested;
  @override
  int get roi;
  @override
  String get failure;
  @override
  String get success;
  @override
  bool get agreementAccepted;
  @override
  bool get isLoading;
  @override
  String get exchangeType;
  @override
  String get coin;
  @override
  String get bankAccountType;
  @override
  List<bool> get isSelected;
  @override
  List<int> get durations;
  @override
  String get paymentMethod;
  @override
  double get baseAmount;
  @override
  ChargeObject get charge;
  @override
  String get paymentStatus;
  @override
  @JsonKey(ignore: true)
  _$$_InvestmentStateCopyWith<_$_InvestmentState> get copyWith =>
      throw _privateConstructorUsedError;
}
