import 'package:flutter/material.dart';
import 'package:pharmabros/styles/style.dart';

class ProfilePageAdviceButton extends StatelessWidget {
  const ProfilePageAdviceButton({super.key,
    this.onTap,
    required this.width,
    this.height = 72,
    required this.child});

  final double width;
  final double height;
  final Widget child;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        decoration: BoxDecoration(
            color: AppStyle.color.buttonContainer,
            borderRadius: BorderRadius.circular(20)
        ),
        width: width,
        height: height,
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}
