// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'investment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvestmentItemDTO _$InvestmentItemDTOFromJson(Map<String, dynamic> json) {
  return _InvestmentItemDTO.fromJson(json);
}

/// @nodoc
mixin _$InvestmentItemDTO {
  String get description => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  String? get coin => throw _privateConstructorUsedError;
  String? get bankAccountType => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get traxId => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  int get roi => throw _privateConstructorUsedError;
  int get numberOfDays => throw _privateConstructorUsedError;
  String get planName => throw _privateConstructorUsedError;
  DateTime get paymentDate => throw _privateConstructorUsedError;
  DateTime get dueDate => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  double get planYield => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  DateTime? get nextHarvestDate => throw _privateConstructorUsedError;
  String get refId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvestmentItemDTOCopyWith<InvestmentItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestmentItemDTOCopyWith<$Res> {
  factory $InvestmentItemDTOCopyWith(
          InvestmentItemDTO value, $Res Function(InvestmentItemDTO) then) =
      _$InvestmentItemDTOCopyWithImpl<$Res, InvestmentItemDTO>;
  @useResult
  $Res call(
      {String description,
      String uid,
      String? coin,
      String? bankAccountType,
      double amount,
      String traxId,
      String fullName,
      int roi,
      int numberOfDays,
      String planName,
      DateTime paymentDate,
      DateTime dueDate,
      int duration,
      String status,
      String currency,
      double planYield,
      String paymentMethod,
      DateTime? nextHarvestDate,
      String refId});
}

/// @nodoc
class _$InvestmentItemDTOCopyWithImpl<$Res, $Val extends InvestmentItemDTO>
    implements $InvestmentItemDTOCopyWith<$Res> {
  _$InvestmentItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? uid = null,
    Object? coin = freezed,
    Object? bankAccountType = freezed,
    Object? amount = null,
    Object? traxId = null,
    Object? fullName = null,
    Object? roi = null,
    Object? numberOfDays = null,
    Object? planName = null,
    Object? paymentDate = null,
    Object? dueDate = null,
    Object? duration = null,
    Object? status = null,
    Object? currency = null,
    Object? planYield = null,
    Object? paymentMethod = null,
    Object? nextHarvestDate = freezed,
    Object? refId = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      coin: freezed == coin
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccountType: freezed == bankAccountType
          ? _value.bankAccountType
          : bankAccountType // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      traxId: null == traxId
          ? _value.traxId
          : traxId // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      roi: null == roi
          ? _value.roi
          : roi // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfDays: null == numberOfDays
          ? _value.numberOfDays
          : numberOfDays // ignore: cast_nullable_to_non_nullable
              as int,
      planName: null == planName
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentDate: null == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      planYield: null == planYield
          ? _value.planYield
          : planYield // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      nextHarvestDate: freezed == nextHarvestDate
          ? _value.nextHarvestDate
          : nextHarvestDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      refId: null == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvestmentItemDTOCopyWith<$Res>
    implements $InvestmentItemDTOCopyWith<$Res> {
  factory _$$_InvestmentItemDTOCopyWith(_$_InvestmentItemDTO value,
          $Res Function(_$_InvestmentItemDTO) then) =
      __$$_InvestmentItemDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String description,
      String uid,
      String? coin,
      String? bankAccountType,
      double amount,
      String traxId,
      String fullName,
      int roi,
      int numberOfDays,
      String planName,
      DateTime paymentDate,
      DateTime dueDate,
      int duration,
      String status,
      String currency,
      double planYield,
      String paymentMethod,
      DateTime? nextHarvestDate,
      String refId});
}

