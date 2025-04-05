import 'package:flutter_application/provider/quantity_picker/quantity_picker_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('QuantityPickerProvider Tests', () {
    test('Initial quantity is within the range', () {
      // 初期状態で数量が最小値と最大値の範囲内に収められているか確認
      final container = ProviderContainer(overrides: [
        QuantityPickerProvider(
          minQuantity: 0,
          maxQuantity: 10,
          initialQuantity: 5,
        ),
      ]);
      final notifer = container.read(
        quantityPickerProvider(
          minQuantity: 0,
          maxQuantity: 10,
          initialQuantity: 5,
        ).notifier
      );
      expect(notifer.quantity, 5);  // 初期値が設定されているか
    });

    test('Quantity should not exceed max value when increased', () {
      // 最大値を超えないことを確認
      final container = ProviderContainer(overrides: [
        QuantityPickerProvider(
          minQuantity: 0,
          maxQuantity: 10,
          initialQuantity: 10,
        ),
      ]);
      final notifer = container.read(
        quantityPickerProvider(
          minQuantity: 0,
          maxQuantity: 10,
          initialQuantity: 10,
        ).notifier
      );
      
      notifer.increase();
      expect(notifer.quantity, 10);  // 最大値を超えない
    });

    test('Quantity should not go below min value when decreased', () {
      // 最小値を下回らないことを確認
      final container = ProviderContainer(overrides: [
        QuantityPickerProvider(
          minQuantity: 0,
          maxQuantity: 10,
          initialQuantity: 0,
        ),
      ]);
      final notifer = container.read(
        quantityPickerProvider(
          minQuantity: 0,
          maxQuantity: 10,
          initialQuantity: 0,
        ).notifier
      );
      
      notifer.decrease();
      expect(notifer.quantity, 0);  // 最小値を下回らない
    });

    test('Increase should add 1 to the quantity', () {
      // 増加操作が1つの単位で正しく動作するか確認
      final container = ProviderContainer(overrides: [
        QuantityPickerProvider(
          minQuantity: 0,
          maxQuantity: 10,
          initialQuantity: 5,
        ),
      ]);
      final notifer = container.read(
        quantityPickerProvider(
          minQuantity: 0,
          maxQuantity: 10,
          initialQuantity: 5,
        ).notifier
      );
      
      notifer.increase();
      expect(notifer.quantity, 6);  // 1増加している
    });

    test('Decrease should subtract 1 from the quantity', () {
      // 減少操作が1つの単位で正しく動作するか確認
      final container = ProviderContainer(overrides: [
        QuantityPickerProvider(
          minQuantity: 0,
          maxQuantity: 10,
          initialQuantity: 5,
        ),
      ]);
      final notifer = container.read(
        quantityPickerProvider(
          minQuantity: 0,
          maxQuantity: 10,
          initialQuantity: 5,
        ).notifier
      );
      
      notifer.decrease();
      expect(notifer.quantity, 4);  // 1減少している
    });

    test('Decrease should not go below min quantity', () {
      // 最小値を下回らないことを確認
      final container = ProviderContainer(overrides: [
        QuantityPickerProvider(
          minQuantity: 0,
          maxQuantity: 10,
          initialQuantity: 0,
        ),
      ]);
      final notifer = container.read(
        quantityPickerProvider(
          minQuantity: 0,
          maxQuantity: 10,
          initialQuantity: 0,
        ).notifier
      );
      
      notifer.decrease();
      expect(notifer.quantity, 0);  // 最小値を下回らない
    });

    test('Increase should not exceed max quantity', () {
      // 最大値を超えないことを確認
      final container = ProviderContainer(overrides: [
        QuantityPickerProvider(
          minQuantity: 0,
          maxQuantity: 10,
          initialQuantity: 10,
        ),
      ]);
      final notifer = container.read(
        quantityPickerProvider(
          minQuantity: 0,
          maxQuantity: 10,
          initialQuantity: 10,
        ).notifier
      );
      
      notifer.increase();
      expect(notifer.quantity, 10);  // 最大値を超えない
    });

    test('Quantity is coerced within the range on initialization', () {
      // 初期値が範囲外の場合でも、範囲内に収められるか確認
      final container = ProviderContainer(overrides: [
        QuantityPickerProvider(
          minQuantity: 1,
          maxQuantity: 10,
          initialQuantity: 15,
        ),
      ]);
      final notifer = container.read(
        quantityPickerProvider(
          minQuantity: 1,
          maxQuantity: 10,
          initialQuantity: 15,
        ).notifier
      );
      expect(notifer.quantity, 10);  // 最大値に収められることを確認

      final container2 = ProviderContainer(overrides: [
        QuantityPickerProvider(
          minQuantity: 1,
          maxQuantity: 10,
          initialQuantity: -5,
        ),
      ]);
      final notifer2 = container.read(
        quantityPickerProvider(
          minQuantity: 1,
          maxQuantity: 10,
          initialQuantity: -5,
        ).notifier
      );
      expect(notifer2.quantity, 1);  // 最小値に収められることを確認
    });
  });
}