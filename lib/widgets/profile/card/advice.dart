import 'package:flutter/material.dart';
import 'package:pharmabros/styles/style.dart';
import 'package:pharmabros/utils/gap.dart';
import 'package:pharmabros/widgets/profile/advice_button.dart';

class ProfilePageAdviceCard extends StatelessWidget {
  const ProfilePageAdviceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('상담 기록', style: AppStyle.typography.heading3),
          Gap.height(4),
          Text('지금까지 상담 기록을 모두 볼 수 있어요', style: AppStyle.typography.body2),
          Gap.height(16),
          LayoutBuilder(builder: (context, box) {
            final containerWidth = (box.maxWidth - 16) / 2;
            return Row(
              children: [
                ProfilePageAdviceButton(
                    onTap: () {},
                    width: containerWidth,
                    child: Text(
                      '나의 상담',
                      style: AppStyle.typography.body1,
                    )),
                Gap.width(16),
                ProfilePageAdviceButton(
                    onTap: () {},
                    width: containerWidth,
                    child: Text(
                      '관심 상담',
                      style: AppStyle.typography.body1,
                    )),
              ],
            );
          })
        ],
      ),
    );
  }
}
