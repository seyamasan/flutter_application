import 'package:flutter_riverpod/flutter_riverpod.dart';

// QuantityPickerStateを管理するProvider
final quantityPickerProvider = StateNotifierProvider<QuantityPickerState, int>(
  (ref) => QuantityPickerState(
    minQuantity: 0,
    maxQuantity: 10,
    initialQuantity: 0,
  )
);

class QuantityPickerState extends StateNotifier<int> {
  final int minQuantity;
  final int maxQuantity;

  QuantityPickerState({
    required this.minQuantity,
    required this.maxQuantity,
    required int initialQuantity,
  }) : super(initialQuantity.coerceIn(minQuantity, maxQuantity));


  // 現在の数量を取得
  int get quantity => state;

  // 最大数量かどうかを判定
  bool get _isMaxQuantity => state >= maxQuantity;

  // 最小数量かどうかを判定
  bool get _isMinQuantity => state <= minQuantity;

  // 増やす
  void increase() {
    if (!_isMaxQuantity) {
      state++;
    }
  }

  // 減らす
  void decrease() {
    if (!_isMinQuantity) {
      state--;
    }
  }
}

extension CoerceInInt on int {
  int coerceIn(int min, int max) {
    return (this < min) ? min : (this > max) ? max : this;
  }
}