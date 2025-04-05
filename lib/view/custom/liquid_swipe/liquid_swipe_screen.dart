import 'package:flutter/material.dart';
import 'package:flutter_application/provider/router/go_router_provider.dart';
import 'package:flutter_application/provider/liquid_swipe/liquid_swipe_controller_provider.dart';
import 'package:flutter_application/view/custom/liquid_swipe/step_screen_1.dart';
import 'package:flutter_application/view/custom/liquid_swipe/step_screen_2.dart';
import 'package:flutter_application/view/custom/liquid_swipe/step_screen_3.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LiquidSwipeScreen extends ConsumerWidget {
  const LiquidSwipeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.read(goRouterProvider); 
    final liquidController = ref.read(liquidSwipeControllerProvider);

    List<Widget> pages = <Widget>[
      const DefaultTextStyle(
        style: TextStyle(
          decoration: TextDecoration.none, // なぜか下線が勝手に描画される
        ),
        child: StepScreen1(),
      ),
      const DefaultTextStyle(
        style: TextStyle(
          decoration: TextDecoration.none,
        ),
        child: StepScreen2(),
      ),
      const DefaultTextStyle(
        style: TextStyle(
          decoration: TextDecoration.none,
        ),
        child: StepScreen3()
      )
    ];

    return PopScope(
      canPop: false, // これでandroidのスワイプで戻るのを阻止できる
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true, 
        appBar: AppBar(
          title: const Text(''),
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              // disposeViewModel(ref);
              goRouter.pop();
            },
          )
        ),
        body: LiquidSwipe(
            pages: pages,
            liquidController: liquidController,
            slideIconWidget: const Icon(Icons.arrow_back_ios), // 右にアイコン配置
            positionSlideIcon: 0.5,
            enableSideReveal: true,
        )
      )
    );
  }

  // void disposeViewModel(WidgetRef ref) {
  //   ref.invalidate(liquidSwipeViewModelProvider);
  // }
}