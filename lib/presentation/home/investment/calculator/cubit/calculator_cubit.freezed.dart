// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calculator_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalculatorState {
  int get investmentAmount => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  int get returnRate => throw _privateConstructorUsedError;
  double get totalReturns => throw _privateConstructorUsedError;
  String get selectedPlan => throw _privateConstructorUsedError;
  List<DropdownMenuItem<String>> get dropdownItems =>
      throw _privateConstructorUsedError;
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
      _$CalculatorStateCopyWithImpl<$Res>;
  $Res call(
      {int investmentAmount,
      int duration,
      int returnRate,
      double totalReturns,
      String selectedPlan,
      List<DropdownMenuItem<String>> dropdownItems,
      List<DropdownMenuItem<int>> durations});
}

/// @nodoc
class _$CalculatorStateCopyWithImpl<$Res>
    implements $CalculatorStateCopyWith<$Res> {
  _$CalculatorStateCopyWithImpl(this._value, this._then);

  final CalculatorState _value;
  // ignore: unused_field
  final $Res Function(CalculatorState) _then;

  @override
  $Res call({
    Object? investmentAmount = freezed,
    Object? duration = freezed,
    Object? returnRate = freezed,
    Object? totalReturns = freezed,
    Object? selectedPlan = freezed,
    Object? dropdownItems = freezed,
    Object? durations = freezed,
  }) {
    return _then(_value.copyWith(
      investmentAmount: investmentAmount == freezed
          ? _value.investmentAmount
          : investmentAmount // ignore: cast_nullable_to_non_nullable
              as int,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      returnRate: returnRate == freezed
          ? _value.returnRate
          : returnRate // ignore: cast_nullable_to_non_nullable
              as int,
      totalReturns: totalReturns == freezed
          ? _value.totalReturns
          : totalReturns // ignore: cast_nullable_to_non_nullable
              as double,
      selectedPlan: selectedPlan == freezed
          ? _value.selectedPlan
          : selectedPlan // ignore: cast_nullable_to_non_nullable
              as String,
      dropdownItems: dropdownItems == freezed
          ? _value.dropdownItems
          : dropdownItems // ignore: cast_nullable_to_non_nullable
              as List<DropdownMenuItem<String>>,
      durations: durations == freezed
          ? _value.durations
          : durations // ignore: cast_nullable_to_non_nullable
              as List<DropdownMenuItem<int>>,
    ));
  }
}

/// @nodoc
abstract class _$$_CalculatorStateCopyWith<$Res>
    implements $CalculatorStateCopyWith<$Res> {
  factory _$$_CalculatorStateCopyWith(
          _$_CalculatorState value, $Res Function(_$_CalculatorState) then) =
      __$$_CalculatorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int investmentAmount,
      int duration,
      int returnRate,
      double totalReturns,
      String selectedPlan,
      List<DropdownMenuItem<String>> dropdownItems,
      List<DropdownMenuItem<int>> durations});
}

/// @nodoc
class __$$_CalculatorStateCopyWithImpl<$Res>
    extends _$CalculatorStateCopyWithImpl<$Res>
    implements _$$_CalculatorStateCopyWith<$Res> {
  __$$_CalculatorStateCopyWithImpl(
      _$_CalculatorState _value, $Res Function(_$_CalculatorState) _then)
      : super(_value, (v) => _then(v as _$_CalculatorState));

  @override
  _$_CalculatorState get _value => super._value as _$_CalculatorState;

  @override
  $Res call({
    Object? investmentAmount = freezed,
    Object? duration = freezed,
    Object? returnRate = freezed,
    Object? totalReturns = freezed,
    Object? selectedPlan = freezed,
    Object? dropdownItems = freezed,
    Object? durations = freezed,
  }) {
    return _then(_$_CalculatorState(
      investmentAmount: investmentAmount == freezed
          ? _value.investmentAmount
          : investmentAmount // ignore: cast_nullable_to_non_nullable
              as int,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      returnRate: returnRate == freezed
          ? _value.returnRate
          : returnRate // ignore: cast_nullable_to_non_nullable
              as int,
      totalReturns: totalReturns == freezed
          ? _value.totalReturns
          : totalReturns // ignore: cast_nullable_to_non_nullable
              as double,
      selectedPlan: selectedPlan == freezed
          ? _value.selectedPlan
          : selectedPlan // ignore: cast_nullable_to_non_nullable
              as String,
      dropdownItems: dropdownItems == freezed
          ? _value._dropdownItems
          : dropdownItems // ignore: cast_nullable_to_non_nullable
              as List<DropdownMenuItem<String>>,
      durations: durations == freezed
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
      required final List<DropdownMenuItem<String>> dropdownItems,
      required final List<DropdownMenuItem<int>> durations})
      : _dropdownItems = dropdownItems,
        _durations = durations,
        super._();

  @override
  final int investmentAmount;
  @override
  final int duration;
  @override
  final int returnRate;
  @override
  final double totalReturns;
  @override
  final String selectedPlan;
  final List<DropdownMenuItem<String>> _dropdownItems;
  @override
  List<DropdownMenuItem<String>> get dropdownItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dropdownItems);
  }

  final List<DropdownMenuItem<int>> _durations;
  @override
  List<DropdownMenuItem<int>> get durations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_durations);
  }

  @override
  String toString() {
    return 'CalculatorState(investmentAmount: $investmentAmount, duration: $duration, returnRate: $returnRate, totalReturns: $totalReturns, selectedPlan: $selectedPlan, dropdownItems: $dropdownItems, durations: $durations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalculatorState &&
            const DeepCollectionEquality()
                .equals(other.investmentAmount, investmentAmount) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality()
                .equals(other.returnRate, returnRate) &&
            const DeepCollectionEquality()
                .equals(other.totalReturns, totalReturns) &&
            const DeepCollectionEquality()
                .equals(other.selectedPlan, selectedPlan) &&
            const DeepCollectionEquality()
                .equals(other._dropdownItems, _dropdownItems) &&
            const DeepCollectionEquality()
                .equals(other._durations, _durations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(investmentAmount),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(returnRate),
      const DeepCollectionEquality().hash(totalReturns),
      const DeepCollectionEquality().hash(selectedPlan),
      const DeepCollectionEquality().hash(_dropdownItems),
      const DeepCollectionEquality().hash(_durations));

  @JsonKey(ignore: true)
  @override
  _$$_CalculatorStateCopyWith<_$_CalculatorState> get copyWith =>
      __$$_CalculatorStateCopyWithImpl<_$_CalculatorState>(this, _$identity);
}

abstract class _CalculatorState extends CalculatorState {
  const factory _CalculatorState(
          {required final int investmentAmount,
          required final int duration,
          required final int returnRate,
          required final double totalReturns,
          required final String selectedPlan,
          required final List<DropdownMenuItem<String>> dropdownItems,
          required final List<DropdownMenuItem<int>> durations}) =
      _$_CalculatorState;
  const _CalculatorState._() : super._();

  @override
  int get investmentAmount => throw _privateConstructorUsedError;
  @override
  int get duration => throw _privateConstructorUsedError;
  @override
  int get returnRate => throw _privateConstructorUsedError;
  @override
  double get totalReturns => throw _privateConstructorUsedError;
  @override
  String get selectedPlan => throw _privateConstructorUsedError;
  @override
  List<DropdownMenuItem<String>> get dropdownItems =>
      throw _privateConstructorUsedError;
  @override
  List<DropdownMenuItem<int>> get durations =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CalculatorStateCopyWith<_$_CalculatorState> get copyWith =>
      throw _privateConstructorUsedError;
}
