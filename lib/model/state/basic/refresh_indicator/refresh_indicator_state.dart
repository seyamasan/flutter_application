import 'package:flutter_application/constant/refresh_indicator_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_indicator_state.freezed.dart';

@freezed
class RefreshIndicatorState with _$RefreshIndicatorState{
  factory RefreshIndicatorState({
    @Default(RefreshIndicatorList.items) List<int> listItems,
    @Default(false) bool isLoading
  }) = _RefreshIndicatorState;
}