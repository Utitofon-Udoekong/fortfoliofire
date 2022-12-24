// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsModelDTO _$NewsModelDTOFromJson(Map<String, dynamic> json) {
  return _NewsModelDTO.fromJson(json);
}

/// @nodoc
mixin _$NewsModelDTO {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get imageRef => throw _privateConstructorUsedError;
  String? get redirectLink => throw _privateConstructorUsedError;
  String get createdat => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  String get fullPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsModelDTOCopyWith<NewsModelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsModelDTOCopyWith<$Res> {
  factory $NewsModelDTOCopyWith(
          NewsModelDTO value, $Res Function(NewsModelDTO) then) =
      _$NewsModelDTOCopyWithImpl<$Res, NewsModelDTO>;
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
class _$NewsModelDTOCopyWithImpl<$Res, $Val extends NewsModelDTO>
    implements $NewsModelDTOCopyWith<$Res> {
  _$NewsModelDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$_NewsModelDTOCopyWith<$Res>
    implements $NewsModelDTOCopyWith<$Res> {
  factory _$$_NewsModelDTOCopyWith(
          _$_NewsModelDTO value, $Res Function(_$_NewsModelDTO) then) =
      __$$_NewsModelDTOCopyWithImpl<$Res>;
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
class __$$_NewsModelDTOCopyWithImpl<$Res>
    extends _$NewsModelDTOCopyWithImpl<$Res, _$_NewsModelDTO>
    implements _$$_NewsModelDTOCopyWith<$Res> {
  __$$_NewsModelDTOCopyWithImpl(
      _$_NewsModelDTO _value, $Res Function(_$_NewsModelDTO) _then)
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
    return _then(_$_NewsModelDTO(
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
@JsonSerializable()
class _$_NewsModelDTO extends _NewsModelDTO {
  const _$_NewsModelDTO(
      {required this.name,
      required this.url,
      required this.imageRef,
      required this.redirectLink,
      required this.createdat,
      required this.size,
      required this.fullPath})
      : super._();

  factory _$_NewsModelDTO.fromJson(Map<String, dynamic> json) =>
      _$$_NewsModelDTOFromJson(json);

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
    return 'NewsModelDTO(name: $name, url: $url, imageRef: $imageRef, redirectLink: $redirectLink, createdat: $createdat, size: $size, fullPath: $fullPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsModelDTO &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url, imageRef,
      redirectLink, createdat, size, fullPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsModelDTOCopyWith<_$_NewsModelDTO> get copyWith =>
      __$$_NewsModelDTOCopyWithImpl<_$_NewsModelDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsModelDTOToJson(
      this,
    );
  }
}

abstract class _NewsModelDTO extends NewsModelDTO {
  const factory _NewsModelDTO(
      {required final String name,
      required final String url,
      required final String imageRef,
      required final String? redirectLink,
      required final String createdat,
      required final int size,
      required final String fullPath}) = _$_NewsModelDTO;
  const _NewsModelDTO._() : super._();

  factory _NewsModelDTO.fromJson(Map<String, dynamic> json) =
      _$_NewsModelDTO.fromJson;

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
  _$$_NewsModelDTOCopyWith<_$_NewsModelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
