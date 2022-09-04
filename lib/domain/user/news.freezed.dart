// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  String get description => throw _privateConstructorUsedError;
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
      _$NewsModelCopyWithImpl<$Res>;
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
class _$NewsModelCopyWithImpl<$Res> implements $NewsModelCopyWith<$Res> {
  _$NewsModelCopyWithImpl(this._value, this._then);

  final NewsModel _value;
  // ignore: unused_field
  final $Res Function(NewsModel) _then;

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
abstract class _$$_NewsModelCopyWith<$Res> implements $NewsModelCopyWith<$Res> {
  factory _$$_NewsModelCopyWith(
          _$_NewsModel value, $Res Function(_$_NewsModel) then) =
      __$$_NewsModelCopyWithImpl<$Res>;
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
class __$$_NewsModelCopyWithImpl<$Res> extends _$NewsModelCopyWithImpl<$Res>
    implements _$$_NewsModelCopyWith<$Res> {
  __$$_NewsModelCopyWithImpl(
      _$_NewsModel _value, $Res Function(_$_NewsModel) _then)
      : super(_value, (v) => _then(v as _$_NewsModel));

  @override
  _$_NewsModel get _value => super._value as _$_NewsModel;

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
    return _then(_$_NewsModel(
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

class _$_NewsModel extends _NewsModel {
  const _$_NewsModel(
      {required this.name,
      required this.description,
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
    return 'NewsModel(name: $name, description: $description, url: $url, imageRef: $imageRef, redirectLink: $redirectLink, createdat: $createdat, size: $size, fullPath: $fullPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsModel &&
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
  _$$_NewsModelCopyWith<_$_NewsModel> get copyWith =>
      __$$_NewsModelCopyWithImpl<_$_NewsModel>(this, _$identity);
}

abstract class _NewsModel extends NewsModel {
  const factory _NewsModel(
      {required final String name,
      required final String description,
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
  _$$_NewsModelCopyWith<_$_NewsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
