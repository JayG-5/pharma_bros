import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pharmabros/providers/home.dart';
import 'package:pharmabros/widgets/search/404.dart';
import 'package:pharmabros/widgets/search/listview.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchState = ref.watch(searchNotifierProvider);
    return searchState.when(
      data: (data) {
        return data.totalCount > 0
            ? SearchPageListView(data: data)
            : const SearchPage404();
      },
      error: (error, stackTrace) {
        print(error);
        print(stackTrace);
        return Center(
          child: Text('error : $error\n$stackTrace'),
        );
      },
      loading: () =>
      const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
