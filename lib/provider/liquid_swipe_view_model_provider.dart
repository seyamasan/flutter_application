import 'package:flutter_application/viewmodel/custom/liquid_swipe/liquid_swipe_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final liquidSwipeViewModelProvider = NotifierProvider<LiquidSwipeviewModel, LiquidSwipeviewModelState>(() {
  return LiquidSwipeviewModel();
});