import 'package:flutter/material.dart';
import 'package:flutter_application/provider/liquid_swipe_provider.dart';
import 'package:flutter_application/provider/liquid_swipe_view_model_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StepScreen3 extends ConsumerWidget {
  const StepScreen3({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final liquidController = ref.read(liquidControllerProvider);
    final liquidSwipeViewModelNotifer = ref.read(liquidSwipeViewModelProvider.notifier);
    
    return Container(
      color: Colors.green,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Step3',
            style: TextStyle(
              fontSize: 48,
              color: Colors.white
            )
          ),
          const SizedBox(height: 62),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,  // 横並びにする
            children: [
              ElevatedButton(
                onPressed: () {
                  liquidController.animateToPage(page: 0);
                },
                child: const Text('Go Step1!!!'),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {
                  liquidController.animateToPage(page: 1);
                },
                child: const Text('Go Step2!!!')
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text("Output list"),
                      content: Text(liquidSwipeViewModelNotifer.getOutput()),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text("OK"),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text("Output"),
              )
            ],
          ),
        ]
      )
    );
  }
}