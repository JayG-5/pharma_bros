import 'package:flutter/material.dart';
import 'package:pharmabros/styles/style.dart';
import 'package:pharmabros/utils/gap.dart';

class ProfilePageSVGButtonForm extends StatelessWidget {
  const ProfilePageSVGButtonForm(
      {super.key,
      this.onTap,
      this.title,
      required this.child,
      required this.icon});

  final Widget icon;
  final Widget child;
  final String? title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) ...[
            Text(title!, style: AppStyle.typography.heading3),
            Gap.height(16)
          ],
          InkWell(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              width: double.infinity,
              height: 64,
              decoration: BoxDecoration(
                  color: AppStyle.color.buttonContainer,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                children: [
                  icon,
                  Gap.width(12),
                  Expanded(child: child),
                  const Icon(Icons.chevron_right)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
