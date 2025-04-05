// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'liquid_swipe_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LiquidSwipeState {
  String get text => throw _privateConstructorUsedError;
  Options get option => throw _privateConstructorUsedError;

  /// Create a copy of LiquidSwipeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LiquidSwipeStateCopyWith<LiquidSwipeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiquidSwipeStateCopyWith<$Res> {
  factory $LiquidSwipeStateCopyWith(
          LiquidSwipeState value, $Res Function(LiquidSwipeState) then) =
      _$LiquidSwipeStateCopyWithImpl<$Res, LiquidSwipeState>;
  @useResult
  $Res call({String text, Options option});
}

/// @nodoc
class _$LiquidSwipeStateCopyWithImpl<$Res, $Val extends LiquidSwipeState>
    implements $LiquidSwipeStateCopyWith<$Res> {
  _$LiquidSwipeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LiquidSwipeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? option = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as Options,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LiquidSwipeStateImplCopyWith<$Res>
    implements $LiquidSwipeStateCopyWith<$Res> {
  factory _$$LiquidSwipeStateImplCopyWith(_$LiquidSwipeStateImpl value,
          $Res Function(_$LiquidSwipeStateImpl) then) =
      __$$LiquidSwipeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, Options option});
}

/// @nodoc
class __$$LiquidSwipeStateImplCopyWithImpl<$Res>
    extends _$LiquidSwipeStateCopyWithImpl<$Res, _$LiquidSwipeStateImpl>
    implements _$$LiquidSwipeStateImplCopyWith<$Res> {
  __$$LiquidSwipeStateImplCopyWithImpl(_$LiquidSwipeStateImpl _value,
      $Res Function(_$LiquidSwipeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LiquidSwipeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? option = null,
  }) {
    return _then(_$LiquidSwipeStateImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as Options,
    ));
  }
}

/// @nodoc

class _$LiquidSwipeStateImpl implements _LiquidSwipeState {
  _$LiquidSwipeStateImpl({this.text = '', this.option = Options.noSelection});

  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final Options option;

  @override
  String toString() {
    return 'LiquidSwipeState(text: $text, option: $option)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiquidSwipeStateImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.option, option) || other.option == option));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, option);

  /// Create a copy of LiquidSwipeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LiquidSwipeStateImplCopyWith<_$LiquidSwipeStateImpl> get copyWith =>
      __$$LiquidSwipeStateImplCopyWithImpl<_$LiquidSwipeStateImpl>(
          this, _$identity);
}

abstract class _LiquidSwipeState implements LiquidSwipeState {
  factory _LiquidSwipeState({final String text, final Options option}) =
      _$LiquidSwipeStateImpl;

  @override
  String get text;
  @override
  Options get option;

  /// Create a copy of LiquidSwipeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LiquidSwipeStateImplCopyWith<_$LiquidSwipeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
