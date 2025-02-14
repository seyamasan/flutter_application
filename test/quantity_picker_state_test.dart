import 'package:flutter_application/provider/quantity_picker_provider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('QuantityPickerState Tests', () {
    test('Initial quantity is within the range', () {
      // 初期状態で数量が最小値と最大値の範囲内に収められているか確認
      final state = QuantityPickerState(minQuantity: 0, maxQuantity: 10, initialQuantity: 5);
      expect(state.quantity, 5);  // 初期値が設定されているか
    });

    test('Quantity should not exceed max value when increased', () {
      // 最大値を超えないことを確認
      final state = QuantityPickerState(minQuantity: 0, maxQuantity: 10, initialQuantity: 10);
      
      state.increase();
      expect(state.quantity, 10);  // 最大値を超えない
    });

    test('Quantity should not go below min value when decreased', () {
      // 最小値を下回らないことを確認
      final state = QuantityPickerState(minQuantity: 0, maxQuantity: 10, initialQuantity: 0);
      
      state.decrease();
      expect(state.quantity, 0);  // 最小値を下回らない
    });

    test('Increase should add 1 to the quantity', () {
      // 増加操作が1つの単位で正しく動作するか確認
      final state = QuantityPickerState(minQuantity: 0, maxQuantity: 10, initialQuantity: 5);
      
      state.increase();
      expect(state.quantity, 6);  // 1増加している
    });

    test('Decrease should subtract 1 from the quantity', () {
      // 減少操作が1つの単位で正しく動作するか確認
      final state = QuantityPickerState(minQuantity: 0, maxQuantity: 10, initialQuantity: 5);
      
      state.decrease();
      expect(state.quantity, 4);  // 1減少している
    });

    test('Decrease should not go below min quantity', () {
      // 最小値を下回らないことを確認
      final state = QuantityPickerState(minQuantity: 0, maxQuantity: 10, initialQuantity: 0);
      
      state.decrease();
      expect(state.quantity, 0);  // 最小値を下回らない
    });

    test('Increase should not exceed max quantity', () {
      // 最大値を超えないことを確認
      final state = QuantityPickerState(minQuantity: 0, maxQuantity: 10, initialQuantity: 10);
      
      state.increase();
      expect(state.quantity, 10);  // 最大値を超えない
    });

    test('Quantity is coerced within the range on initialization', () {
      // 初期値が範囲外の場合でも、範囲内に収められるか確認
      final state = QuantityPickerState(minQuantity: 1, maxQuantity: 10, initialQuantity: 15);
      expect(state.quantity, 10);  // 最大値に収められることを確認

      final state2 = QuantityPickerState(minQuantity: 1, maxQuantity: 10, initialQuantity: -5);
      expect(state2.quantity, 1);  // 最小値に収められることを確認
    });
  });
}