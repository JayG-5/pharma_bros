import 'package:flutter/material.dart';
import 'package:pharmabros/models/product_detail.dart';
import 'package:pharmabros/utils/gap.dart';
import 'package:pharmabros/widgets/product_detail/per_intake_capsule.dart';
import 'package:pharmabros/widgets/product_detail/section_title.dart';

class ProductDetailPagePerIntakeSection extends StatelessWidget {
  const ProductDetailPagePerIntakeSection({super.key, required this.data});

  final ProductDetail data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProductDetailPageSectionTitle(title: '섭취 용법'),
          Gap.height(16),
          LayoutBuilder(
            builder: (context, box) {
              final width = (box.maxWidth - 12) / 2;
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PerIntakeCapsule(
                      width: width,
                      leftText: '1일',
                      rightText: data.perDailyIntakeCountText),
                  PerIntakeCapsule(
                      width: width,
                      leftText: '1회',
                      rightText: data.perTimesIntakeAmountText),
                ],
              );
            },
          )
        ],
      ),
    );
  }
}
