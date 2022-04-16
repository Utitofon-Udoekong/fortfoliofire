// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationItemTearOff {
  const _$NotificationItemTearOff();

  _NotificationItem call(
      {required String id,
      required String type,
      required String title,
      required DateTime createdat,
      required String status}) {
    return _NotificationItem(
      id: id,
      type: type,
      title: title,
      createdat: createdat,
      status: status,
    );
  }
}

/// @nodoc
const $NotificationItem = _$NotificationItemTearOff();

/// @nodoc
mixin _$NotificationItem {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get createdat => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationItemCopyWith<NotificationItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationItemCopyWith<$Res> {
  factory $NotificationItemCopyWith(
          NotificationItem value, $Res Function(NotificationItem) then) =
      _$NotificationItemCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String type,
      String title,
      DateTime createdat,
      String status});
}

/// @nodoc
class _$NotificationItemCopyWithImpl<$Res>
    implements $NotificationItemCopyWith<$Res> {
  _$NotificationItemCopyWithImpl(this._value, this._then);

  final NotificationItem _value;
  // ignore: unused_field
  final $Res Function(NotificationItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? createdat = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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
abstract class _$NotificationItemCopyWith<$Res>
    implements $NotificationItemCopyWith<$Res> {
  factory _$NotificationItemCopyWith(
          _NotificationItem value, $Res Function(_NotificationItem) then) =
      __$NotificationItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String type,
      String title,
      DateTime createdat,
      String status});
}

/// @nodoc
class __$NotificationItemCopyWithImpl<$Res>
    extends _$NotificationItemCopyWithImpl<$Res>
    implements _$NotificationItemCopyWith<$Res> {
  __$NotificationItemCopyWithImpl(
      _NotificationItem _value, $Res Function(_NotificationItem) _then)
      : super(_value, (v) => _then(v as _NotificationItem));

  @override
  _NotificationItem get _value => super._value as _NotificationItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? createdat = freezed,
    Object? status = freezed,
  }) {
    return _then(_NotificationItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
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

class _$_NotificationItem extends _NotificationItem {
  const _$_NotificationItem(
      {required this.id,
      required this.type,
      required this.title,
      required this.createdat,
      required this.status})
      : super._();

  @override
  final String id;
  @override
  final String type;
  @override
  final String title;
  @override
  final DateTime createdat;
  @override
  final String status;

  @override
  String toString() {
    return 'NotificationItem(id: $id, type: $type, title: $title, createdat: $createdat, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.createdat, createdat) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(createdat),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$NotificationItemCopyWith<_NotificationItem> get copyWith =>
      __$NotificationItemCopyWithImpl<_NotificationItem>(this, _$identity);
}

abstract class _NotificationItem extends NotificationItem {
  const factory _NotificationItem(
      {required String id,
      required String type,
      required String title,
      required DateTime createdat,
      required String status}) = _$_NotificationItem;
  const _NotificationItem._() : super._();

  @override
  String get id;
  @override
  String get type;
  @override
  String get title;
  @override
  DateTime get createdat;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$NotificationItemCopyWith<_NotificationItem> get copyWith =>
      throw _privateConstructorUsedError;
}