/// @nodoc
class __$$_InvestmentItemDTOCopyWithImpl<$Res>
    extends _$InvestmentItemDTOCopyWithImpl<$Res, _$_InvestmentItemDTO>
    implements _$$_InvestmentItemDTOCopyWith<$Res> {
  __$$_InvestmentItemDTOCopyWithImpl(
      _$_InvestmentItemDTO _value, $Res Function(_$_InvestmentItemDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? uid = null,
    Object? coin = freezed,
    Object? bankAccountType = freezed,
    Object? amount = null,
    Object? traxId = null,
    Object? fullName = null,
    Object? roi = null,
    Object? numberOfDays = null,
    Object? planName = null,
    Object? paymentDate = null,
    Object? dueDate = null,
    Object? duration = null,
    Object? status = null,
    Object? currency = null,
    Object? planYield = null,
    Object? paymentMethod = null,
    Object? nextHarvestDate = freezed,
    Object? refId = null,
  }) {
    return _then(_$_InvestmentItemDTO(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      coin: freezed == coin
          ? _value.coin
          : coin // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccountType: freezed == bankAccountType
          ? _value.bankAccountType
          : bankAccountType // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      traxId: null == traxId
          ? _value.traxId
          : traxId // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      roi: null == roi
          ? _value.roi
          : roi // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfDays: null == numberOfDays
          ? _value.numberOfDays
          : numberOfDays // ignore: cast_nullable_to_non_nullable
              as int,
      planName: null == planName
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentDate: null == paymentDate
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      planYield: null == planYield
          ? _value.planYield
          : planYield // ignore: cast_nullable_to_non_nullable
              as double,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      nextHarvestDate: freezed == nextHarvestDate
          ? _value.nextHarvestDate
          : nextHarvestDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      refId: null == refId
          ? _value.refId
          : refId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvestmentItemDTO extends _InvestmentItemDTO {
  const _$_InvestmentItemDTO(
      {required this.description,
      required this.uid,
      this.coin,
      this.bankAccountType,
      required this.amount,
      required this.traxId,
      required this.fullName,
      required this.roi,
      required this.numberOfDays,
      required this.planName,
      required this.paymentDate,
      required this.dueDate,
      required this.duration,
      required this.status,
      required this.currency,
      required this.planYield,
      required this.paymentMethod,
      this.nextHarvestDate,
      required this.refId})
      : super._();

  factory _$_InvestmentItemDTO.fromJson(Map<String, dynamic> json) =>
      _$$_InvestmentItemDTOFromJson(json);

  @override
  final String description;
  @override
  final String uid;
  @override
  final String? coin;
  @override
  final String? bankAccountType;
  @override
  final double amount;
  @override
  final String traxId;
  @override
  final String fullName;
  @override
  final int roi;
  @override
  final int numberOfDays;
  @override
  final String planName;
  @override
  final DateTime paymentDate;
  @override
  final DateTime dueDate;
  @override
  final int duration;
  @override
  final String status;
  @override
  final String currency;
  @override
  final double planYield;
  @override
  final String paymentMethod;
  @override
  final DateTime? nextHarvestDate;
  @override
  final String refId;

  @override
  String toString() {
    return 'InvestmentItemDTO(description: $description, uid: $uid, coin: $coin, bankAccountType: $bankAccountType, amount: $amount, traxId: $traxId, fullName: $fullName, roi: $roi, numberOfDays: $numberOfDays, planName: $planName, paymentDate: $paymentDate, dueDate: $dueDate, duration: $duration, status: $status, currency: $currency, planYield: $planYield, paymentMethod: $paymentMethod, nextHarvestDate: $nextHarvestDate, refId: $refId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvestmentItemDTO &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.coin, coin) || other.coin == coin) &&
            (identical(other.bankAccountType, bankAccountType) ||
                other.bankAccountType == bankAccountType) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.traxId, traxId) || other.traxId == traxId) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.roi, roi) || other.roi == roi) &&
            (identical(other.numberOfDays, numberOfDays) ||
                other.numberOfDays == numberOfDays) &&
            (identical(other.planName, planName) ||
                other.planName == planName) &&
            (identical(other.paymentDate, paymentDate) ||
                other.paymentDate == paymentDate) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.planYield, planYield) ||
                other.planYield == planYield) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.nextHarvestDate, nextHarvestDate) ||
                other.nextHarvestDate == nextHarvestDate) &&
            (identical(other.refId, refId) || other.refId == refId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        description,
        uid,
        coin,
        bankAccountType,
        amount,
        traxId,
        fullName,
        roi,
        numberOfDays,
        planName,
        paymentDate,
        dueDate,
        duration,
        status,
        currency,
        planYield,
        paymentMethod,
        nextHarvestDate,
        refId
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvestmentItemDTOCopyWith<_$_InvestmentItemDTO> get copyWith =>
      __$$_InvestmentItemDTOCopyWithImpl<_$_InvestmentItemDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvestmentItemDTOToJson(
      this,
    );
  }
}

abstract class _InvestmentItemDTO extends InvestmentItemDTO {
  const factory _InvestmentItemDTO(
      {required final String description,
      required final String uid,
      final String? coin,
      final String? bankAccountType,
      required final double amount,
      required final String traxId,
      required final String fullName,
      required final int roi,
      required final int numberOfDays,
      required final String planName,
      required final DateTime paymentDate,
      required final DateTime dueDate,
      required final int duration,
      required final String status,
      required final String currency,
      required final double planYield,
      required final String paymentMethod,
      final DateTime? nextHarvestDate,
      required final String refId}) = _$_InvestmentItemDTO;
  const _InvestmentItemDTO._() : super._();

  factory _InvestmentItemDTO.fromJson(Map<String, dynamic> json) =
      _$_InvestmentItemDTO.fromJson;

  @override
  String get description;
  @override
  String get uid;
  @override
  String? get coin;
  @override
  String? get bankAccountType;
  @override
  double get amount;
  @override
  String get traxId;
  @override
  String get fullName;
  @override
  int get roi;
  @override
  int get numberOfDays;
  @override
  String get planName;
  @override
  DateTime get paymentDate;
  @override
  DateTime get dueDate;
  @override
  int get duration;
  @override
  String get status;
  @override
  String get currency;
  @override
  double get planYield;
  @override
  String get paymentMethod;
  @override
  DateTime? get nextHarvestDate;
  @override
  String get refId;
  @override
  @JsonKey(ignore: true)
  _$$_InvestmentItemDTOCopyWith<_$_InvestmentItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
