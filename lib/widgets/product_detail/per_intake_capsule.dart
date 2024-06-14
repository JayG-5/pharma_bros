import 'package:flutter/material.dart';
import 'package:pharmabros/styles/style.dart';

class PerIntakeCapsule extends StatelessWidget {
  const PerIntakeCapsule(
      {super.key,
      required this.width,
      this.height = 41,
      required this.leftText,
      required this.rightText});

  final double width;
  final double height;
  final String leftText;
  final String rightText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Row(
        children: [
          Expanded(
              child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: AppStyle.color.buttonContainer,
                borderRadius:
                    const BorderRadius.horizontal(left: Radius.circular(24))),
            child: Text(
              leftText,
              style: AppStyle.typography.body2
                  .copyWith(color: AppStyle.color.primaryText),
            ),
          )),
          Expanded(
              child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: AppStyle.color.pink2,
                borderRadius:
                    const BorderRadius.horizontal(right: Radius.circular(24))),
            child: Text(
              rightText,
              style: AppStyle.typography.body2
                  .copyWith(color: AppStyle.color.primaryText),
            ),
          )),
        ],
      ),
    );
  }
}
