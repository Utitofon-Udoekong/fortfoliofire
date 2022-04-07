// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'kyc_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KYCItemDTO _$KYCItemDTOFromJson(Map<String, dynamic> json) {
  return _KYCItemDTO.fromJson(json);
}

/// @nodoc
class _$KYCItemDTOTearOff {
  const _$KYCItemDTOTearOff();

  _KYCItemDTO call(
      {required String fullName,
      required String id,
      required List<Map<String, dynamic>> documents,
      required DateTime submitted,
      required String status}) {
    return _KYCItemDTO(
      fullName: fullName,
      id: id,
      documents: documents,
      submitted: submitted,
      status: status,
    );
  }

  KYCItemDTO fromJson(Map<String, Object?> json) {
    return KYCItemDTO.fromJson(json);
  }
}

/// @nodoc
const $KYCItemDTO = _$KYCItemDTOTearOff();

/// @nodoc
mixin _$KYCItemDTO {
  String get fullName => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get documents =>
      throw _privateConstructorUsedError;
  DateTime get submitted => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KYCItemDTOCopyWith<KYCItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KYCItemDTOCopyWith<$Res> {
  factory $KYCItemDTOCopyWith(
          KYCItemDTO value, $Res Function(KYCItemDTO) then) =
      _$KYCItemDTOCopyWithImpl<$Res>;
  $Res call(
      {String fullName,
      String id,
      List<Map<String, dynamic>> documents,
      DateTime submitted,
      String status});
}

/// @nodoc
class _$KYCItemDTOCopyWithImpl<$Res> implements $KYCItemDTOCopyWith<$Res> {
  _$KYCItemDTOCopyWithImpl(this._value, this._then);

  final KYCItemDTO _value;
  // ignore: unused_field
  final $Res Function(KYCItemDTO) _then;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? id = freezed,
    Object? documents = freezed,
    Object? submitted = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      documents: documents == freezed
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      submitted: submitted == freezed
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$KYCItemDTOCopyWith<$Res> implements $KYCItemDTOCopyWith<$Res> {
  factory _$KYCItemDTOCopyWith(
          _KYCItemDTO value, $Res Function(_KYCItemDTO) then) =
      __$KYCItemDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String fullName,
      String id,
      List<Map<String, dynamic>> documents,
      DateTime submitted,
      String status});
}

/// @nodoc
class __$KYCItemDTOCopyWithImpl<$Res> extends _$KYCItemDTOCopyWithImpl<$Res>
    implements _$KYCItemDTOCopyWith<$Res> {
  __$KYCItemDTOCopyWithImpl(
      _KYCItemDTO _value, $Res Function(_KYCItemDTO) _then)
      : super(_value, (v) => _then(v as _KYCItemDTO));

  @override
  _KYCItemDTO get _value => super._value as _KYCItemDTO;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? id = freezed,
    Object? documents = freezed,
    Object? submitted = freezed,
    Object? status = freezed,
  }) {
    return _then(_KYCItemDTO(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      documents: documents == freezed
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      submitted: submitted == freezed
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KYCItemDTO extends _KYCItemDTO {
  const _$_KYCItemDTO(
      {required this.fullName,
      required this.id,
      required this.documents,
      required this.submitted,
      required this.status})
      : super._();

  factory _$_KYCItemDTO.fromJson(Map<String, dynamic> json) =>
      _$$_KYCItemDTOFromJson(json);

  @override
  final String fullName;
  @override
  final String id;
  @override
  final List<Map<String, dynamic>> documents;
  @override
  final DateTime submitted;
  @override
  final String status;

  @override
  String toString() {
    return 'KYCItemDTO(fullName: $fullName, id: $id, documents: $documents, submitted: $submitted, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KYCItemDTO &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.documents, documents) &&
            const DeepCollectionEquality().equals(other.submitted, submitted) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(documents),
      const DeepCollectionEquality().hash(submitted),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$KYCItemDTOCopyWith<_KYCItemDTO> get copyWith =>
      __$KYCItemDTOCopyWithImpl<_KYCItemDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KYCItemDTOToJson(this);
  }
}

abstract class _KYCItemDTO extends KYCItemDTO {
  const factory _KYCItemDTO(
      {required String fullName,
      required String id,
      required List<Map<String, dynamic>> documents,
      required DateTime submitted,
      required String status}) = _$_KYCItemDTO;
  const _KYCItemDTO._() : super._();

  factory _KYCItemDTO.fromJson(Map<String, dynamic> json) =
      _$_KYCItemDTO.fromJson;

  @override
  String get fullName;
  @override
  String get id;
  @override
  List<Map<String, dynamic>> get documents;
  @override
  DateTime get submitted;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$KYCItemDTOCopyWith<_KYCItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
