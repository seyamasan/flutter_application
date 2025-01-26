import 'package:flutter_application/quantity_picker_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// QuantityPickerStateを管理するProvider
final quantityPickerProvider = StateNotifierProvider<QuantityPickerState, int>(
  (ref) => QuantityPickerState(
    minQuantity: 0,
    maxQuantity: 10,
    initialQuantity: 0,
  )
);