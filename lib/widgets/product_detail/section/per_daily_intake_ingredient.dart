import 'package:flutter/material.dart';
import 'package:pharmabros/models/product_detail.dart';
import 'package:pharmabros/styles/style.dart';
import 'package:pharmabros/utils/gap.dart';

class ProductDetailPagePerDailyIntakeIngredientSection extends StatelessWidget {
  const ProductDetailPagePerDailyIntakeIngredientSection(
      {super.key, required this.data});

  final ProductDetail data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
                color: AppStyle.color.pink,
                borderRadius:
                    const BorderRadius.horizontal(right: Radius.circular(20))),
            child: Text.rich(
              TextSpan(text: '1일 섭취량당', children: [
                TextSpan(
                    text: ' 함량',
                    style:
                        AppStyle.typography.body2.copyWith(color: Colors.white))
              ]),
              style: AppStyle.typography.heading4.copyWith(color: Colors.white),
            ),
          ),
          Gap.height(8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Table(
              columnWidths: const {
                0: FixedColumnWidth(36.0),
                1: FlexColumnWidth(),
                2: FixedColumnWidth(36.0),
                3: FlexColumnWidth(),
              },
              children: data.perDailyIntakeIngredientContent
                  .map((e) => [
                        TableRow(
                            children:
                                List.generate(4, (index) => Gap.height(16))),
                        TableRow(children: [
                          TableCell(
                              child: Text(
                            '성분',
                            style: AppStyle.typography.body2,
                          )),
                          TableCell(
                              child: Text(e.ingredientName,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.typography.body2.copyWith(
                                    color: AppStyle.color.primaryText,
                                  ))),
                          TableCell(
                              child: Text('함량',
                                  style: AppStyle.typography.body2.copyWith(
                                    color: AppStyle.color.pink,
                                  ))),
                          TableCell(
                              child: Text(e.content,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.typography.body2.copyWith(
                                    color: AppStyle.color.primaryText,
                                  ))),
                        ])
                      ])
                  .expand((element) => element)
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
