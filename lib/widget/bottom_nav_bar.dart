import 'package:flutter/material.dart';
import 'package:flutter_application/constant/routes.dart';
import 'package:flutter_application/l10n/app_localizations.dart';
import 'package:flutter_application/provider/go_router_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ボトムナビゲーションバー
class BottomNavBar extends ConsumerWidget {
  BottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouterState = ref.watch(goRouterProvider);
    final String currentLocation = goRouterState.state.matchedLocation;
    final int currentIndex = _getSelectedIndex(currentLocation);

    return BottomNavigationBar(
      currentIndex: currentIndex, // 現在の画面のインデックスを設定
      selectedItemColor: Colors.deepPurple, // 選択されたアイテムの色
      unselectedItemColor: Colors.grey, // 未選択のアイテムの色
      onTap: (index) {
        switch (index) {
          case 0:
            goRouterState.go(Routes.basic); // ベーシック画面に遷移
            break;
          case 1:
            goRouterState.go(Routes.custom); // カスタム画面に遷移
            break;
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: _buildIcon(Icons.dashboard, currentIndex == 0),
          label: L10n.of(context)!.basic_title,
        ),
        BottomNavigationBarItem(
          icon: _buildIcon(Icons.palette, currentIndex == 1),
          label: L10n.of(context)!.custom_title,
        )
      ],
    );
  }

  Widget _buildIcon(IconData iconData, bool isSelected) {
    return Container(
      padding: const EdgeInsets.all(8), // 枠内の余白
      decoration: BoxDecoration(
        color: isSelected ? Colors.deepPurple.withOpacity(0.2) : Colors.transparent, // 選択状態で色を付ける
        shape: BoxShape.circle // 丸い背景
      ),
      child: Icon(
        iconData
      ),
    );
  }

  int _getSelectedIndex(String location) {
    if (location == Routes.basic) {
      return 0; // ベーシック
    } else if (location == Routes.custom) {
      return 1; // カスタム
    }
    return 0; // デフォルト
  }
}