import 'package:flutter/material.dart';
import 'package:pharmabros/models/product_detail.dart';
import 'package:pharmabros/styles/style.dart';
import 'package:pharmabros/widgets/product_detail/section_title.dart';

class ProductDetailPageFeaturesSection extends StatelessWidget {
  const ProductDetailPageFeaturesSection({super.key, required this.data});

  final ProductDetail data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      width: double.infinity,
      color: Colors.white,
      child: LayoutBuilder(builder: (context, box) {
        return Wrap(
          direction: Axis.vertical,
          spacing: 16,
          children: [
            const ProductDetailPageSectionTitle(title: '제품 특징'),
            ...data.productFeatures
                .map((e) => Container(
                      width: box.maxWidth,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppStyle.color.buttonContainer,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        e,
                        textAlign: TextAlign.center,
                        style: AppStyle.typography.body1,
                      ),
                    ))
                .toList()
          ],
        );
      }),
    );
  }
}
