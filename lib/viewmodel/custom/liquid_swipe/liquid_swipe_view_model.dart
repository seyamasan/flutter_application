import 'package:flutter_application/util/options.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LiquidSwipeviewModel extends Notifier<LiquidSwipeviewModelState> {
  @override
  LiquidSwipeviewModelState build() {
    return LiquidSwipeviewModelState();
  }

  // textの状態を更新
  void updateText(String text) {
    state = state.copyWith(text: text);
  }

  // 番号の状態を更新
  void updateNumber(String label) {
    Options selectedOption = Options.values.firstWhere(
      (option) => option.label == label,
      orElse: () => Options.noSelection,
    );

    state = state.copyWith(number: selectedOption.number, optionText: selectedOption.label);
  }
}

class LiquidSwipeviewModelState {
  final String text;
  final int number;
  final String optionText;

  LiquidSwipeviewModelState({
    this.text = '',
    this.number = 0,
    this.optionText = 'No selection'
  });

  LiquidSwipeviewModelState copyWith({String? text, int? number, String? optionText}) {
    return LiquidSwipeviewModelState(
      text: text ?? this.text,
      number: number ?? this.number,
      optionText: optionText ?? this.optionText
    );
  }
}