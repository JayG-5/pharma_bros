import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pharmabros/enums/origin_type.dart';
import 'package:pharmabros/models/product.dart';
import 'package:pharmabros/styles/style.dart';
import 'package:pharmabros/utils/gap.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({super.key, required this.product});

  final Product product;

  Widget leadContainer(String imageUrl) {
    return Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppStyle.color.itemContainer,
        image: imageUrl.isEmpty
            ? null
            : DecorationImage(
                image: Image.network(
                imageUrl,
                alignment: Alignment.center,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Container(),
              ).image),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: AppStyle.color.primaryBackground))),
      child: Row(
        children: [
          leadContainer(product.imageUrl),
          Gap.width(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.brandName,
                  style: AppStyle.typography.body2,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Gap.height(2),
                Text(
                  product.name,
                  style: AppStyle.typography.body1,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Gap.height(8),
                OriginType.getWidget(product.isDomestic),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
