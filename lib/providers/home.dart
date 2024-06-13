import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pharmabros/models/search_info.dart';
import 'package:pharmabros/services/api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home.g.dart';

@riverpod
class BottomNavigationNotifier extends _$BottomNavigationNotifier {
  @override
  int build() => 0;

  void set(int value) => state = value;
}

@riverpod
class SearchBarNotifier extends _$SearchBarNotifier {
  @override
  String build() => 'YDY';

  void set(String value) => state = value;
}

@Riverpod(dependencies: [SearchBarNotifier])
class SearchNotifier extends _$SearchNotifier {
  @override
  Future<SearchInfo> build() async {
    final searchBarState = ref.watch(searchBarNotifierProvider);
    return await API.search.product(searchBarState, 1);
  }

  Future<bool> requestMore(SearchInfo searchInfo) async {
    if ((searchInfo.page * 10) >= searchInfo.totalCount) {
      return false;
    }
    state =
        await API.search.product(searchInfo.targetWord, searchInfo.page + 1);
    return true;
  }
}
