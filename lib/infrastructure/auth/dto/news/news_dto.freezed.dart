// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  String get description => throw _privateConstructorUsedError;
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
      _$NewsModelDTOCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String description,
      String url,
      String imageRef,
      String? redirectLink,
      String createdat,
      int size,
      String fullPath});
}

/// @nodoc
class _$NewsModelDTOCopyWithImpl<$Res> implements $NewsModelDTOCopyWith<$Res> {
  _$NewsModelDTOCopyWithImpl(this._value, this._then);

  final NewsModelDTO _value;
  // ignore: unused_field
  final $Res Function(NewsModelDTO) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? imageRef = freezed,
    Object? redirectLink = freezed,
    Object? createdat = freezed,
    Object? size = freezed,
    Object? fullPath = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      imageRef: imageRef == freezed
          ? _value.imageRef
          : imageRef // ignore: cast_nullable_to_non_nullable
              as String,
      redirectLink: redirectLink == freezed
          ? _value.redirectLink
          : redirectLink // ignore: cast_nullable_to_non_nullable
              as String?,
      createdat: createdat == freezed
          ? _value.createdat
          : createdat // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      fullPath: fullPath == freezed
          ? _value.fullPath
          : fullPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_NewsModelDTOCopyWith<$Res>
    implements $NewsModelDTOCopyWith<$Res> {
  factory _$$_NewsModelDTOCopyWith(
          _$_NewsModelDTO value, $Res Function(_$_NewsModelDTO) then) =
      __$$_NewsModelDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String description,
      String url,
      String imageRef,
      String? redirectLink,
      String createdat,
      int size,
      String fullPath});
}

/// @nodoc
class __$$_NewsModelDTOCopyWithImpl<$Res>
    extends _$NewsModelDTOCopyWithImpl<$Res>
    implements _$$_NewsModelDTOCopyWith<$Res> {
  __$$_NewsModelDTOCopyWithImpl(
      _$_NewsModelDTO _value, $Res Function(_$_NewsModelDTO) _then)
      : super(_value, (v) => _then(v as _$_NewsModelDTO));

  @override
  _$_NewsModelDTO get _value => super._value as _$_NewsModelDTO;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? imageRef = freezed,
    Object? redirectLink = freezed,
    Object? createdat = freezed,
    Object? size = freezed,
    Object? fullPath = freezed,
  }) {
    return _then(_$_NewsModelDTO(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      imageRef: imageRef == freezed
          ? _value.imageRef
          : imageRef // ignore: cast_nullable_to_non_nullable
              as String,
      redirectLink: redirectLink == freezed
          ? _value.redirectLink
          : redirectLink // ignore: cast_nullable_to_non_nullable
              as String?,
      createdat: createdat == freezed
          ? _value.createdat
          : createdat // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      fullPath: fullPath == freezed
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
      required this.description,
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
  final String description;
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
    return 'NewsModelDTO(name: $name, description: $description, url: $url, imageRef: $imageRef, redirectLink: $redirectLink, createdat: $createdat, size: $size, fullPath: $fullPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsModelDTO &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.imageRef, imageRef) &&
            const DeepCollectionEquality()
                .equals(other.redirectLink, redirectLink) &&
            const DeepCollectionEquality().equals(other.createdat, createdat) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other.fullPath, fullPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(imageRef),
      const DeepCollectionEquality().hash(redirectLink),
      const DeepCollectionEquality().hash(createdat),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(fullPath));

  @JsonKey(ignore: true)
  @override
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
      required final String description,
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
  String get description;
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
