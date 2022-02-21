// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'investment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvestmentItemDTO _$InvestmentItemDTOFromJson(Map<String, dynamic> json) {
  return _InvestmentItemDTO.fromJson(json);
}

/// @nodoc
class _$InvestmentItemDTOTearOff {
  const _$InvestmentItemDTOTearOff();

  _InvestmentItemDTO call(
      {required String description,
      required String uid,
      required int amount,
      required String traxId,
      required String roi,
      required String planName,
      required DateTime paymentDate,
      required DateTime dueDate,
      required String duration,
      required String status,
      required int planYield}) {
    return _InvestmentItemDTO(
      description: description,
      uid: uid,
      amount: amount,
      traxId: traxId,
      roi: roi,
      planName: planName,
      paymentDate: paymentDate,
      dueDate: dueDate,
      duration: duration,
      status: status,
      planYield: planYield,
    );
  }

  InvestmentItemDTO fromJson(Map<String, Object?> json) {
    return InvestmentItemDTO.fromJson(json);
  }
}

/// @nodoc
const $InvestmentItemDTO = _$InvestmentItemDTOTearOff();

/// @nodoc
mixin _$InvestmentItemDTO {
  String get description => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get traxId => throw _privateConstructorUsedError;
  String get roi => throw _privateConstructorUsedError;
  String get planName => throw _privateConstructorUsedError;
  DateTime get paymentDate => throw _privateConstructorUsedError;
  DateTime get dueDate => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  int get planYield => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvestmentItemDTOCopyWith<InvestmentItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestmentItemDTOCopyWith<$Res> {
  factory $InvestmentItemDTOCopyWith(
          InvestmentItemDTO value, $Res Function(InvestmentItemDTO) then) =
      _$InvestmentItemDTOCopyWithImpl<$Res>;
  $Res call(
      {String description,
      String uid,
      int amount,
      String traxId,
      String roi,
      String planName,
      DateTime paymentDate,
      DateTime dueDate,
      String duration,
      String status,
      int planYield});
}

/// @nodoc
class _$InvestmentItemDTOCopyWithImpl<$Res>
    implements $InvestmentItemDTOCopyWith<$Res> {
  _$InvestmentItemDTOCopyWithImpl(this._value, this._then);

  final InvestmentItemDTO _value;
  // ignore: unused_field
  final $Res Function(InvestmentItemDTO) _then;

  @override
  $Res call({
    Object? description = freezed,
    Object? uid = freezed,
    Object? amount = freezed,
    Object? traxId = freezed,
    Object? roi = freezed,
    Object? planName = freezed,
    Object? paymentDate = freezed,
    Object? dueDate = freezed,
    Object? duration = freezed,
    Object? status = freezed,
    Object? planYield = freezed,
  }) {
    return _then(_value.copyWith(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      traxId: traxId == freezed
          ? _value.traxId
          : traxId // ignore: cast_nullable_to_non_nullable
              as String,
      roi: roi == freezed
          ? _value.roi
          : roi // ignore: cast_nullable_to_non_nullable
              as String,
      planName: planName == freezed
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentDate: paymentDate == freezed
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dueDate: dueDate == freezed
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      planYield: planYield == freezed
          ? _value.planYield
          : planYield // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$InvestmentItemDTOCopyWith<$Res>
    implements $InvestmentItemDTOCopyWith<$Res> {
  factory _$InvestmentItemDTOCopyWith(
          _InvestmentItemDTO value, $Res Function(_InvestmentItemDTO) then) =
      __$InvestmentItemDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String description,
      String uid,
      int amount,
      String traxId,
      String roi,
      String planName,
      DateTime paymentDate,
      DateTime dueDate,
      String duration,
      String status,
      int planYield});
}

/// @nodoc
class __$InvestmentItemDTOCopyWithImpl<$Res>
    extends _$InvestmentItemDTOCopyWithImpl<$Res>
    implements _$InvestmentItemDTOCopyWith<$Res> {
  __$InvestmentItemDTOCopyWithImpl(
      _InvestmentItemDTO _value, $Res Function(_InvestmentItemDTO) _then)
      : super(_value, (v) => _then(v as _InvestmentItemDTO));

  @override
  _InvestmentItemDTO get _value => super._value as _InvestmentItemDTO;

  @override
  $Res call({
    Object? description = freezed,
    Object? uid = freezed,
    Object? amount = freezed,
    Object? traxId = freezed,
    Object? roi = freezed,
    Object? planName = freezed,
    Object? paymentDate = freezed,
    Object? dueDate = freezed,
    Object? duration = freezed,
    Object? status = freezed,
    Object? planYield = freezed,
  }) {
    return _then(_InvestmentItemDTO(
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      traxId: traxId == freezed
          ? _value.traxId
          : traxId // ignore: cast_nullable_to_non_nullable
              as String,
      roi: roi == freezed
          ? _value.roi
          : roi // ignore: cast_nullable_to_non_nullable
              as String,
      planName: planName == freezed
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      paymentDate: paymentDate == freezed
          ? _value.paymentDate
          : paymentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dueDate: dueDate == freezed
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      planYield: planYield == freezed
          ? _value.planYield
          : planYield // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvestmentItemDTO extends _InvestmentItemDTO {
  const _$_InvestmentItemDTO(
      {required this.description,
      required this.uid,
      required this.amount,
      required this.traxId,
      required this.roi,
      required this.planName,
      required this.paymentDate,
      required this.dueDate,
      required this.duration,
      required this.status,
      required this.planYield})
      : super._();

  factory _$_InvestmentItemDTO.fromJson(Map<String, dynamic> json) =>
      _$$_InvestmentItemDTOFromJson(json);

  @override
  final String description;
  @override
  final String uid;
  @override
  final int amount;
  @override
  final String traxId;
  @override
  final String roi;
  @override
  final String planName;
  @override
  final DateTime paymentDate;
  @override
  final DateTime dueDate;
  @override
  final String duration;
  @override
  final String status;
  @override
  final int planYield;

  @override
  String toString() {
    return 'InvestmentItemDTO(description: $description, uid: $uid, amount: $amount, traxId: $traxId, roi: $roi, planName: $planName, paymentDate: $paymentDate, dueDate: $dueDate, duration: $duration, status: $status, planYield: $planYield)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvestmentItemDTO &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.uid, uid) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.traxId, traxId) &&
            const DeepCollectionEquality().equals(other.roi, roi) &&
            const DeepCollectionEquality().equals(other.planName, planName) &&
            const DeepCollectionEquality()
                .equals(other.paymentDate, paymentDate) &&
            const DeepCollectionEquality().equals(other.dueDate, dueDate) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.planYield, planYield));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(uid),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(traxId),
      const DeepCollectionEquality().hash(roi),
      const DeepCollectionEquality().hash(planName),
      const DeepCollectionEquality().hash(paymentDate),
      const DeepCollectionEquality().hash(dueDate),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(planYield));

  @JsonKey(ignore: true)
  @override
  _$InvestmentItemDTOCopyWith<_InvestmentItemDTO> get copyWith =>
      __$InvestmentItemDTOCopyWithImpl<_InvestmentItemDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvestmentItemDTOToJson(this);
  }
}

abstract class _InvestmentItemDTO extends InvestmentItemDTO {
  const factory _InvestmentItemDTO(
      {required String description,
      required String uid,
      required int amount,
      required String traxId,
      required String roi,
      required String planName,
      required DateTime paymentDate,
      required DateTime dueDate,
      required String duration,
      required String status,
      required int planYield}) = _$_InvestmentItemDTO;
  const _InvestmentItemDTO._() : super._();

  factory _InvestmentItemDTO.fromJson(Map<String, dynamic> json) =
      _$_InvestmentItemDTO.fromJson;

  @override
  String get description;
  @override
  String get uid;
  @override
  int get amount;
  @override
  String get traxId;
  @override
  String get roi;
  @override
  String get planName;
  @override
  DateTime get paymentDate;
  @override
  DateTime get dueDate;
  @override
  String get duration;
  @override
  String get status;
  @override
  int get planYield;
  @override
  @JsonKey(ignore: true)
  _$InvestmentItemDTOCopyWith<_InvestmentItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
