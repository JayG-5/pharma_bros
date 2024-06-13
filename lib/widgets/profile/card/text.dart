import 'package:flutter/material.dart';
import 'package:pharmabros/widgets/profile/text_tile_button.dart';

class ProfilePageTextButtonSection extends StatelessWidget {
  const ProfilePageTextButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        children: ['공지사항', '문의/제보하기', '친한약사 앱 칭찬하기']
            .map((e) => ProfilePageTextTileButton(text: e,onTap: (){},))
            .toList(),
      ),
    );
  }
}
