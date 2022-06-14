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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KYCItemDTO _$KYCItemDTOFromJson(Map<String, dynamic> json) {
  return _KYCItemDTO.fromJson(json);
}

/// @nodoc
mixin _$KYCItemDTO {
  String get fullName => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get documentType => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get documents =>
      throw _privateConstructorUsedError;
  DateTime get submitted => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get rejectionReason => throw _privateConstructorUsedError;

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
      String documentType,
      List<Map<String, dynamic>> documents,
      DateTime submitted,
      String status,
      String? rejectionReason});
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
    Object? documentType = freezed,
    Object? documents = freezed,
    Object? submitted = freezed,
    Object? status = freezed,
    Object? rejectionReason = freezed,
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
      documentType: documentType == freezed
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
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
      rejectionReason: rejectionReason == freezed
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_KYCItemDTOCopyWith<$Res>
    implements $KYCItemDTOCopyWith<$Res> {
  factory _$$_KYCItemDTOCopyWith(
          _$_KYCItemDTO value, $Res Function(_$_KYCItemDTO) then) =
      __$$_KYCItemDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String fullName,
      String id,
      String documentType,
      List<Map<String, dynamic>> documents,
      DateTime submitted,
      String status,
      String? rejectionReason});
}

/// @nodoc
class __$$_KYCItemDTOCopyWithImpl<$Res> extends _$KYCItemDTOCopyWithImpl<$Res>
    implements _$$_KYCItemDTOCopyWith<$Res> {
  __$$_KYCItemDTOCopyWithImpl(
      _$_KYCItemDTO _value, $Res Function(_$_KYCItemDTO) _then)
      : super(_value, (v) => _then(v as _$_KYCItemDTO));

  @override
  _$_KYCItemDTO get _value => super._value as _$_KYCItemDTO;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? id = freezed,
    Object? documentType = freezed,
    Object? documents = freezed,
    Object? submitted = freezed,
    Object? status = freezed,
    Object? rejectionReason = freezed,
  }) {
    return _then(_$_KYCItemDTO(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      documentType: documentType == freezed
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String,
      documents: documents == freezed
          ? _value._documents
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
      rejectionReason: rejectionReason == freezed
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_KYCItemDTO extends _KYCItemDTO {
  const _$_KYCItemDTO(
      {required this.fullName,
      required this.id,
      required this.documentType,
      required final List<Map<String, dynamic>> documents,
      required this.submitted,
      required this.status,
      this.rejectionReason})
      : _documents = documents,
        super._();

  factory _$_KYCItemDTO.fromJson(Map<String, dynamic> json) =>
      _$$_KYCItemDTOFromJson(json);

  @override
  final String fullName;
  @override
  final String id;
  @override
  final String documentType;
  final List<Map<String, dynamic>> _documents;
  @override
  List<Map<String, dynamic>> get documents {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documents);
  }

  @override
  final DateTime submitted;
  @override
  final String status;
  @override
  final String? rejectionReason;

  @override
  String toString() {
    return 'KYCItemDTO(fullName: $fullName, id: $id, documentType: $documentType, documents: $documents, submitted: $submitted, status: $status, rejectionReason: $rejectionReason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KYCItemDTO &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.documentType, documentType) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            const DeepCollectionEquality().equals(other.submitted, submitted) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.rejectionReason, rejectionReason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(documentType),
      const DeepCollectionEquality().hash(_documents),
      const DeepCollectionEquality().hash(submitted),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(rejectionReason));

  @JsonKey(ignore: true)
  @override
  _$$_KYCItemDTOCopyWith<_$_KYCItemDTO> get copyWith =>
      __$$_KYCItemDTOCopyWithImpl<_$_KYCItemDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KYCItemDTOToJson(this);
  }
}

abstract class _KYCItemDTO extends KYCItemDTO {
  const factory _KYCItemDTO(
      {required final String fullName,
      required final String id,
      required final String documentType,
      required final List<Map<String, dynamic>> documents,
      required final DateTime submitted,
      required final String status,
      final String? rejectionReason}) = _$_KYCItemDTO;
  const _KYCItemDTO._() : super._();

  factory _KYCItemDTO.fromJson(Map<String, dynamic> json) =
      _$_KYCItemDTO.fromJson;

  @override
  String get fullName => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get documentType => throw _privateConstructorUsedError;
  @override
  List<Map<String, dynamic>> get documents =>
      throw _privateConstructorUsedError;
  @override
  DateTime get submitted => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String? get rejectionReason => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_KYCItemDTOCopyWith<_$_KYCItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
