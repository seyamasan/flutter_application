import 'package:flutter/material.dart';
import 'package:flutter_application/constant/custom_colors.dart';
import 'package:flutter_application/constant/dimensions.dart';
import 'package:flutter_application/provider/liquid_swipe_view_model_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StepScreen1 extends ConsumerWidget {
  const StepScreen1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final liquidSwipeViewModel = ref.read(liquidSwipeViewModelProvider);
    final liquidSwipeViewModelNotifer = ref.read(liquidSwipeViewModelProvider.notifier);

    return Container(
      color: Colors.red,
      width: double.infinity, // 広げないと画面が細切れになる
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Step1',
            style: TextStyle(
              fontSize: 48,
              color: Colors.white
            )
          ),
          const SizedBox(height: 48),
          SizedBox(
            width: Dimensions.getWidth60(context),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Input',
                labelStyle: TextStyle(color: CustomColors.lightGray1),
                border: OutlineInputBorder(),
              ),
              style: const TextStyle(color: CustomColors.lightGray1),
              onChanged: (text) => liquidSwipeViewModelNotifer.updateText(text),
              controller: TextEditingController(text: liquidSwipeViewModel.text)
            )
          )
        ]
      )
    );    
  }
}