import 'package:flutter/material.dart';
import 'package:flutter_application/constant/routes.dart';
import 'package:flutter_application/l10n/app_localizations.dart';
import 'package:flutter_application/view/custom/counter_view.dart';
import 'package:flutter_application/view/basic_view.dart';
import 'package:flutter_application/view/custom_view.dart';
import 'package:flutter_application/widget/bottom_nav_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

// GoRouterをProviderで提供
final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: Routes.basic, // 初期遷移先
    routes: <RouteBase>[
      // ボトムナビゲーション付き画面
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          // 画面のパスに応じてタイトルを設定
          String title;
          switch (state.matchedLocation) {
            case Routes.basic:
              title = L10n.of(context)!.basic_title;
              break;
            case Routes.custom:
              title = L10n.of(context)!.custom_title;
              break;
            default:
              title = 'Error';
          }
          return Scaffold(
            appBar: AppBar(title: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold
                )
              )
            ),
            body: navigationShell,
            bottomNavigationBar: BottomNavBar()
          );
        },
        branches: [
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: Routes.basic,
                pageBuilder: (context, state) => CustomTransitionPage(
                  key: state.pageKey,
                  child: const BasicView(), // ベーシック画面
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: Tween<double>(begin: 0.0, end: 1.0)
                          .animate(animation),
                      child: child,
                    );
                  }
                )
              )
            ]
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: Routes.custom,
                pageBuilder: (context, state) => CustomTransitionPage(
                  key: state.pageKey,
                  child: const CustomView(), // カスタム画面
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return FadeTransition(
                      opacity: Tween<double>(begin: 0.0, end: 1.0)
                          .animate(animation),
                      child: child,
                    );
                  }
                )
              )
            ]
          )
        ]
      ),
      // ボトムナビゲーションなしの画面
      GoRoute(
        path: Routes.counter,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const CounterView(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: Tween<double>(begin: 0.0, end: 1.0).animate(animation),
                child: child,
              );
            }
          );
        }
      )
    ]
  );
});