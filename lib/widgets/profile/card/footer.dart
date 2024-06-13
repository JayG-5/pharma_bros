import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:pharmabros/styles/style.dart';
import 'package:pharmabros/utils/gap.dart';

class ProfilePageFooter extends StatelessWidget {
  const ProfilePageFooter({super.key});

  Future<PackageInfo> getPackageInfo() async => PackageInfo.fromPlatform();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            InkWell(
              onTap: () {},
              child: Text('이용약관',
                  style: AppStyle.typography.body2
                      .copyWith(color: AppStyle.color.footerText)),
            ),
            Gap.width(10),
            const Icon(
              Icons.fiber_manual_record,
              size: 4,
            ),
            Gap.width(10),
            InkWell(
              onTap: () {},
              child: Text('개인정보처리방침',
                  style: AppStyle.typography.body2
                      .copyWith(color: AppStyle.color.footerText)),
            ),
          ]),
          Gap.height(8),
          FutureBuilder(
              future: getPackageInfo(),
              builder: (context, snapshot) {
                return Text(
                  '버전 정보 ${!snapshot.hasData ? '계산중...' : 'v${snapshot.data?.version}'}',
                  style: AppStyle.typography.body3
                      .copyWith(color: AppStyle.color.footerText),
                );
              })
        ],
      ),
    );
  }
}
