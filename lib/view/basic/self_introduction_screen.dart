import 'package:flutter/material.dart';
import 'package:flutter_application/constant/self_introduction_param.dart';
import 'package:flutter_application/i18n/strings.g.dart';

class SelfIntroductionScreen extends StatelessWidget{
  const SelfIntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(t.self_introduction.title, style: const TextStyle(fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${t.self_introduction.name_label} ${SelfIntroductionParam.name}'), // 名前
            const SizedBox(height: 16),
            Text('${t.self_introduction.age_label} ${SelfIntroductionParam.age}'), // 年齢
            const SizedBox(height: 16),
            Text('${t.self_introduction.height_label} ${SelfIntroductionParam.height}'), // 身長
            const SizedBox(height: 16),
            Text('${t.self_introduction.working_label} ${SelfIntroductionParam.isWorking}') // 就業中
          ]
        )
      )
    );
  }
}