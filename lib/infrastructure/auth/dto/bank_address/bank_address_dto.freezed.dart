// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_address_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BankAddressDTO _$BankAddressDTOFromJson(Map<String, dynamic> json) {
  return _BankAddressDTO.fromJson(json);
}

/// @nodoc
mixin _$BankAddressDTO {
  String get bankName => throw _privateConstructorUsedError;
  String get accountNumber => throw _privateConstructorUsedError;
  String get accountType => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get trax => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankAddressDTOCopyWith<BankAddressDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankAddressDTOCopyWith<$Res> {
  factory $BankAddressDTOCopyWith(
          BankAddressDTO value, $Res Function(BankAddressDTO) then) =
      _$BankAddressDTOCopyWithImpl<$Res, BankAddressDTO>;
  @useResult
  $Res call(
      {String bankName,
      String accountNumber,
      String accountType,
      String userName,
      String id,
      String trax,
      String type});
}

/// @nodoc
class _$BankAddressDTOCopyWithImpl<$Res, $Val extends BankAddressDTO>
    implements $BankAddressDTOCopyWith<$Res> {
  _$BankAddressDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankName = null,
    Object? accountNumber = null,
    Object? accountType = null,
    Object? userName = null,
    Object? id = null,
    Object? trax = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      trax: null == trax
          ? _value.trax
          : trax // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BankAddressDTOCopyWith<$Res>
    implements $BankAddressDTOCopyWith<$Res> {
  factory _$$_BankAddressDTOCopyWith(
          _$_BankAddressDTO value, $Res Function(_$_BankAddressDTO) then) =
      __$$_BankAddressDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String bankName,
      String accountNumber,
      String accountType,
      String userName,
      String id,
      String trax,
      String type});
}

/// @nodoc
class __$$_BankAddressDTOCopyWithImpl<$Res>
    extends _$BankAddressDTOCopyWithImpl<$Res, _$_BankAddressDTO>
    implements _$$_BankAddressDTOCopyWith<$Res> {
  __$$_BankAddressDTOCopyWithImpl(
      _$_BankAddressDTO _value, $Res Function(_$_BankAddressDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankName = null,
    Object? accountNumber = null,
    Object? accountType = null,
    Object? userName = null,
    Object? id = null,
    Object? trax = null,
    Object? type = null,
  }) {
    return _then(_$_BankAddressDTO(
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      accountType: null == accountType
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      trax: null == trax
          ? _value.trax
          : trax // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BankAddressDTO extends _BankAddressDTO {
  const _$_BankAddressDTO(
      {required this.bankName,
      required this.accountNumber,
      required this.accountType,
      required this.userName,
      required this.id,
      required this.trax,
      required this.type})
      : super._();

  factory _$_BankAddressDTO.fromJson(Map<String, dynamic> json) =>
      _$$_BankAddressDTOFromJson(json);

  @override
  final String bankName;
  @override
  final String accountNumber;
  @override
  final String accountType;
  @override
  final String userName;
  @override
  final String id;
  @override
  final String trax;
  @override
  final String type;

  @override
  String toString() {
    return 'BankAddressDTO(bankName: $bankName, accountNumber: $accountNumber, accountType: $accountType, userName: $userName, id: $id, trax: $trax, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BankAddressDTO &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.trax, trax) || other.trax == trax) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bankName, accountNumber,
      accountType, userName, id, trax, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BankAddressDTOCopyWith<_$_BankAddressDTO> get copyWith =>
      __$$_BankAddressDTOCopyWithImpl<_$_BankAddressDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BankAddressDTOToJson(
      this,
    );
  }
}

abstract class _BankAddressDTO extends BankAddressDTO {
  const factory _BankAddressDTO(
      {required final String bankName,
      required final String accountNumber,
      required final String accountType,
      required final String userName,
      required final String id,
      required final String trax,
      required final String type}) = _$_BankAddressDTO;
  const _BankAddressDTO._() : super._();

  factory _BankAddressDTO.fromJson(Map<String, dynamic> json) =
      _$_BankAddressDTO.fromJson;

  @override
  String get bankName;
  @override
  String get accountNumber;
  @override
  String get accountType;
  @override
  String get userName;
  @override
  String get id;
  @override
  String get trax;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_BankAddressDTOCopyWith<_$_BankAddressDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
