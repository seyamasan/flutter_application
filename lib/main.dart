import 'package:flutter/material.dart';
import 'package:flutter_application/quantity_picker_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 一番最初に走るmain関数
void main() {
  runApp(const ProviderScope( // これでProviderScope使える。flutter_riverpod
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter デモ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter デモ ホームページ'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'ボタンをタップした回数:',
            ),
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
