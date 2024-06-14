import 'package:flutter/material.dart';


class CustomTextBackground extends StatelessWidget {
  final TextSpan textSpan;
  final Color backgroundColor;

  const CustomTextBackground({
    super.key,
    required this.textSpan,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _TextSpanBackgroundPainter(
        backgroundColor: backgroundColor,
      ),
      child: Text.rich(textSpan),
    );
  }
}

class _TextSpanBackgroundPainter extends CustomPainter {
  final Color backgroundColor;

  _TextSpanBackgroundPainter({
    required this.backgroundColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset(-8, size.height/2) & Size(size.width+16,size.height/2);
    final paint = Paint()..color = backgroundColor;

    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}