import 'package:flutter/material.dart';
import 'package:pharmabros/styles/style.dart';

enum OriginType {
  korea(true, '국내'),
  other(false, '해외');

  final bool isDomestic;
  final String displayText;

  const OriginType(this.isDomestic, this.displayText);

  static Widget getWidget(bool isDomestic) {
    final OriginType originType = OriginType.values
        .firstWhere((element) => element.isDomestic == isDomestic);
    final Color originColor =
        originType.isDomestic ? AppStyle.color.orange : AppStyle.color.green;
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        decoration: BoxDecoration(
          border: Border.all(color: originColor, width: 1),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          originType.displayText,
          style: AppStyle.typography.body3.copyWith(color: originColor),
        ));
  }
}
