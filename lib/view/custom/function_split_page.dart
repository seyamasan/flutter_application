import 'package:flutter/material.dart';
import 'package:flutter_application/i18n/strings.g.dart';

class FunctionSplitPage extends StatefulWidget {
  const FunctionSplitPage({super.key});

  @override
  State<FunctionSplitPage> createState() => _FunctionSplitPageState();
}

class _FunctionSplitPageState extends State<FunctionSplitPage> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('FunctionSplitPageをリビルドしたよ。');

    return Scaffold(
      appBar: AppBar(
        title: Text(t.function_split.title, style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16), 
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildHintText(),
              _buildCountText(),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: Text(t.function_split.increment),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHintText() {
    debugPrint('FunctionSplitPageのHintTextをリビルドしたよ。');

    return Text(
      t.function_split.hint,
      style: const TextStyle(fontSize: 24),
    );
  }

  Widget _buildCountText() {
    debugPrint('FunctionSplitPageのカウントテキストをリビルドしたよ。');

    return Text(
      'Count: $count',
      style: const TextStyle(fontSize: 24),
    );
  }
}