import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pharmabros/styles/style.dart';

void copyClipboard(BuildContext context, String text) {
  Clipboard.setData(ClipboardData(text: text));
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        '"$text"\n클립보드에 복사되었습니다!',
        style: AppStyle.typography.heading3.copyWith(color: Colors.white),
      ),
    ),
  );
}
