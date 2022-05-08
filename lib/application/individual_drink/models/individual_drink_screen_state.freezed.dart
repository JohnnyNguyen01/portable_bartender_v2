// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'individual_drink_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IndividualDrinkScreenStateTearOff {
  const _$IndividualDrinkScreenStateTearOff();

  _IndividualDrinkScreenState call({DrinkRecipeModel? drink}) {
    return _IndividualDrinkScreenState(
      drink: drink,
    );
  }
}

/// @nodoc
const $IndividualDrinkScreenState = _$IndividualDrinkScreenStateTearOff();

/// @nodoc
mixin _$IndividualDrinkScreenState {
  DrinkRecipeModel? get drink => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IndividualDrinkScreenStateCopyWith<IndividualDrinkScreenState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IndividualDrinkScreenStateCopyWith<$Res> {
  factory $IndividualDrinkScreenStateCopyWith(IndividualDrinkScreenState value,
          $Res Function(IndividualDrinkScreenState) then) =
      _$IndividualDrinkScreenStateCopyWithImpl<$Res>;
  $Res call({DrinkRecipeModel? drink});
}

/// @nodoc
class _$IndividualDrinkScreenStateCopyWithImpl<$Res>
    implements $IndividualDrinkScreenStateCopyWith<$Res> {
  _$IndividualDrinkScreenStateCopyWithImpl(this._value, this._then);

  final IndividualDrinkScreenState _value;
  // ignore: unused_field
  final $Res Function(IndividualDrinkScreenState) _then;

  @override
  $Res call({
    Object? drink = freezed,
  }) {
    return _then(_value.copyWith(
      drink: drink == freezed
          ? _value.drink
          : drink // ignore: cast_nullable_to_non_nullable
              as DrinkRecipeModel?,
    ));
  }
}

/// @nodoc
abstract class _$IndividualDrinkScreenStateCopyWith<$Res>
    implements $IndividualDrinkScreenStateCopyWith<$Res> {
  factory _$IndividualDrinkScreenStateCopyWith(
          _IndividualDrinkScreenState value,
          $Res Function(_IndividualDrinkScreenState) then) =
      __$IndividualDrinkScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({DrinkRecipeModel? drink});
}

/// @nodoc
class __$IndividualDrinkScreenStateCopyWithImpl<$Res>
    extends _$IndividualDrinkScreenStateCopyWithImpl<$Res>
    implements _$IndividualDrinkScreenStateCopyWith<$Res> {
  __$IndividualDrinkScreenStateCopyWithImpl(_IndividualDrinkScreenState _value,
      $Res Function(_IndividualDrinkScreenState) _then)
      : super(_value, (v) => _then(v as _IndividualDrinkScreenState));

  @override
  _IndividualDrinkScreenState get _value =>
      super._value as _IndividualDrinkScreenState;

  @override
  $Res call({
    Object? drink = freezed,
  }) {
    return _then(_IndividualDrinkScreenState(
      drink: drink == freezed
          ? _value.drink
          : drink // ignore: cast_nullable_to_non_nullable
              as DrinkRecipeModel?,
    ));
  }
}

/// @nodoc

class _$_IndividualDrinkScreenState implements _IndividualDrinkScreenState {
  const _$_IndividualDrinkScreenState({this.drink});

  @override
  final DrinkRecipeModel? drink;

  @override
  String toString() {
    return 'IndividualDrinkScreenState(drink: $drink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IndividualDrinkScreenState &&
            const DeepCollectionEquality().equals(other.drink, drink));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(drink));

  @JsonKey(ignore: true)
  @override
  _$IndividualDrinkScreenStateCopyWith<_IndividualDrinkScreenState>
      get copyWith => __$IndividualDrinkScreenStateCopyWithImpl<
          _IndividualDrinkScreenState>(this, _$identity);
}

abstract class _IndividualDrinkScreenState
    implements IndividualDrinkScreenState {
  const factory _IndividualDrinkScreenState({DrinkRecipeModel? drink}) =
      _$_IndividualDrinkScreenState;

  @override
  DrinkRecipeModel? get drink;
  @override
  @JsonKey(ignore: true)
  _$IndividualDrinkScreenStateCopyWith<_IndividualDrinkScreenState>
      get copyWith => throw _privateConstructorUsedError;
}
