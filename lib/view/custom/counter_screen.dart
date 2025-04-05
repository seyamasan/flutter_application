import 'package:flutter/material.dart';
import 'package:flutter_application/i18n/strings.g.dart';
import 'package:flutter_application/provider/quantity_picker/quantity_picker_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterScreen extends ConsumerWidget {
    const CounterScreen({
    super.key,
    this.minQuantity = 0,
    this.maxQuantity = 10,
    this.initialQuantity = 0,
  });

  final int minQuantity;
  final int maxQuantity;
  final int initialQuantity;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(quantityPickerProvider(
      minQuantity: minQuantity,
      maxQuantity: maxQuantity,
      initialQuantity: initialQuantity
    ));
    final quantityPicker = ref.read(quantityPickerProvider(
      minQuantity: minQuantity,
      maxQuantity: maxQuantity,
      initialQuantity: initialQuantity
    ).notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(t.counter.title, style: const TextStyle(fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context); // 戻るボタンの処理
          },
        )
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(t.counter.tap_count),
            Text(
              '$state',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16), // スペース
            Row(
              mainAxisAlignment: MainAxisAlignment.center, // 横方向に中央揃え
              children: [
                // マイナスボタン
                OutlinedButton(
                  onPressed: () {
                    quantityPicker.decrease(); // 減少
                  },
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: const BorderSide(color: Colors.red, width: 2),
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.red.withOpacity(0.3),
                  ),
                  child: const Icon(Icons.remove, color: Colors.white),
                ),
                const SizedBox(width: 16), // ボタン間のスペース
                // プラスボタン
                OutlinedButton(
                  onPressed: () {
                    quantityPicker.increase(); // 増加
                  },
                  style: OutlinedButton.styleFrom(
                    shape: const CircleBorder(),
                    side: const BorderSide(color: Colors.green, width: 2),
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.green.withOpacity(0.3),
                  ),
                  child: const Icon(Icons.add, color: Colors.white),
                )
              ]
            )
          ]
        )
      )
    );
  }
}