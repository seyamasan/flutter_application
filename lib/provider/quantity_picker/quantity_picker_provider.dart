import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quantity_picker_provider.g.dart';

@riverpod
class QuantityPicker extends _$QuantityPicker {
  late final int _minQuantity;
  late final int _maxQuantity;
  
  @override
  int build({
    required int minQuantity,
    required int maxQuantity,
    required int initialQuantity,
  }) {
    _minQuantity = minQuantity;
    _maxQuantity = maxQuantity;
    return initialQuantity.coerceIn(minQuantity, maxQuantity);
  }

  int get quantity => state;

  bool get _isMaxQuantity => state >= _maxQuantity;
  bool get _isMinQuantity => state <= _minQuantity;

  void increase() {
    if (!_isMaxQuantity) {
      state = state + 1;
    }
  }

  void decrease() {
    if (!_isMinQuantity) {
      state = state - 1;
    }
  }
}

extension IntExtension on int {
  int coerceIn(int minimumValue, int maximumValue) {
    if (this < minimumValue) return minimumValue;
    if (this > maximumValue) return maximumValue;
    return this;
  }
}