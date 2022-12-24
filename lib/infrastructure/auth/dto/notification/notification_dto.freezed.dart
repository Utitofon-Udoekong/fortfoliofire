// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationItemDTO _$NotificationItemDTOFromJson(Map<String, dynamic> json) {
  return _NotificationItemDTO.fromJson(json);
}

/// @nodoc
mixin _$NotificationItemDTO {
  String get type => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get createdat => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationItemDTOCopyWith<NotificationItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationItemDTOCopyWith<$Res> {
  factory $NotificationItemDTOCopyWith(
          NotificationItemDTO value, $Res Function(NotificationItemDTO) then) =
      _$NotificationItemDTOCopyWithImpl<$Res, NotificationItemDTO>;
  @useResult
  $Res call(
      {String type,
      String id,
      String title,
      DateTime createdat,
      String status});
}

/// @nodoc
class _$NotificationItemDTOCopyWithImpl<$Res, $Val extends NotificationItemDTO>
    implements $NotificationItemDTOCopyWith<$Res> {
  _$NotificationItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? title = null,
    Object? createdat = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdat: null == createdat
          ? _value.createdat
          : createdat // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationItemDTOCopyWith<$Res>
    implements $NotificationItemDTOCopyWith<$Res> {
  factory _$$_NotificationItemDTOCopyWith(_$_NotificationItemDTO value,
          $Res Function(_$_NotificationItemDTO) then) =
      __$$_NotificationItemDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String id,
      String title,
      DateTime createdat,
      String status});
}

/// @nodoc
class __$$_NotificationItemDTOCopyWithImpl<$Res>
    extends _$NotificationItemDTOCopyWithImpl<$Res, _$_NotificationItemDTO>
    implements _$$_NotificationItemDTOCopyWith<$Res> {
  __$$_NotificationItemDTOCopyWithImpl(_$_NotificationItemDTO _value,
      $Res Function(_$_NotificationItemDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? title = null,
    Object? createdat = null,
    Object? status = null,
  }) {
    return _then(_$_NotificationItemDTO(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdat: null == createdat
          ? _value.createdat
          : createdat // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationItemDTO extends _NotificationItemDTO {
  const _$_NotificationItemDTO(
      {required this.type,
      required this.id,
      required this.title,
      required this.createdat,
      required this.status})
      : super._();

  factory _$_NotificationItemDTO.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationItemDTOFromJson(json);

  @override
  final String type;
  @override
  final String id;
  @override
  final String title;
  @override
  final DateTime createdat;
  @override
  final String status;

  @override
  String toString() {
    return 'NotificationItemDTO(type: $type, id: $id, title: $title, createdat: $createdat, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationItemDTO &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.createdat, createdat) ||
                other.createdat == createdat) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, id, title, createdat, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationItemDTOCopyWith<_$_NotificationItemDTO> get copyWith =>
      __$$_NotificationItemDTOCopyWithImpl<_$_NotificationItemDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationItemDTOToJson(
      this,
    );
  }
}

abstract class _NotificationItemDTO extends NotificationItemDTO {
  const factory _NotificationItemDTO(
      {required final String type,
      required final String id,
      required final String title,
      required final DateTime createdat,
      required final String status}) = _$_NotificationItemDTO;
  const _NotificationItemDTO._() : super._();

  factory _NotificationItemDTO.fromJson(Map<String, dynamic> json) =
      _$_NotificationItemDTO.fromJson;

  @override
  String get type;
  @override
  String get id;
  @override
  String get title;
  @override
  DateTime get createdat;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationItemDTOCopyWith<_$_NotificationItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
