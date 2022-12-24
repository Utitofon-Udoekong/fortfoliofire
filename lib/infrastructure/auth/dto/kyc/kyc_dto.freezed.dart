// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$KYCItemDTOCopyWithImpl<$Res, KYCItemDTO>;
  @useResult
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
class _$KYCItemDTOCopyWithImpl<$Res, $Val extends KYCItemDTO>
    implements $KYCItemDTOCopyWith<$Res> {
  _$KYCItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? id = null,
    Object? documentType = null,
    Object? documents = null,
    Object? submitted = null,
    Object? status = null,
    Object? rejectionReason = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      documentType: null == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String,
      documents: null == documents
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      rejectionReason: freezed == rejectionReason
          ? _value.rejectionReason
          : rejectionReason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KYCItemDTOCopyWith<$Res>
    implements $KYCItemDTOCopyWith<$Res> {
  factory _$$_KYCItemDTOCopyWith(
          _$_KYCItemDTO value, $Res Function(_$_KYCItemDTO) then) =
      __$$_KYCItemDTOCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_KYCItemDTOCopyWithImpl<$Res>
    extends _$KYCItemDTOCopyWithImpl<$Res, _$_KYCItemDTO>
    implements _$$_KYCItemDTOCopyWith<$Res> {
  __$$_KYCItemDTOCopyWithImpl(
      _$_KYCItemDTO _value, $Res Function(_$_KYCItemDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
    Object? id = null,
    Object? documentType = null,
    Object? documents = null,
    Object? submitted = null,
    Object? status = null,
    Object? rejectionReason = freezed,
  }) {
    return _then(_$_KYCItemDTO(
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      documentType: null == documentType
          ? _value.documentType
          : documentType // ignore: cast_nullable_to_non_nullable
              as String,
      documents: null == documents
          ? _value._documents
          : documents // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      submitted: null == submitted
          ? _value.submitted
          : submitted // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      rejectionReason: freezed == rejectionReason
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
    if (_documents is EqualUnmodifiableListView) return _documents;
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
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.documentType, documentType) ||
                other.documentType == documentType) &&
            const DeepCollectionEquality()
                .equals(other._documents, _documents) &&
            (identical(other.submitted, submitted) ||
                other.submitted == submitted) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fullName,
      id,
      documentType,
      const DeepCollectionEquality().hash(_documents),
      submitted,
      status,
      rejectionReason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KYCItemDTOCopyWith<_$_KYCItemDTO> get copyWith =>
      __$$_KYCItemDTOCopyWithImpl<_$_KYCItemDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KYCItemDTOToJson(
      this,
    );
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
  String get fullName;
  @override
  String get id;
  @override
  String get documentType;
  @override
  List<Map<String, dynamic>> get documents;
  @override
  DateTime get submitted;
  @override
  String get status;
  @override
  String? get rejectionReason;
  @override
  @JsonKey(ignore: true)
  _$$_KYCItemDTOCopyWith<_$_KYCItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
