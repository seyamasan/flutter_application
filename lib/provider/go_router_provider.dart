import 'package:flutter/material.dart';
import 'package:flutter_application/constant/routes.dart';
import 'package:flutter_application/i18n/strings.g.dart';
import 'package:flutter_application/view/custom/counter_screen.dart';
import 'package:flutter_application/view/basic_screen.dart';
import 'package:flutter_application/view/custom/liquid_swipe/liquid_swipe_screen.dart';
import 'package:flutter_application/view/custom_screen.dart';
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
              title = t.basic.title;
              break;
            case Routes.custom:
              title = t.custom.title;
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
                  child: const BasicScreen(), // ベーシック画面
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
                  child: const CustomScreen(), // カスタム画面
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
            child: const CounterScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: Tween<double>(begin: 0.0, end: 1.0).animate(animation),
                child: child,
              );
            }
          );
        }
      ),
      GoRoute(
        path: Routes.liquidSwipe,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const LiquidSwipeScreen(),
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