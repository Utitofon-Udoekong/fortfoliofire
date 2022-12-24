// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsModel {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get imageRef => throw _privateConstructorUsedError;
  String? get redirectLink => throw _privateConstructorUsedError;
  String get createdat => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String get fullPath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsModelCopyWith<NewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsModelCopyWith<$Res> {
  factory $NewsModelCopyWith(NewsModel value, $Res Function(NewsModel) then) =
      _$NewsModelCopyWithImpl<$Res, NewsModel>;
  @useResult
  $Res call(
      {String name,
      String url,
      String imageRef,
      String? redirectLink,
      String createdat,
      int size,
      String fullPath});
}

/// @nodoc
class _$NewsModelCopyWithImpl<$Res, $Val extends NewsModel>
    implements $NewsModelCopyWith<$Res> {
  _$NewsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
    Object? imageRef = null,
    Object? redirectLink = freezed,
    Object? createdat = null,
    Object? size = null,
    Object? fullPath = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      imageRef: null == imageRef
          ? _value.imageRef
          : imageRef // ignore: cast_nullable_to_non_nullable
              as String,
      redirectLink: freezed == redirectLink
          ? _value.redirectLink
          : redirectLink // ignore: cast_nullable_to_non_nullable
              as String?,
      createdat: null == createdat
          ? _value.createdat
          : createdat // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      fullPath: null == fullPath
          ? _value.fullPath
          : fullPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsModelCopyWith<$Res> implements $NewsModelCopyWith<$Res> {
  factory _$$_NewsModelCopyWith(
          _$_NewsModel value, $Res Function(_$_NewsModel) then) =
      __$$_NewsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String url,
      String imageRef,
      String? redirectLink,
      String createdat,
      int size,
      String fullPath});
}

/// @nodoc
class __$$_NewsModelCopyWithImpl<$Res>
    extends _$NewsModelCopyWithImpl<$Res, _$_NewsModel>
    implements _$$_NewsModelCopyWith<$Res> {
  __$$_NewsModelCopyWithImpl(
      _$_NewsModel _value, $Res Function(_$_NewsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
    Object? imageRef = null,
    Object? redirectLink = freezed,
    Object? createdat = null,
    Object? size = null,
    Object? fullPath = null,
  }) {
    return _then(_$_NewsModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      imageRef: null == imageRef
          ? _value.imageRef
          : imageRef // ignore: cast_nullable_to_non_nullable
              as String,
      redirectLink: freezed == redirectLink
          ? _value.redirectLink
          : redirectLink // ignore: cast_nullable_to_non_nullable
              as String?,
      createdat: null == createdat
          ? _value.createdat
          : createdat // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      fullPath: null == fullPath
          ? _value.fullPath
          : fullPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NewsModel extends _NewsModel {
  const _$_NewsModel(
      {required this.name,
      required this.url,
      required this.imageRef,
      required this.redirectLink,
      required this.createdat,
      required this.size,
      required this.fullPath})
      : super._();

  @override
  final String name;
  @override
  final String url;
  @override
  final String imageRef;
  @override
  final String? redirectLink;
  @override
  final String createdat;
  @override
  final int size;
  @override
  final String fullPath;

  @override
  String toString() {
    return 'NewsModel(name: $name, url: $url, imageRef: $imageRef, redirectLink: $redirectLink, createdat: $createdat, size: $size, fullPath: $fullPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.imageRef, imageRef) ||
                other.imageRef == imageRef) &&
            (identical(other.redirectLink, redirectLink) ||
                other.redirectLink == redirectLink) &&
            (identical(other.createdat, createdat) ||
                other.createdat == createdat) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.fullPath, fullPath) ||
                other.fullPath == fullPath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, url, imageRef,
      redirectLink, createdat, size, fullPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsModelCopyWith<_$_NewsModel> get copyWith =>
      __$$_NewsModelCopyWithImpl<_$_NewsModel>(this, _$identity);
}

abstract class _NewsModel extends NewsModel {
  const factory _NewsModel(
      {required final String name,
      required final String url,
      required final String imageRef,
      required final String? redirectLink,
      required final String createdat,
      required final int size,
      required final String fullPath}) = _$_NewsModel;
  const _NewsModel._() : super._();

  @override
  String get name;
  @override
  String get url;
  @override
  String get imageRef;
  @override
  String? get redirectLink;
  @override
  String get createdat;
  @override
  int get size;
  @override
  String get fullPath;
  @override
  @JsonKey(ignore: true)
  _$$_NewsModelCopyWith<_$_NewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
