import 'package:flutter/material.dart';
import 'package:flutter_application/constant/routes.dart';
import 'package:flutter_application/i18n/strings.g.dart';
import 'package:flutter_application/model/data/screen_items.dart';
import 'package:flutter_application/provider/router/go_router_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BasicScreen extends ConsumerWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.read(goRouterProvider); 
    final List<ScreenItems> screens = [
      ScreenItems(name: t.self_introduction.title, path: Routes.selfIntroduction),
      ScreenItems(name: t.refresh_indicator.title, path: Routes.refreshIndicator)
    ];

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView.builder(
        itemCount: screens.length,
        itemBuilder: (context, index) {
          final screen = screens[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 6,
            color: Theme.of(context).primaryColor,
            child: InkWell(
              onTap: () {
                goRouter.push(screen.path); // 選択された画面のpathに遷移
              },
              borderRadius: BorderRadius.circular(16),
              splashColor: Colors.white.withOpacity(0.2),
              highlightColor: Colors.white.withOpacity(0.3),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                title: Text(
                  screen.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 30,
                )
              )
            )
          );
        }
      )
    );
  }
}