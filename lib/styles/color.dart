
import 'package:flutter/material.dart';

class AppColor{
  Color get primaryText => const Color(0xFF202022);
  Color get secondaryText => const Color(0xFFB3B5BB);
  Color get footerText => const Color(0xFF808288);
  Color get hintText => const Color(0xFFA1A2AA);

  Color get primaryBackground => const Color(0xFFECECEE);

  Color get iconGray => const Color(0xFFC6C7CC);
  Color get buttonContainer => const Color(0xFFF4F4F5);
  Color get itemContainer => Colors.black.withOpacity(0.03);
  Color get containerBorder => const Color(0xFFD0DADD);

  Color get orange => const Color(0xFFFFA722);
  Color get green => const Color(0xFF1FAF96);
  Color get pink => const Color(0xFFFF6683);
  Color get pink2 => const Color(0xFFFFE0E6);

  Shadow get shadow =>
      Shadow(
          color: Colors.black.withOpacity(0.15),
          blurRadius: 10,
          offset: const Offset(0,2));

  get colors => Colors;
}