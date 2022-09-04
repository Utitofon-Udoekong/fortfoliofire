// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationState {
  List<NotificationItem> get notifications =>
      throw _privateConstructorUsedError;
  List<NotificationItem> get selectedNotifications =>
      throw _privateConstructorUsedError;
  int get notificationCount => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get createdat => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res>;
  $Res call(
      {List<NotificationItem> notifications,
      List<NotificationItem> selectedNotifications,
      int notificationCount,
      bool loading,
      String type,
      String title,
      DateTime createdat,
      String id,
      String status});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  final NotificationState _value;
  // ignore: unused_field
  final $Res Function(NotificationState) _then;

  @override
  $Res call({
    Object? notifications = freezed,
    Object? selectedNotifications = freezed,
    Object? notificationCount = freezed,
    Object? loading = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? createdat = freezed,
    Object? id = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationItem>,
      selectedNotifications: selectedNotifications == freezed
          ? _value.selectedNotifications
          : selectedNotifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationItem>,
      notificationCount: notificationCount == freezed
          ? _value.notificationCount
          : notificationCount // ignore: cast_nullable_to_non_nullable
              as int,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_NotificationStateCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$_NotificationStateCopyWith(_$_NotificationState value,
          $Res Function(_$_NotificationState) then) =
      __$$_NotificationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<NotificationItem> notifications,
      List<NotificationItem> selectedNotifications,
      int notificationCount,
      bool loading,
      String type,
      String title,
      DateTime createdat,
      String id,
      String status});
}

/// @nodoc
class __$$_NotificationStateCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res>
    implements _$$_NotificationStateCopyWith<$Res> {
  __$$_NotificationStateCopyWithImpl(
      _$_NotificationState _value, $Res Function(_$_NotificationState) _then)
      : super(_value, (v) => _then(v as _$_NotificationState));

  @override
  _$_NotificationState get _value => super._value as _$_NotificationState;

  @override
  $Res call({
    Object? notifications = freezed,
    Object? selectedNotifications = freezed,
    Object? notificationCount = freezed,
    Object? loading = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? createdat = freezed,
    Object? id = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_NotificationState(
      notifications: notifications == freezed
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationItem>,
      selectedNotifications: selectedNotifications == freezed
          ? _value._selectedNotifications
          : selectedNotifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationItem>,
      notificationCount: notificationCount == freezed
          ? _value.notificationCount
          : notificationCount // ignore: cast_nullable_to_non_nullable
              as int,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NotificationState extends _NotificationState {
  const _$_NotificationState(
      {required final List<NotificationItem> notifications,
      required final List<NotificationItem> selectedNotifications,
      required this.notificationCount,
      required this.loading,
      required this.type,
      required this.title,
      required this.createdat,
      required this.id,
      required this.status})
      : _notifications = notifications,
        _selectedNotifications = selectedNotifications,
        super._();

  final List<NotificationItem> _notifications;
  @override
  List<NotificationItem> get notifications {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  final List<NotificationItem> _selectedNotifications;
  @override
  List<NotificationItem> get selectedNotifications {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedNotifications);
  }

  @override
  final int notificationCount;
  @override
  final bool loading;
  @override
  final String type;
  @override
  final String title;
  @override
  final DateTime createdat;
  @override
  final String id;
  @override
  final String status;

  @override
  String toString() {
    return 'NotificationState(notifications: $notifications, selectedNotifications: $selectedNotifications, notificationCount: $notificationCount, loading: $loading, type: $type, title: $title, createdat: $createdat, id: $id, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationState &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            const DeepCollectionEquality()
                .equals(other._selectedNotifications, _selectedNotifications) &&
            const DeepCollectionEquality()
                .equals(other.notificationCount, notificationCount) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.createdat, createdat) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_notifications),
      const DeepCollectionEquality().hash(_selectedNotifications),
      const DeepCollectionEquality().hash(notificationCount),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(createdat),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_NotificationStateCopyWith<_$_NotificationState> get copyWith =>
      __$$_NotificationStateCopyWithImpl<_$_NotificationState>(
          this, _$identity);
}

abstract class _NotificationState extends NotificationState {
  const factory _NotificationState(
      {required final List<NotificationItem> notifications,
      required final List<NotificationItem> selectedNotifications,
      required final int notificationCount,
      required final bool loading,
      required final String type,
      required final String title,
      required final DateTime createdat,
      required final String id,
      required final String status}) = _$_NotificationState;
  const _NotificationState._() : super._();

  @override
  List<NotificationItem> get notifications;
  @override
  List<NotificationItem> get selectedNotifications;
  @override
  int get notificationCount;
  @override
  bool get loading;
  @override
  String get type;
  @override
  String get title;
  @override
  DateTime get createdat;
  @override
  String get id;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationStateCopyWith<_$_NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
