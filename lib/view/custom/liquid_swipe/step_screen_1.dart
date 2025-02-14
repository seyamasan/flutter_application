import 'package:flutter/material.dart';

class StepScreen1 extends StatelessWidget {
  const StepScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      width: double.infinity, // 広げないと画面が細切れになる
      height: double.infinity,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Step1',
            style: TextStyle(
              fontSize: 48,
              color: Colors.white
            )
          )
        ]
      )
    );
  }
}