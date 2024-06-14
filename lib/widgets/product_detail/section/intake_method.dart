import 'package:flutter/material.dart';
import 'package:pharmabros/models/intake_method.dart';
import 'package:pharmabros/models/product_detail.dart';
import 'package:pharmabros/utils/gap.dart';
import 'package:pharmabros/widgets/product_detail/intake_method_card.dart';
import 'package:pharmabros/widgets/product_detail/section_title.dart';

class ProductDetailIntakeMethodSection extends StatelessWidget {
  const ProductDetailIntakeMethodSection({super.key, required this.data});

  final ProductDetail data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProductDetailPageSectionTitle(title: '섭취 방법'),
          Gap.height(16),
          for (IntakeMethod _ in data.intakeMethod) ...{
            IntakeMethodCard(data: _)
          }
        ],
      ),
    );
  }
}
