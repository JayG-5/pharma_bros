import 'package:flutter/material.dart';
import 'package:pharmabros/models/user.dart';
import 'package:pharmabros/styles/style.dart';
import 'package:pharmabros/utils/asset.dart';
import 'package:pharmabros/utils/gap.dart';
import 'package:pharmabros/widgets/profile/card/advice.dart';
import 'package:pharmabros/widgets/profile/card/footer.dart';
import 'package:pharmabros/widgets/profile/card/text.dart';
import 'package:pharmabros/widgets/profile/card/user.dart';
import 'package:pharmabros/widgets/profile/with_svg_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ProfilePageUserCard(
              user: User(displayName: '김준균', email: 'jg55552758@gmail.com')),
          Gap.height(8),
          const ProfilePageAdviceCard(),
          Gap.height(8),
          ProfilePageSVGButtonForm(
              onTap: () {},
              icon: Asset.svgAlarm(),
              child: Text(
                '섭취 알림 설정하기',
                style: AppStyle.typography.body2.copyWith(color: AppStyle.color.primaryText),
              )),
          Gap.height(8),
          ProfilePageSVGButtonForm(
              onTap: () {},
              title: '나의 참여',
              icon: Asset.svgAnnounce(),
              child: Text(
                '친한 이벤트 활동 내역',
                style: AppStyle.typography.body2.copyWith(color: AppStyle.color.primaryText),
              )),
          Gap.height(8),
          const ProfilePageTextButtonSection(),
          const ProfilePageFooter(),
        ],
      ),
    );
  }
}
