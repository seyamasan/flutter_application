// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_indicator_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RefreshIndicatorState {
  List<int> get listItems => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  /// Create a copy of RefreshIndicatorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefreshIndicatorStateCopyWith<RefreshIndicatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshIndicatorStateCopyWith<$Res> {
  factory $RefreshIndicatorStateCopyWith(RefreshIndicatorState value,
          $Res Function(RefreshIndicatorState) then) =
      _$RefreshIndicatorStateCopyWithImpl<$Res, RefreshIndicatorState>;
  @useResult
  $Res call({List<int> listItems, bool isLoading});
}

/// @nodoc
class _$RefreshIndicatorStateCopyWithImpl<$Res,
        $Val extends RefreshIndicatorState>
    implements $RefreshIndicatorStateCopyWith<$Res> {
  _$RefreshIndicatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefreshIndicatorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listItems = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      listItems: null == listItems
          ? _value.listItems
          : listItems // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefreshIndicatorStateImplCopyWith<$Res>
    implements $RefreshIndicatorStateCopyWith<$Res> {
  factory _$$RefreshIndicatorStateImplCopyWith(
          _$RefreshIndicatorStateImpl value,
          $Res Function(_$RefreshIndicatorStateImpl) then) =
      __$$RefreshIndicatorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> listItems, bool isLoading});
}

/// @nodoc
class __$$RefreshIndicatorStateImplCopyWithImpl<$Res>
    extends _$RefreshIndicatorStateCopyWithImpl<$Res,
        _$RefreshIndicatorStateImpl>
    implements _$$RefreshIndicatorStateImplCopyWith<$Res> {
  __$$RefreshIndicatorStateImplCopyWithImpl(_$RefreshIndicatorStateImpl _value,
      $Res Function(_$RefreshIndicatorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefreshIndicatorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listItems = null,
    Object? isLoading = null,
  }) {
    return _then(_$RefreshIndicatorStateImpl(
      listItems: null == listItems
          ? _value._listItems
          : listItems // ignore: cast_nullable_to_non_nullable
              as List<int>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RefreshIndicatorStateImpl implements _RefreshIndicatorState {
  _$RefreshIndicatorStateImpl(
      {final List<int> listItems = RefreshIndicatorList.items,
      this.isLoading = false})
      : _listItems = listItems;

  final List<int> _listItems;
  @override
  @JsonKey()
  List<int> get listItems {
    if (_listItems is EqualUnmodifiableListView) return _listItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listItems);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'RefreshIndicatorState(listItems: $listItems, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshIndicatorStateImpl &&
            const DeepCollectionEquality()
                .equals(other._listItems, _listItems) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_listItems), isLoading);

  /// Create a copy of RefreshIndicatorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshIndicatorStateImplCopyWith<_$RefreshIndicatorStateImpl>
      get copyWith => __$$RefreshIndicatorStateImplCopyWithImpl<
          _$RefreshIndicatorStateImpl>(this, _$identity);
}

abstract class _RefreshIndicatorState implements RefreshIndicatorState {
  factory _RefreshIndicatorState(
      {final List<int> listItems,
      final bool isLoading}) = _$RefreshIndicatorStateImpl;

  @override
  List<int> get listItems;
  @override
  bool get isLoading;

  /// Create a copy of RefreshIndicatorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshIndicatorStateImplCopyWith<_$RefreshIndicatorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
