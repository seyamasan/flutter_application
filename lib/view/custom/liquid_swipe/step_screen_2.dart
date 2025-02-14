import 'package:flutter/material.dart';

class StepScreen2 extends StatelessWidget {
  const StepScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      width: double.infinity,
      height: double.infinity,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Step2',
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