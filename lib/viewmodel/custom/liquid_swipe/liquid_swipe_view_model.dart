import 'package:flutter_application/model/custom/liquid_swipe/liquid_swipe_state.dart';
import 'package:flutter_application/util/options.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'liquid_swipe_view_model.g.dart';

@riverpod
class LiquidSwipeViewModel extends _$LiquidSwipeViewModel {

  @override
  LiquidSwipeState build() {
    return LiquidSwipeState();
  }

  // textの状態を更新
  void updateText(String text) {
    state = state.copyWith(text: text);
  }

  // Optionの状態を更新
  void updateOption(String optionStr) {
    Options selectedOption = Options.values.firstWhere(
      (option) => option.label == optionStr,
      orElse: () => Options.noSelection,
    );

    state = state.copyWith(option: selectedOption);
  }

  String getOutput() {
    List<String> list = [state.text, state.option.number.toString(), state.option.label];
    return list.join(', '); // カンマ区切りで結合
  }

}