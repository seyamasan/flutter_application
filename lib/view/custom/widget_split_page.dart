import 'package:flutter/material.dart';
import 'package:flutter_application/i18n/strings.g.dart';

class WidgetSplitPage extends StatefulWidget {
  const WidgetSplitPage({super.key});

  @override
  State<WidgetSplitPage> createState() => _WidgetSplitPageState();
}

class _WidgetSplitPageState extends State<WidgetSplitPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('WidgetSplitPageをリビルドしたよ。');

    return Scaffold(
      appBar: AppBar(title: Text(t.widget_split.title)),
      body: Padding(
        padding: const EdgeInsets.all(16), 
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const HintText(),
              CountText(count: count),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: Text(t.widget_split.increment),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HintText extends StatelessWidget {
  const HintText({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('WidgetSplitPageのHintTextをリビルドしたよ。');

    return Text(
      t.widget_split.hint,
      style: const TextStyle(fontSize: 24),
    );
  }
}

class CountText extends StatelessWidget {
  final int count;

  const CountText({
    super.key,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    debugPrint('WidgetSplitPageのカウントテキストをリビルドしたよ。');

    return Text(
      'Count: $count',
      style: const TextStyle(fontSize: 24),
    );
  }
}