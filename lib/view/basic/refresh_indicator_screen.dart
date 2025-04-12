import 'package:flutter/material.dart';
import 'package:flutter_application/i18n/strings.g.dart';
import 'package:flutter_application/viewmodel/basic/refresh_indicator/refresh_indicator_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RefreshIndicatorScreen extends ConsumerWidget {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();

  RefreshIndicatorScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(refreshIndicatorViewModelProvider);
    final viewModel = ref.read(refreshIndicatorViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: Text(t.refresh_indicator.title)),
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        color: Colors.white,
        backgroundColor: Colors.blue,
        strokeWidth: 4.0,
        onRefresh: () async {
          return viewModel.refresh();
        },
        // childにListViewを指定することで、topから引っ張ったときにローディングを表示できる
        child: ListView.builder(
          itemCount: state.listItems.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('${t.refresh_indicator.item} ${state.listItems[index]}'),
              onTap: () {
                // タップしたアイテムを消す
                viewModel.removeListItem(index);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('${t.refresh_indicator.item}${state.listItems[index]}${t.refresh_indicator.remove}'),
                    duration: const Duration(seconds: 3)
                  )
                );
              }
            );
          }
        )
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // showを呼び出すと、onRefreshが走る
          _refreshIndicatorKey.currentState?.show();
        },
        icon: const Icon(Icons.refresh),
        label: Text(t.refresh_indicator.update)
      ),
    );
  }
}