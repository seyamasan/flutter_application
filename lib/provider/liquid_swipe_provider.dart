import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

class LiquidSwipeProvider extends Notifier<LiquidController> {

  LiquidController get controller => state;
  
  @override
  LiquidController build() {
    return LiquidController();
  }

  // // コントローラーを更新するメソッド（必要に応じて）
  // void updateController(LiquidController controller) {
  //   state = controller;
  // }
}

final liquidControllerProvider = NotifierProvider<LiquidSwipeProvider, LiquidController>(() {
  return LiquidSwipeProvider();
});