import 'package:flutter_application/util/calculation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('年齢計算のテスト', () {
    test('誕生日当日', () {
      final today = DateTime.now();
      final birthDate = DateTime(today.year - 20, today.month, today.day);
      final age = Calculation.age(birthDate: birthDate);
      expect(age, equals(20));
    });

    test('誕生日前日', () {
      final today = DateTime.now();
      final birthDate = DateTime(today.year - 20, today.month, today.day +1);
      final age = Calculation.age(birthDate: birthDate);
      expect(age, equals(19));
    });

    test('不正な生年月日でエラー', () {
      final futureDate = DateTime.now().add(const Duration(days: 1));
      expect(
        () => Calculation.age(birthDate: futureDate),
        throwsException
      );
    });
  });
}