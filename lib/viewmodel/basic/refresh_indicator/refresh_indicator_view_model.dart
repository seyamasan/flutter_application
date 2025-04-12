import 'package:flutter_application/constant/refresh_indicator_list.dart';
import 'package:flutter_application/model/state/basic/refresh_indicator/refresh_indicator_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'refresh_indicator_view_model.g.dart';

@riverpod
class RefreshIndicatorViewModel extends _$RefreshIndicatorViewModel {

  @override
  RefreshIndicatorState build() {
    return RefreshIndicatorState();
  }

  // リストを更新
  void updateListItems(List<int> newListItems) {
    state = state.copyWith(listItems: newListItems);
  }

  // リストの要素を削除
  void removeListItem(int index) {
    final newListItems = List<int>.from(state.listItems);
    newListItems.removeAt(index);
    state = state.copyWith(listItems: newListItems);
  }

  // ローディングの状態を更新
  void _toggleIsLoading() {
    state = state.copyWith(isLoading: !state.isLoading);
  }

  // ローディングを表示してリストを元のデータに戻す
  Future<void> refresh() async {
    _toggleIsLoading();
    await Future.delayed(const Duration(seconds: 3)); // 3秒待つ
    updateListItems(RefreshIndicatorList.items); // リストの要素を元に戻す
    _toggleIsLoading();
  }
}