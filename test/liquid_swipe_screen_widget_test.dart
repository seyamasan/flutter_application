import 'package:flutter/material.dart';
import 'package:flutter_application/provider/liquid_swipe_provider.dart';
import 'package:flutter_application/view/custom/liquid_swipe/liquid_swipe_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

Widget createLiquidSwipeScreen(
  ProviderContainer container
) => UncontrolledProviderScope(
  container: container,
  child: const MaterialApp(
    home: LiquidSwipeScreen()
  )
);

void main() {
  group('LiquidSwipeScreen Tests', () {

    // 1回スワイプして画面が切り替わっているか確認
    testWidgets('Test swipe to transition (Single swipe)', (WidgetTester tester) async {
      final container = ProviderContainer(
        overrides: [
          liquidControllerProvider.overrideWith(() => LiquidSwipeProvider())
        ]
      );

      await tester.pumpWidget(createLiquidSwipeScreen(container));
      final liquidController = container.read(liquidControllerProvider);

      expect(liquidController.currentPage, equals(0));
      expect(liquidController.currentPage, isNot(1));

      // ページをスワイプして遷移を確認
      await tester.drag(find.byType(LiquidSwipe), const Offset(-300, 0));
      await tester.pumpAndSettle(); // アニメーション完了を待つ
      expect(liquidController.currentPage, equals(1));
      expect(liquidController.currentPage, isNot(0));
    });
    
  });


  // 2回スワイプしてページが3ページ目に遷移しているか確認
  testWidgets('Test swipe to transition (Double swipe)', (WidgetTester tester) async {
    final container = ProviderContainer(
      overrides: [
        liquidControllerProvider.overrideWith(() => LiquidSwipeProvider())
      ]
    );

    await tester.pumpWidget(createLiquidSwipeScreen(container));
    final liquidController = container.read(liquidControllerProvider);

    expect(liquidController.currentPage, equals(0));
    expect(liquidController.currentPage, isNot(2));

    // 1回目のスワイプで1ページ目に遷移
    await tester.drag(find.byType(LiquidSwipe), const Offset(-300, 0));
    await tester.pumpAndSettle();
    expect(liquidController.currentPage, equals(1));

    // 2回目のスワイプで2ページ目に遷移
    await tester.drag(find.byType(LiquidSwipe), const Offset(-300, 0));
    await tester.pumpAndSettle();
    expect(liquidController.currentPage, equals(2));
    expect(liquidController.currentPage, isNot(1));
  });

  // すべてのページをスワイプして遷移確認
  testWidgets('Test swipe through all pages', (WidgetTester tester) async {
    final container = ProviderContainer(
      overrides: [
        liquidControllerProvider.overrideWith(() => LiquidSwipeProvider())
      ]
    );

    await tester.pumpWidget(createLiquidSwipeScreen(container));
    final liquidController = container.read(liquidControllerProvider);

    expect(liquidController.currentPage, equals(0));

    await tester.drag(find.byType(LiquidSwipe), const Offset(-300, 0));
    await tester.pumpAndSettle();
    expect(liquidController.currentPage, equals(1));

    await tester.drag(find.byType(LiquidSwipe), const Offset(-300, 0));
    await tester.pumpAndSettle();
    expect(liquidController.currentPage, equals(2));

    // もう1回スワイプで元のページに戻る
    await tester.drag(find.byType(LiquidSwipe), const Offset(300, 0)); // 右にスワイプ
    await tester.pumpAndSettle();
    expect(liquidController.currentPage, equals(1));

    await tester.drag(find.byType(LiquidSwipe), const Offset(300, 0)); // 右にスワイプ
    await tester.pumpAndSettle();
    expect(liquidController.currentPage, equals(0));
  });

}