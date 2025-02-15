import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

final liquidControllerProvider = NotifierProvider<LiquidSwipeProvider, LiquidController>(() {
  return LiquidSwipeProvider();
});

class LiquidSwipeProvider extends Notifier<LiquidController> {

  LiquidController get controller => state;
  
  @override
  LiquidController build() {
    return LiquidController();
  }
}