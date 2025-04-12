import 'package:flutter/material.dart';
import 'package:flutter_application/constant/routes.dart';
import 'package:flutter_application/i18n/strings.g.dart';
import 'package:flutter_application/model/data/screen_items.dart';
import 'package:flutter_application/provider/router/go_router_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomScreen extends ConsumerWidget {
  const CustomScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.read(goRouterProvider); 
    final List<ScreenItems> screens = [
      ScreenItems(name: t.counter.title, path: Routes.counter),
      ScreenItems(name: t.liquid_swipe.title, path: Routes.liquidSwipe)
    ];

    return Padding(
      padding: const EdgeInsets.all(12.0), // 外側の余白を増やして広がり感を出す
      child: ListView.builder(
        itemCount: screens.length,
        itemBuilder: (context, index) {
          final screen = screens[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16), // 角を丸くする
            ),
            elevation: 6, // シャドウ効果を追加して立体感を出す
            color: Theme.of(context).primaryColor,
            child: InkWell(
              onTap: () {
                goRouter.push(screen.path); // 選択された画面のpathに遷移
              },
              borderRadius: BorderRadius.circular(16), // InkWellの効果をカードの角に合わせる
              splashColor: Colors.white.withOpacity(0.2), // タップ時にスプラッシュエフェクトを追加
              highlightColor: Colors.white.withOpacity(0.3), // ハイライト効果を追加
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                title: Text(
                  screen.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600, // 太さを調整
                    fontSize: 20, // 文字サイズを少し大きく
                    color: Colors.white,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white, // アイコンの色を変更
                  size: 30, // アイコンのサイズを大きく
                )
              )
            )
          );
        }
      )
    );
  }
}