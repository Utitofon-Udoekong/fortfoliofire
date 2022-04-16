// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationItemDTO _$NotificationItemDTOFromJson(Map<String, dynamic> json) {
  return _NotificationItemDTO.fromJson(json);
}

/// @nodoc
class _$NotificationItemDTOTearOff {
  const _$NotificationItemDTOTearOff();

  _NotificationItemDTO call(
      {required String type,
      required String id,
      required String title,
      required DateTime createdat,
      required String status}) {
    return _NotificationItemDTO(
      type: type,
      id: id,
      title: title,
      createdat: createdat,
      status: status,
    );
  }

  NotificationItemDTO fromJson(Map<String, Object?> json) {
    return NotificationItemDTO.fromJson(json);
  }
}

/// @nodoc
const $NotificationItemDTO = _$NotificationItemDTOTearOff();

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
      _$NotificationItemDTOCopyWithImpl<$Res>;
  $Res call(
      {String type,
      String id,
      String title,
      DateTime createdat,
      String status});
}

/// @nodoc
class _$NotificationItemDTOCopyWithImpl<$Res>
    implements $NotificationItemDTOCopyWith<$Res> {
  _$NotificationItemDTOCopyWithImpl(this._value, this._then);

  final NotificationItemDTO _value;
  // ignore: unused_field
  final $Res Function(NotificationItemDTO) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? createdat = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdat: createdat == freezed
          ? _value.createdat
          : createdat // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NotificationItemDTOCopyWith<$Res>
    implements $NotificationItemDTOCopyWith<$Res> {
  factory _$NotificationItemDTOCopyWith(_NotificationItemDTO value,
          $Res Function(_NotificationItemDTO) then) =
      __$NotificationItemDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String type,
      String id,
      String title,
      DateTime createdat,
      String status});
}

/// @nodoc
class __$NotificationItemDTOCopyWithImpl<$Res>
    extends _$NotificationItemDTOCopyWithImpl<$Res>
    implements _$NotificationItemDTOCopyWith<$Res> {
  __$NotificationItemDTOCopyWithImpl(
      _NotificationItemDTO _value, $Res Function(_NotificationItemDTO) _then)
      : super(_value, (v) => _then(v as _NotificationItemDTO));

  @override
  _NotificationItemDTO get _value => super._value as _NotificationItemDTO;

  @override
  $Res call({
    Object? type = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? createdat = freezed,
    Object? status = freezed,
  }) {
    return _then(_NotificationItemDTO(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdat: createdat == freezed
          ? _value.createdat
          : createdat // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: status == freezed
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
            other is _NotificationItemDTO &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.createdat, createdat) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(createdat),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$NotificationItemDTOCopyWith<_NotificationItemDTO> get copyWith =>
      __$NotificationItemDTOCopyWithImpl<_NotificationItemDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationItemDTOToJson(this);
  }
}

abstract class _NotificationItemDTO extends NotificationItemDTO {
  const factory _NotificationItemDTO(
      {required String type,
      required String id,
      required String title,
      required DateTime createdat,
      required String status}) = _$_NotificationItemDTO;
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
  _$NotificationItemDTOCopyWith<_NotificationItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
