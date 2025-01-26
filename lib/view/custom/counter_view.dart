import 'package:flutter/material.dart';
import 'package:flutter_application/l10n/app_localizations.dart';
import 'package:flutter_application/provider/quantity_picker_provider.dart';
import 'package:flutter_application/provider/go_router_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterView extends ConsumerWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.read(goRouterProvider); 
    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.of(context)!.counter_title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            goRouter.pop(); // 戻るボタンの処理
          },
        )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(L10n.of(context)!.counter_view_tap_count),
            // Riverpodの状態を監視する
            Consumer(
              builder: (context, ref, child) {
                final quantity = ref.watch(quantityPickerProvider);
                return Text(
                  '$quantity',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            const SizedBox(height: 16), // スペース
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // 横方向に中央揃え
              children: [
                // マイナスボタン
                Consumer(
                  builder: (context, ref, child) {
                    final notifier = ref.read(quantityPickerProvider.notifier);
                    return OutlinedButton(
                      onPressed: () {
                        notifier.decrease(); // 減少
                      },
                      style: OutlinedButton.styleFrom(
                        shape: const CircleBorder(),
                        side: const BorderSide(color: Colors.red, width: 2),
                        padding: const EdgeInsets.all(16),
                        backgroundColor: Colors.red.withOpacity(0.3),
                      ),
                      child: const Icon(Icons.remove, color: Colors.white),
                    );
                  },
                ),
                const SizedBox(width: 16), // ボタン間のスペース
                // プラスボタン
                Consumer(
                  builder: (context, ref, child) {
                    final notifier = ref.read(quantityPickerProvider.notifier);
                    return OutlinedButton(
                      onPressed: () {
                        notifier.increase(); // 増加
                      },
                      style: OutlinedButton.styleFrom(
                        shape: const CircleBorder(),
                        side: const BorderSide(color: Colors.green, width: 2),
                        padding: const EdgeInsets.all(16),
                        backgroundColor: Colors.green.withOpacity(0.3),
                      ),
                      child: const Icon(Icons.add, color: Colors.white),
                    );
                  }
                )
              ]
            )
          ]
        )
      )
    );
  }
}