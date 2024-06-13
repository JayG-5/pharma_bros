import 'package:flutter/material.dart';
import 'package:pharmabros/styles/style.dart';

class ProfilePageTextTileButton extends StatelessWidget {
  const ProfilePageTextTileButton({super.key, required this.text, this.onTap});

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.black,
      highlightColor: Colors.pink,
      focusColor: Colors.orange,
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        color: Colors.white,
        child: Text(
          text,
          style: AppStyle.typography.body1,
        ),
      ),
    );
  }
}
