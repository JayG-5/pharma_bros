import 'package:flutter/material.dart';
import 'package:pharmabros/enums/origin_type.dart';
import 'package:pharmabros/models/product_detail.dart';
import 'package:pharmabros/styles/style.dart';
import 'package:pharmabros/utils/copy.dart';
import 'package:pharmabros/utils/gap.dart';
import 'package:pharmabros/widgets/product_detail/section/per_intake.dart';

class ProductDetailPageHeaderSection extends StatelessWidget {
  const ProductDetailPageHeaderSection({super.key, required this.data});

  final ProductDetail data;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(40)),
                  boxShadow: [AppStyle.color.shadow]),
              child: Column(
                children: [
                  Image.network(
                    data.productImageUrl,
                    width: 160,
                    height: 160,
                    fit: BoxFit.cover,
                  ),
                  Gap.height(16),
                  Text(
                    data.productBrandName,
                    style: AppStyle.typography.body1
                        .copyWith(color: AppStyle.color.hintText),
                  ),
                  Gap.height(4),
                  Text.rich(
                    TextSpan(text: data.productName, children: [
                      WidgetSpan(
                          child: SizedBox(
                        width: 24,
                        height: 24,
                        child: IconButton(
                          icon: const Icon(Icons.copy),
                          onPressed: () =>copyClipboard(context, data.productName),
                          padding: const EdgeInsets.only(left: 4),
                        ),
                      ))
                    ]),
                    textAlign: TextAlign.center,
                    style: AppStyle.typography.heading2,
                  ),
                  Gap.height(16),
                  OriginType.getWidget(data.isDomestic),
                ],
              ),
            ),
            ProductDetailPagePerIntakeSection(data: data)
          ],
        ));
  }
}
