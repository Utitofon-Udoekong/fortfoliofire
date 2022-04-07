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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$KYCItemTearOff {
  const _$KYCItemTearOff();

  _KYCItem call(
      {required String fullName,
      required String id,
      required String downloadUrl,
      required Map<String, dynamic> documents,
      required DateTime submitted,
      required String status}) {
    return _KYCItem(
      fullName: fullName,
      id: id,
      downloadUrl: downloadUrl,
      documents: documents,
      submitted: submitted,
      status: status,
    );
  }
}

/// @nodoc
const $KYCItem = _$KYCItemTearOff();

/// @nodoc
mixin _$KYCItem {
  String get fullName => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get downloadUrl => throw _privateConstructorUsedError;
  Map<String, dynamic> get documents => throw _privateConstructorUsedError;
  DateTime get submitted => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

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
      String downloadUrl,
      Map<String, dynamic> documents,
      DateTime submitted,
      String status});
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
    Object? downloadUrl = freezed,
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
      downloadUrl: downloadUrl == freezed
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      documents: documents == freezed
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
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
abstract class _$KYCItemCopyWith<$Res> implements $KYCItemCopyWith<$Res> {
  factory _$KYCItemCopyWith(_KYCItem value, $Res Function(_KYCItem) then) =
      __$KYCItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String fullName,
      String id,
      String downloadUrl,
      Map<String, dynamic> documents,
      DateTime submitted,
      String status});
}

/// @nodoc
class __$KYCItemCopyWithImpl<$Res> extends _$KYCItemCopyWithImpl<$Res>
    implements _$KYCItemCopyWith<$Res> {
  __$KYCItemCopyWithImpl(_KYCItem _value, $Res Function(_KYCItem) _then)
      : super(_value, (v) => _then(v as _KYCItem));

  @override
  _KYCItem get _value => super._value as _KYCItem;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? id = freezed,
    Object? downloadUrl = freezed,
    Object? documents = freezed,
    Object? submitted = freezed,
    Object? status = freezed,
  }) {
    return _then(_KYCItem(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      downloadUrl: downloadUrl == freezed
          ? _value.downloadUrl
          : downloadUrl // ignore: cast_nullable_to_non_nullable
              as String,
      documents: documents == freezed
          ? _value.documents
          : documents // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
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

class _$_KYCItem extends _KYCItem {
  const _$_KYCItem(
      {required this.fullName,
      required this.id,
      required this.downloadUrl,
      required this.documents,
      required this.submitted,
      required this.status})
      : super._();

  @override
  final String fullName;
  @override
  final String id;
  @override
  final String downloadUrl;
  @override
  final Map<String, dynamic> documents;
  @override
  final DateTime submitted;
  @override
  final String status;

  @override
  String toString() {
    return 'KYCItem(fullName: $fullName, id: $id, downloadUrl: $downloadUrl, documents: $documents, submitted: $submitted, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KYCItem &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.downloadUrl, downloadUrl) &&
            const DeepCollectionEquality().equals(other.documents, documents) &&
            const DeepCollectionEquality().equals(other.submitted, submitted) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(downloadUrl),
      const DeepCollectionEquality().hash(documents),
      const DeepCollectionEquality().hash(submitted),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$KYCItemCopyWith<_KYCItem> get copyWith =>
      __$KYCItemCopyWithImpl<_KYCItem>(this, _$identity);
}

abstract class _KYCItem extends KYCItem {
  const factory _KYCItem(
      {required String fullName,
      required String id,
      required String downloadUrl,
      required Map<String, dynamic> documents,
      required DateTime submitted,
      required String status}) = _$_KYCItem;
  const _KYCItem._() : super._();

  @override
  String get fullName;
  @override
  String get id;
  @override
  String get downloadUrl;
  @override
  Map<String, dynamic> get documents;
  @override
  DateTime get submitted;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$KYCItemCopyWith<_KYCItem> get copyWith =>
      throw _privateConstructorUsedError;
}
