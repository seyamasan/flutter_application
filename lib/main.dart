import 'package:flutter/material.dart';
import 'package:flutter_application/l10n/app_localizations.dart';
import 'package:flutter_application/provider/quantity_picker_provider.dart';
import 'package:flutter_application/provider/go_router_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 一番最初に走るmain関数
void main() {
  runApp(const ProviderScope( // これでProviderScope使える。flutter_riverpod
    child: MyApp(),
  ));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // アプリのルート
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);

    return MaterialApp.router(
      title: 'Flutter Application',
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true
      ),
      routerConfig: goRouter // GoRouterを設定
    );
  }
}