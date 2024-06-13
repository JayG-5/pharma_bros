import 'package:flutter/material.dart';
import 'package:pharmabros/models/product.dart';
import 'package:pharmabros/models/search_info.dart';
import 'package:pharmabros/styles/style.dart';
import 'package:pharmabros/widgets/search/product_item.dart';

class SearchPageListView extends StatelessWidget {
  const SearchPageListView({super.key,required this.data});
  final SearchInfo data;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: AppStyle.color.primaryBackground))),
          child: Text(
            '검색결과 ${data.totalCount}건',
            style: AppStyle.typography.body1,
          ),
        ),
        for(Product product in data.productList)...{
          ProductItemWidget(
              product: product)
        }
      ],
    );
  }
}
