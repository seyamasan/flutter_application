import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'liquid_swipe_controller_provider.g.dart';

@Riverpod(keepAlive: true) // 勝手に破棄されないように
class LiquidSwipeController extends _$LiquidSwipeController {
  @override
  LiquidController build() {
    return LiquidController();
  }

  LiquidController get controller => state;
}