import 'package:flutter/material.dart';
import 'package:pharmabros/models/intake_method.dart';
import 'package:pharmabros/styles/style.dart';
import 'package:pharmabros/utils/asset.dart';
import 'package:pharmabros/utils/gap.dart';

class IntakeMethodCard extends StatelessWidget {
  const IntakeMethodCard({super.key, required this.data});

  final IntakeMethod data;

  Widget getSvg(String time) {
    switch (time) {
      case '아침':
        return Asset.svgMorning();
      case '점심':
        return Asset.svgNoon();
      default:
        return Asset.svgNight();
    }
  }

  Color getColor(String detailTime) {
    switch (detailTime) {
      case '식전':
        return AppStyle.color.green;
      case '식후':
        return AppStyle.color.orange;
      default:
        return AppStyle.color.pink;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: AppStyle.color.buttonContainer,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              getSvg(data.time),
              Gap.width(8),
              Text(
                data.time,
                style: AppStyle.typography.body2
                    .copyWith(color: AppStyle.color.primaryText),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: getColor(data.detailTime),
                  borderRadius: BorderRadius.circular(13),
                ),
                alignment: Alignment.center,
                child: Text(
                  data.detailTime,
                  style:
                      AppStyle.typography.body3.copyWith(color: Colors.white),
                ),
              ),
              Gap.width(8),
              Text(
                data.intakeUnit,
                style: AppStyle.typography.body1
                    .copyWith(color: AppStyle.color.pink),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
