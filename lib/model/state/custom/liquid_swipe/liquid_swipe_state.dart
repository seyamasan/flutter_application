import 'package:flutter_application/util/options.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'liquid_swipe_state.freezed.dart';

@freezed
class LiquidSwipeState with _$LiquidSwipeState{
  factory LiquidSwipeState({
    @Default('') String text,
    @Default(Options.noSelection) Options option
  }) = _LiquidSwipeState;
}