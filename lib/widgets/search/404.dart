import 'package:flutter/material.dart';
import 'package:pharmabros/styles/style.dart';
import 'package:pharmabros/utils/gap.dart';

class SearchPage404 extends StatelessWidget {
  const SearchPage404({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/png_pill_1x.png'),
          Gap.height(24),
          Text(
            '검색 결과가 없어요',
            style: AppStyle.typography.body1
                .copyWith(color: AppStyle.color.hintText),
          )
        ],
      ),
    );
  }
}
