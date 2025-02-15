import 'package:flutter_riverpod/flutter_riverpod.dart';

// QuantityPickerStateを管理するProvider
final quantityPickerProvider = NotifierProvider<QuantityPickerProvider, int>(() {
  return QuantityPickerProvider(
    minQuantity: 0,
    maxQuantity: 10,
    initialQuantity: 0,
  );
});

class QuantityPickerProvider extends Notifier<int> {
  final int minQuantity;
  final int maxQuantity;
  final int initialQuantity;

  QuantityPickerProvider({
    required this.minQuantity,
    required this.maxQuantity,
    required this.initialQuantity,
  });

  @override
  int build() {
    return initialQuantity.coerceIn(minQuantity, maxQuantity);
  }

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