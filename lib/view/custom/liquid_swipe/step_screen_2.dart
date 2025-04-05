import 'package:flutter/material.dart';
import 'package:flutter_application/util/options.dart';
import 'package:flutter_application/viewmodel/custom/liquid_swipe/liquid_swipe_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StepScreen2 extends ConsumerWidget {
  const StepScreen2({super.key});

  static List<String> items = [
    Options.noSelection.label,
    Options.option1.label,
    Options.option2.label,
    Options.option3.label
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(liquidSwipeViewModelProvider);
    final viewModel = ref.read(liquidSwipeViewModelProvider.notifier);

    return Container(
      color: Colors.yellow,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Step2',
            style: TextStyle(
              fontSize: 48,
              color: Colors.white
            )
          ),
          const SizedBox(height: 48),
          DropdownButton<String>(
            value: state.option.label,
            items: items.map((String item) {
              return DropdownMenuItem(
                value: item,
                child: Text(item),
              );
            }).toList(),
            onChanged: (String? newValue) {
              if (newValue != null) {
                viewModel.updateOption(newValue);
              }
            }
          )
        ]
      )
    );
  }
}