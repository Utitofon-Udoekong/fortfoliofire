// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$KYCItemCopyWithImpl<$Res>;
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
class _$KYCItemCopyWithImpl<$Res> implements $KYCItemCopyWith<$Res> {
  _$KYCItemCopyWithImpl(this._value, this._then);

  final KYCItem _value;
  // ignore: unused_field
  final $Res Function(KYCItem) _then;

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
abstract class _$$_KYCItemCopyWith<$Res> implements $KYCItemCopyWith<$Res> {
  factory _$$_KYCItemCopyWith(
          _$_KYCItem value, $Res Function(_$_KYCItem) then) =
      __$$_KYCItemCopyWithImpl<$Res>;
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
class __$$_KYCItemCopyWithImpl<$Res> extends _$KYCItemCopyWithImpl<$Res>
    implements _$$_KYCItemCopyWith<$Res> {
  __$$_KYCItemCopyWithImpl(_$_KYCItem _value, $Res Function(_$_KYCItem) _then)
      : super(_value, (v) => _then(v as _$_KYCItem));

  @override
  _$_KYCItem get _value => super._value as _$_KYCItem;

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
    return _then(_$_KYCItem(
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
  _$$_KYCItemCopyWith<_$_KYCItem> get copyWith =>
      throw _privateConstructorUsedError;
}
