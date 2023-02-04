// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculator_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalculatorState {
  double get investmentAmount => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  int get returnRate => throw _privateConstructorUsedError;
  double get totalReturns => throw _privateConstructorUsedError;
  String get selectedPlan => throw _privateConstructorUsedError;
  String get exchange => throw _privateConstructorUsedError;
  List<DropdownMenuItem<int>> get durations =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalculatorStateCopyWith<CalculatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalculatorStateCopyWith<$Res> {
  factory $CalculatorStateCopyWith(
          CalculatorState value, $Res Function(CalculatorState) then) =
      _$CalculatorStateCopyWithImpl<$Res, CalculatorState>;
  @useResult
  $Res call(
      {double investmentAmount,
      int duration,
      int returnRate,
      double totalReturns,
      String selectedPlan,
      String exchange,
      List<DropdownMenuItem<int>> durations});
}

/// @nodoc
class _$CalculatorStateCopyWithImpl<$Res, $Val extends CalculatorState>
    implements $CalculatorStateCopyWith<$Res> {
  _$CalculatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? investmentAmount = null,
    Object? duration = null,
    Object? returnRate = null,
    Object? totalReturns = null,
    Object? selectedPlan = null,
    Object? exchange = null,
    Object? durations = null,
  }) {
    return _then(_value.copyWith(
      investmentAmount: null == investmentAmount
          ? _value.investmentAmount
          : investmentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      returnRate: null == returnRate
          ? _value.returnRate
          : returnRate // ignore: cast_nullable_to_non_nullable
              as int,
      totalReturns: null == totalReturns
          ? _value.totalReturns
          : totalReturns // ignore: cast_nullable_to_non_nullable
              as double,
      selectedPlan: null == selectedPlan
          ? _value.selectedPlan
          : selectedPlan // ignore: cast_nullable_to_non_nullable
              as String,
      exchange: null == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
      durations: null == durations
          ? _value.durations
          : durations // ignore: cast_nullable_to_non_nullable
              as List<DropdownMenuItem<int>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CalculatorStateCopyWith<$Res>
    implements $CalculatorStateCopyWith<$Res> {
  factory _$$_CalculatorStateCopyWith(
          _$_CalculatorState value, $Res Function(_$_CalculatorState) then) =
      __$$_CalculatorStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double investmentAmount,
      int duration,
      int returnRate,
      double totalReturns,
      String selectedPlan,
      String exchange,
      List<DropdownMenuItem<int>> durations});
}

/// @nodoc
class __$$_CalculatorStateCopyWithImpl<$Res>
    extends _$CalculatorStateCopyWithImpl<$Res, _$_CalculatorState>
    implements _$$_CalculatorStateCopyWith<$Res> {
  __$$_CalculatorStateCopyWithImpl(
      _$_CalculatorState _value, $Res Function(_$_CalculatorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? investmentAmount = null,
    Object? duration = null,
    Object? returnRate = null,
    Object? totalReturns = null,
    Object? selectedPlan = null,
    Object? exchange = null,
    Object? durations = null,
  }) {
    return _then(_$_CalculatorState(
      investmentAmount: null == investmentAmount
          ? _value.investmentAmount
          : investmentAmount // ignore: cast_nullable_to_non_nullable
              as double,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      returnRate: null == returnRate
          ? _value.returnRate
          : returnRate // ignore: cast_nullable_to_non_nullable
              as int,
      totalReturns: null == totalReturns
          ? _value.totalReturns
          : totalReturns // ignore: cast_nullable_to_non_nullable
              as double,
      selectedPlan: null == selectedPlan
          ? _value.selectedPlan
          : selectedPlan // ignore: cast_nullable_to_non_nullable
              as String,
      exchange: null == exchange
          ? _value.exchange
          : exchange // ignore: cast_nullable_to_non_nullable
              as String,
      durations: null == durations
          ? _value._durations
          : durations // ignore: cast_nullable_to_non_nullable
              as List<DropdownMenuItem<int>>,
    ));
  }
}

/// @nodoc

class _$_CalculatorState extends _CalculatorState {
  const _$_CalculatorState(
      {required this.investmentAmount,
      required this.duration,
      required this.returnRate,
      required this.totalReturns,
      required this.selectedPlan,
      required this.exchange,
      required final List<DropdownMenuItem<int>> durations})
      : _durations = durations,
        super._();

  @override
  final double investmentAmount;
  @override
  final int duration;
  @override
  final int returnRate;
  @override
  final double totalReturns;
  @override
  final String selectedPlan;
  @override
  final String exchange;
  final List<DropdownMenuItem<int>> _durations;
  @override
  List<DropdownMenuItem<int>> get durations {
    if (_durations is EqualUnmodifiableListView) return _durations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_durations);
  }

  @override
  String toString() {
    return 'CalculatorState(investmentAmount: $investmentAmount, duration: $duration, returnRate: $returnRate, totalReturns: $totalReturns, selectedPlan: $selectedPlan, exchange: $exchange, durations: $durations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalculatorState &&
            (identical(other.investmentAmount, investmentAmount) ||
                other.investmentAmount == investmentAmount) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.returnRate, returnRate) ||
                other.returnRate == returnRate) &&
            (identical(other.totalReturns, totalReturns) ||
                other.totalReturns == totalReturns) &&
            (identical(other.selectedPlan, selectedPlan) ||
                other.selectedPlan == selectedPlan) &&
            (identical(other.exchange, exchange) ||
                other.exchange == exchange) &&
            const DeepCollectionEquality()
                .equals(other._durations, _durations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      investmentAmount,
      duration,
      returnRate,
      totalReturns,
      selectedPlan,
      exchange,
      const DeepCollectionEquality().hash(_durations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CalculatorStateCopyWith<_$_CalculatorState> get copyWith =>
      __$$_CalculatorStateCopyWithImpl<_$_CalculatorState>(this, _$identity);
}

abstract class _CalculatorState extends CalculatorState {
  const factory _CalculatorState(
          {required final double investmentAmount,
          required final int duration,
          required final int returnRate,
          required final double totalReturns,
          required final String selectedPlan,
          required final String exchange,
          required final List<DropdownMenuItem<int>> durations}) =
      _$_CalculatorState;
  const _CalculatorState._() : super._();

  @override
  double get investmentAmount;
  @override
  int get duration;
  @override
  int get returnRate;
  @override
  double get totalReturns;
  @override
  String get selectedPlan;
  @override
  String get exchange;
  @override
  List<DropdownMenuItem<int>> get durations;
  @override
  @JsonKey(ignore: true)
  _$$_CalculatorStateCopyWith<_$_CalculatorState> get copyWith =>
      throw _privateConstructorUsedError;
}
