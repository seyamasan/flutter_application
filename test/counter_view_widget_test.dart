// Flutterの基本的なウィジェットテスト

// テストでウィジェットとのインタラクションを実行するには、flutter_test パッケージの WidgetTester
// ユーティリティを使います。たとえば、タップやスクロール
// ジェスチャーを送ることができます。また、WidgetTester を使って、ウィジェットツリーから子ウィジェットを
// 見つけ、テキストを読み込んで、ウィジェットとのインタラクションを検証することもできます。
// ツリーの子ウィジェットを探したり、テキストを読み込んだり、ウィジェットのプロパティの値が正しいかどうかを検証したりすることもできます。

import 'package:flutter/material.dart';
import 'package:flutter_application/l10n/app_localizations.dart';
import 'package:flutter_application/provider/quantity_picker_provider.dart';
import 'package:flutter_application/quantity_picker_state.dart';
import 'package:flutter_application/view/custom/counter_view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

Widget createCounterView(
  int minQuantity,
  int maxQuantity,
  int initialQuantity
) => ProviderScope(
  overrides: [
    quantityPickerProvider.overrideWith((ref) => QuantityPickerState(
      minQuantity: minQuantity,
      maxQuantity: maxQuantity,
      initialQuantity: initialQuantity,
    ))
  ],
  child: const MaterialApp(
    localizationsDelegates: L10n.localizationsDelegates,
    supportedLocales: L10n.supportedLocales,
    home: CounterView()
  )
);

void main() {
  group('CounterView Tests', () {

    // AddとRemoveボタンの挙動
    testWidgets('Test counter functionality (increment and decrement)', (WidgetTester tester) async {
      await tester.pumpWidget(
        createCounterView(0, 10, 0)
      );

      expect(find.text('0'), findsOneWidget); // Finderで指定した条件のWidgetが一つだけ存在している場合。
      expect(find.text('1'), findsNothing); // Finderで指定した条件のWidgetが存在していない。

      // '+' アイコンのボタンを探してタップ
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      // 結果を判定
      expect(find.text('0'), findsNothing);
      expect(find.text('1'), findsOneWidget);

      // '-' アイコンのボタンを探してタップ
      await tester.tap(find.byIcon(Icons.remove));
      await tester.pump();

      // 結果を判定
      expect(find.text('1'), findsNothing);
      expect(find.text('0'), findsOneWidget);
    });

    // Addボタンの挙動
    testWidgets('Test counter functionality (increment)', (WidgetTester tester) async {
      await tester.pumpWidget(
        createCounterView(0, 10, 1)
      );

      expect(find.text('1'), findsOneWidget);
      expect(find.text('2'), findsNothing);

      // '+' アイコンのボタンを探してタップ
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      // 結果を判定
      expect(find.text('2'), findsOneWidget);
      expect(find.text('1'), findsNothing);
    });

    // Removeボタンの挙動
    testWidgets('Test counter functionality (decrement)', (WidgetTester tester) async {
      await tester.pumpWidget(
        createCounterView(0, 10, 1)
      );

      expect(find.text('1'), findsOneWidget);
      expect(find.text('0'), findsNothing);

      // '-' アイコンのボタンを探してタップ
      await tester.tap(find.byIcon(Icons.remove));
      await tester.pump();

      // 結果を判定
      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);
    });
    
  });
}
