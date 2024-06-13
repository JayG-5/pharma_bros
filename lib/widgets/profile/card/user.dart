import 'package:flutter/material.dart';
import 'package:pharmabros/models/user.dart';
import 'package:pharmabros/styles/style.dart';

class ProfilePageUserCard extends StatelessWidget {
  const ProfilePageUserCard({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user.displayName, style: AppStyle.typography.heading3),
                Text(user.email, style: AppStyle.typography.body2),
              ],
            ),
            const Icon(Icons.chevron_right,)
          ],
        ),
      ),
    );
  }
}
