import 'package:flutter/material.dart';

class StepScreen3 extends StatelessWidget {
  final VoidCallback onStep1Pressed;
  final VoidCallback onStep2Pressed;

  const StepScreen3({super.key, required this.onStep1Pressed, required this.onStep2Pressed});

  @override
  Widget build(BuildContext context) {
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
                  onStep1Pressed();
                },
                child: const Text('Go Step1!!!'),
              ),
              const SizedBox(width: 16),  // ボタン間のスペース
              ElevatedButton(
                onPressed: () {
                  onStep2Pressed();
                },
                child: const Text('Go Step2!!!')
              )
            ],
          ),
        ]
      )
    );
  }
}