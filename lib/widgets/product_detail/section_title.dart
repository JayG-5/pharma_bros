import 'package:flutter/material.dart';
import 'package:pharmabros/styles/style.dart';
import 'package:pharmabros/utils/asset.dart';
import 'package:pharmabros/utils/gap.dart';

class ProductDetailPageSectionTitle extends StatelessWidget {
  const ProductDetailPageSectionTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Asset.svgPill(),
        Gap.width(8),
        Text(title, style: AppStyle.typography.heading3),
      ],
    );
  }
}
