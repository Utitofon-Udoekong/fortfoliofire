// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dashboard_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardState {
  List<NewsModel> get newsList => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  String get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DashboardStateCopyWith<DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res>;
  $Res call({List<NewsModel> newsList, bool loading, String failure});
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  final DashboardState _value;
  // ignore: unused_field
  final $Res Function(DashboardState) _then;

  @override
  $Res call({
    Object? newsList = freezed,
    Object? loading = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      newsList: newsList == freezed
          ? _value.newsList
          : newsList // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DashboardStateCopyWith<$Res>
    implements $DashboardStateCopyWith<$Res> {
  factory _$$_DashboardStateCopyWith(
          _$_DashboardState value, $Res Function(_$_DashboardState) then) =
      __$$_DashboardStateCopyWithImpl<$Res>;
  @override
  $Res call({List<NewsModel> newsList, bool loading, String failure});
}

/// @nodoc
class __$$_DashboardStateCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res>
    implements _$$_DashboardStateCopyWith<$Res> {
  __$$_DashboardStateCopyWithImpl(
      _$_DashboardState _value, $Res Function(_$_DashboardState) _then)
      : super(_value, (v) => _then(v as _$_DashboardState));

  @override
  _$_DashboardState get _value => super._value as _$_DashboardState;

  @override
  $Res call({
    Object? newsList = freezed,
    Object? loading = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_DashboardState(
      newsList: newsList == freezed
          ? _value._newsList
          : newsList // ignore: cast_nullable_to_non_nullable
              as List<NewsModel>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DashboardState implements _DashboardState {
  const _$_DashboardState(
      {required final List<NewsModel> newsList,
      required this.loading,
      required this.failure})
      : _newsList = newsList;

  final List<NewsModel> _newsList;
  @override
  List<NewsModel> get newsList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_newsList);
  }

  @override
  final bool loading;
  @override
  final String failure;

  @override
  String toString() {
    return 'DashboardState(newsList: $newsList, loading: $loading, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DashboardState &&
            const DeepCollectionEquality().equals(other._newsList, _newsList) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_newsList),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_DashboardStateCopyWith<_$_DashboardState> get copyWith =>
      __$$_DashboardStateCopyWithImpl<_$_DashboardState>(this, _$identity);
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState(
      {required final List<NewsModel> newsList,
      required final bool loading,
      required final String failure}) = _$_DashboardState;

  @override
  List<NewsModel> get newsList => throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  String get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DashboardStateCopyWith<_$_DashboardState> get copyWith =>
      throw _privateConstructorUsedError;
}
