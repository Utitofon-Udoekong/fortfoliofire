// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kyc_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$KYCItem {
  String get fullName => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get documentType => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get documents =>
      throw _privateConstructorUsedError;
  DateTime get submitted => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get rejectionReason => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KYCItemCopyWith<KYCItem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KYCItemCopyWith<$Res> {
  factory $KYCItemCopyWith(KYCItem value, $Res Function(KYCItem) then) =
      _$KYCItemCopyWithImpl<$Res, KYCItem>;
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
class _$KYCItemCopyWithImpl<$Res, $Val extends KYCItem>
    implements $KYCItemCopyWith<$Res> {
  _$KYCItemCopyWithImpl(this._value, this._then);

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
abstract class _$$_KYCItemCopyWith<$Res> implements $KYCItemCopyWith<$Res> {
  factory _$$_KYCItemCopyWith(
          _$_KYCItem value, $Res Function(_$_KYCItem) then) =
      __$$_KYCItemCopyWithImpl<$Res>;
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
class __$$_KYCItemCopyWithImpl<$Res>
    extends _$KYCItemCopyWithImpl<$Res, _$_KYCItem>
    implements _$$_KYCItemCopyWith<$Res> {
  __$$_KYCItemCopyWithImpl(_$_KYCItem _value, $Res Function(_$_KYCItem) _then)
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
    return _then(_$_KYCItem(
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

class _$_KYCItem extends _KYCItem {
  const _$_KYCItem(
      {required this.fullName,
      required this.id,
      required this.documentType,
      required final List<Map<String, dynamic>> documents,
      required this.submitted,
      required this.status,
      this.rejectionReason})
      : _documents = documents,
        super._();

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
    return 'KYCItem(fullName: $fullName, id: $id, documentType: $documentType, documents: $documents, submitted: $submitted, status: $status, rejectionReason: $rejectionReason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KYCItem &&
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
  _$$_KYCItemCopyWith<_$_KYCItem> get copyWith =>
      __$$_KYCItemCopyWithImpl<_$_KYCItem>(this, _$identity);
}

abstract class _KYCItem extends KYCItem {
  const factory _KYCItem(
      {required final String fullName,
      required final String id,
      required final String documentType,
      required final List<Map<String, dynamic>> documents,
      required final DateTime submitted,
      required final String status,
      final String? rejectionReason}) = _$_KYCItem;
  const _KYCItem._() : super._();

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
  _$$_KYCItemCopyWith<_$_KYCItem> get copyWith =>
      throw _privateConstructorUsedError;
}
