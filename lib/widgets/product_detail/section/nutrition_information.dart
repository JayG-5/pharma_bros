import 'package:flutter/material.dart';
import 'package:pharmabros/models/product_detail.dart';
import 'package:pharmabros/styles/style.dart';
import 'package:pharmabros/utils/gap.dart';
import 'package:pharmabros/widgets/product_detail/custom_text_background.dart';
import 'package:pharmabros/widgets/product_detail/section_title.dart';

class ProductDetailPageNutritionInformationSection extends StatelessWidget {
  const ProductDetailPageNutritionInformationSection(
      {super.key, required this.data});

  final ProductDetail data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductDetailPageSectionTitle(title: '영양 기능 정보'),
          Gap.height(4),
          Text(
            '국가별 기능성표기가 상이하여, 해외/국내 건강기능식품의 기능성 표기가 다를 수 있습니다.',
            textAlign: TextAlign.start,
            style: AppStyle.typography.body2,
          ),
          Gap.height(16),
          LayoutBuilder(builder: (context, box) {
            return Wrap(
              direction: Axis.vertical,
              spacing: 16,
              children: data.nutritionInformation
                  .map((e) => Container(
                        width: box.maxWidth,
                        padding: const EdgeInsets.symmetric(
                            vertical: 24, horizontal: 16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                                color: AppStyle.color.containerBorder)),
                        child: Column(
                          children: [
                            CustomTextBackground(
                              textSpan: TextSpan(
                                text: e.nutritionName,
                                style: AppStyle.typography.heading3,
                              ),
                              backgroundColor: AppStyle.color.pink2,
                            ),
                            Gap.height(8),
                            Text(
                              e.description,
                              textAlign: TextAlign.center,
                              style: AppStyle.typography.body1,
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            );
          })
        ],
      ),
    );
  }
}
