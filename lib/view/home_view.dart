
import 'package:flutter/material.dart';
import 'package:flutter_application/constant/routes.dart';
import 'package:flutter_application/l10n/app_localizations.dart';
import 'package:flutter_application/provider/go_router_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Screen {
  final String name;
  final String path;

  Screen({required this.name, required this.path});
}

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.read(goRouterProvider); 
    final List<Screen> screens = [
      Screen(name: L10n.of(context)!.counter_title, path: Routes.counter)
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.of(context)!.home_title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: screens.length,
          itemBuilder: (context, index) {
            final screen = screens[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 4),
              color: Theme.of(context).primaryColor,
              child: InkWell(
                onTap: () {
                  goRouter.push(screen.path); // 選択された画面のpathに遷移
                },
                child: ListTile(
                  contentPadding: const EdgeInsets.all(12),
                  title: Text(
                    screen.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    )
                  ),
                  trailing: const Icon(Icons.arrow_forward),
                )
              )
            );
          }
        )
      )
    );
  }
}